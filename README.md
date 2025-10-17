# 🏛️ Campus — Full Stack E-Commerce Platform

**Campus** is a full-stack e-commerce platform built with a **modern Angular 18 frontend** and a **Spring Boot microservice backend**.  
It’s designed for scalability, modularity, and performance — following clean architecture principles across both the client and server.

---

## 🌐 System Overview

The system is split into two main projects:

| Project | Description |
|----------|--------------|
| **Frontend (Angular 18)** | Modern SSR web application built with Signals, TailwindCSS, and Angular Material. Deployed via NGINX + Cloudflare Tunnel. |
| **Backend (Spring Boot Microservices)** | Distributed service architecture with Spring Cloud, Consul, Redis, SQL Server, and JWT authentication. |

Each layer is developed independently, versioned separately, and connected through REST APIs.

---

## 🧠 Frontend — Angular 18 Clean Architecture

Modern **Angular 18** web application built with **Server-Side Rendering (SSR)**, **Signals**, and **Clean Architecture** principles.  
This frontend is designed for scalability, maintainability, and high performance — serving as the UI layer for the Campus microservice ecosystem.

### 🧱 Tech Stack

| Area | Technology |
|-------|-------------|
| **Framework** | Angular 18 |
| **Language** | TypeScript |
| **Runtime** | Bun.js |
| **UI** | TailwindCSS, Angular Material |
| **State Management** | Angular Signals |
| **Linting** | ESLint (Airbnb rules) |
| **Formatting** | Biome |
| **Git Hooks** | Husky + lint-staged |
| **SSR / Deployment** | Angular Universal + NGINX |
| **Networking / Access** | Cloudflare Tunnel |
| **Architecture** | Clean Architecture (Feature-based modular design) |

### ⚙️ Features
- ⚡ **Server-Side Rendering (SSR)** for SEO and speed  
- 🧠 **Signals-based reactivity**  
- 🧰 **Layered clean architecture** (`core`, `shared`, `features`)  
- 🎨 **TailwindCSS + Angular Material**  
- 🧹 **ESLint (Airbnb)** + **Husky pre-commit checks**  
- 🔄 **Bun.js** runtime for lightning-fast scripts  
- 🧊 **NGINX + Cloudflare Tunnel** for secure, public deployment  

---

## 🧩 Backend — Campus E-Commerce Microservices

This project is a modular microservice architecture designed for the **Campus platform**.  
It leverages **Spring Boot**, **Spring Cloud**, **Consul**, **Liquibase**, **Redis**, and **SQL Server** to deliver resilient and maintainable backend services.

### 🧱 Tech Stack

| Layer | Technology |
|--------|-------------|
| **Framework** | Spring Boot 3.4.7 |
| **Language** | Java 21 |
| **Microservice Management** | Spring Cloud 2024.0.1 |
| **Service Discovery** | HashiCorp Consul |
| **API Gateway** | Spring Cloud Gateway |
| **Database** | Microsoft SQL Server |
| **ORM** | Spring Data JPA |
| **Migrations** | Liquibase |
| **Security** | JWT, Spring Security, bcrypt |
| **Cache** | Redis |
| **Mapping** | MapStruct 1.6.0 |
| **Testing** | JUnit, Testcontainers, ArchUnit |
| **Build Tool** | Maven |

### ⚙️ Features
- 🔑 **Authentication & Authorization** with JWT and Spring Security  
- 🧩 **Maven multi-module architecture**  
- 🔄 **Database versioning** via Liquibase  
- 🧠 **Service discovery** using Consul  
- 🧰 **DTO mapping** with MapStruct  
- 🧪 **Integration tests** with Testcontainers  

---

## 📦 Project Structure

