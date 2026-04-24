# 🚀 Next.js Static Export — Docker, GHCR & GitHub Actions CI/CD

This project demonstrates a full DevOps workflow using a static Next.js application, Docker containerization, and automated CI/CD deployment with GitHub Actions and GitHub Container Registry (GHCR).

## 📌 Project Overview

This project includes:
- Next.js 16 App Router application
- Static export mode (output: "export")
- Fully static site (HTML/CSS/JS only)
- Docker multi-stage build
- Nginx (rootless) serving static files
- GitHub Actions CI/CD pipeline
- Automatic Docker image publishing to GHCR

## 🧱 Tech Stack

Next.js 16, TypeScript, Tailwind CSS, pnpm, Docker, Nginx, GitHub Actions, GHCR

## 📁 Project Structure

my-app/
├── .github/workflows/ci-cd.yml
├── app/
├── public/
├── Dockerfile
├── nginx.conf
├── compose.yml
├── next.config.ts
├── package.json
└── pnpm-lock.yaml

## ⚙️ Installation & Development

pnpm install  
pnpm dev

App runs on:
http://localhost:3000

## 📦 Production Build

pnpm build

Static output generated in:
/out

## 🐳 Run with Docker

docker compose up -d --build

Access app:
http://localhost:8080

## 🔁 CI/CD Pipeline (GitHub Actions)

On every push to main:
- Install dependencies
- Run lint + build
- Build Docker image
- Push to GHCR with latest + SHA tags

## 📦 GitHub Container Registry

ghcr.io/<your-username>/<your-repository>

Example:
ghcr.io/dramane223/24bcy70270-9b-dramane-traore

## 🚀 Features

- Fully static Next.js app
- Multi-stage Docker build
- Rootless Nginx container
- Automated CI/CD pipeline
- Docker image versioning (SHA tags)
- GHCR integration

## 🧠 What I learned

- Next.js static export
- Docker multi-stage builds
- Nginx static hosting
- GitHub Actions CI/CD
- Container registry (GHCR)

## 👨‍💻 Author

Dramane Traoré
