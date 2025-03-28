📚 Learn Apache Iceberg with My Udemy Course

If you're new to Apache Iceberg, check out my Udemy course where I provide a practical, hands-on guide covering everything from setup to advanced usage! 

🚀👉 [Enroll Here](https://www.udemy.com/course/apache-iceberg-end-to-end-data-lakehouse-masterclass/?referralCode=B690BF189725F8CB8664)

# Apache Iceberg Environment with Spark, MinIO, Jupyter, and Iceberg REST

This repository provides a **fully containerized** setup for working with **Apache Iceberg** using **Spark, MinIO, Jupyter, and Iceberg REST** via **Docker and Docker Compose**.

## 🚀 Setup Instructions

### 1️⃣ Install Docker & Git
Ensure **Docker** and **Docker Compose** are installed on your system:
- [Download Docker](https://www.docker.com/get-started)

### 2️⃣ Clone the Repository
Since the setup requires `docker-compose.yml` and additional configurations, clone this repository:
```sh
git clone https://github.com/suraj-darekar/docker_apache_iceberg.git
```

### 3️⃣ Pull the Docker Image
Download the pre-built Docker image from **Docker Hub**:
```sh
docker pull freeflowcoders/spark-iceberg
```

### 4️⃣ Start All Services
Run the following command to start all required services:
```sh
docker-compose up -d
```
This will launch:
- **Jupyter Notebook (port 8888)**
- **MinIO (port 9001)**
- **Iceberg REST API (port 8181)**
- **Spark Environment**

### 5️⃣ Access Services
Once started, access the services in your browser:
- 📘 **Jupyter Notebook** → [http://localhost:8888](http://localhost:8888)
- ☁️ **MinIO Console** → [http://localhost:9001](http://localhost:9001)  
  **Credentials:**
  - **User:** `admin`
  - **Password:** `password`
- 🔥 **Iceberg REST API** → [http://localhost:8181](http://localhost:8181)

### 6️⃣ Stopping Services
To stop and remove all running services, execute:
```sh
docker-compose down
```

## 🛠 Troubleshooting
- **Port Conflicts?** Ensure ports **8888, 9001, and 8181** are available before running.
- **Container Not Starting?** Run `docker-compose logs` to check for errors.
- **Need to Rebuild?** Run:
  ```sh
  docker-compose down
  docker-compose up --build -d
  ```
