# JKTech-POC

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Prerequisites](#prerequisites)
5. [Installation](#installation)
6. [Environment Variables](#environment-variables)
7. [Running the Project](#running-the-project)
8. [Swagger API Documentation](#swagger-api-documentation)
9. [Deployment](#deployment)
10. [Troubleshooting](#troubleshooting)

---

## Introduction
This project is a microservices-based application that uses **NestJS**, **Kafka**, **PostgreSQL**, **Redis**, and **Docker**. It includes a Gateway, an Ingestion Service, and Kafka for message streaming.

## Features
- **Microservices architecture** with Kafka message streaming
- **PostgreSQL database** with multiple schemas
- **Redis caching** for performance optimization
- **Dockerized environment** for seamless deployment
- **Swagger API documentation** for easy API reference
- **Authentication & Authorization** using JWT

## Technologies Used
- Node.js (NestJS)
- PostgreSQL
- Redis
- Kafka
- Docker & Docker Compose
- Swagger (OpenAPI)

## Prerequisites
Before running the project, ensure you have the following installed:
- **Node.js** (v16+)
- **Docker & Docker Compose**
- **PostgreSQL** (if not using the Dockerized version)
- **Kafka** (if running externally)

## Installation

### Clone the repository
```sh
git clone https://github.com/george-thomas-v/jk-poc.git
cd jk-poc
```

### Set up environment variables
Copy the example environment file and configure it:
```sh
cp .env.example .env
```
Modify the `.env` file with your database, Redis, and Kafka configurations.

### Using Docker (Recommended)
Build and start the services:
```sh
docker compose up --build -d
```
This will start the following containers:
- PostgreSQL
- Redis
- Kafka & Zookeeper
- Gateway Service
- Ingestion Service

## Environment Variables
Ensure you have the following variables in your `.env` file:
```ini
# PostgreSQL Configuration
DATABASE_HOST=postgres
DATABASE_PORT=5432
DATABASE_USERNAME=admin
DATABASE_PASSWORD=secret
DATABASE_NAME=mydatabase

# Redis Configuration
REDIS_HOST=redis
REDIS_PORT=6379

# Kafka Configuration
KAFKA_BROKER=kafka:9092
```

## Running the Project
### If using Docker:
```sh
docker compose up -d
```

### If running locally:
1. Start PostgreSQL and Redis manually
2. Install dependencies:
   ```sh
   npm install
   ```
3. Start the services:
   ```sh
   npm run start
   ```

## Swagger API Documentation
Once the application is running, access the **Swagger UI** at:
```
http://localhost:3000/docs
```
Swagger provides an interactive API reference, making it easy to test and understand the endpoints.
Make sure that the **PORT** matches the one provided in the respective `.env` file.

## Deployment
For production deployment, follow these steps:
1. **Set up a PostgreSQL and Redis instance** on a cloud provider.
2. **Configure environment variables** to point to the cloud services.
3. **Build and run the services** using:
   ```sh
   docker compose up --build -d
   ```
4. **Use a reverse proxy (e.g., Nginx)** to expose the API securely.

## Troubleshooting
### PostgreSQL Port Conflict
If PostgreSQL is already running locally, stop it or modify the port in `docker-compose.yml`.
```sh
sudo systemctl stop postgresql
```

### Kafka Not Connecting
Ensure Zookeeper is running:
```sh
docker compose logs zookeeper
```

### Redis Connection Refused
Check if Redis is running and accessible:
```sh
docker compose logs redis
```