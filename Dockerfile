ARG NODE_VERSION=24.13.0-slim
ARG NGINXINC_IMAGE_TAG=alpine3.22

# Stage 1: dependencies
FROM node:${NODE_VERSION} AS dependencies
WORKDIR /app
COPY package.json pnpm-lock.yaml* ./
RUN corepack enable pnpm && pnpm install --frozen-lockfile

# Stage 2: build
FROM node:${NODE_VERSION} AS builder
WORKDIR /app
COPY --from=dependencies /app/node_modules ./node_modules
COPY . .
ENV NODE_ENV=production
RUN corepack enable pnpm && pnpm build

# Stage 3: nginx
FROM nginxinc/nginx-unprivileged:${NGINXINC_IMAGE_TAG} AS runner
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/out /usr/share/nginx/html
USER nginx
EXPOSE 8080
ENTRYPOINT ["nginx", "-c", "/etc/nginx/nginx.conf"]
CMD ["-g", "daemon off;"]