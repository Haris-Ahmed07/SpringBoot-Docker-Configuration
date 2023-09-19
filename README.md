# SpringBoot-Docker-Configuration

This repository contains a simple configuration for running a Spring Boot application in a Docker container. Follow the steps below to build and run the Docker image for your Spring Boot application.

## Building the Application

Before creating the Docker image, you need to build your Spring Boot application and create a JAR file. Follow these steps:

1. Build the application by running the following Maven command:

   ```
   mvn install
   ```

   This will generate a JAR file in the `target` folder of your project.

## Creating the Dockerfile

Now, let's create a Dockerfile in the outermost folder of your application (the same folder as your repository) and name it "Dockerfile". Add the following commands to the Dockerfile:

```Dockerfile
FROM openjdk
EXPOSE 8080
ADD target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-docker.jar"]
```

These commands configure the Docker image to use the OpenJDK base image, expose port 8080, add your Spring Boot JAR file to the image, and set it as the entry point for running your application.

## Building the Docker Image

Now, let's build the Docker image using the following commands:

```bash
docker build -t spring-boot-docker .
```

This command builds a Docker image with the name "spring-boot-docker" based on the Dockerfile in your project folder.

## Running the Docker Container

After successfully building the Docker image, you can run it with the following command:

```bash
docker run -p 9090:8080 spring-boot-docker
```

This command creates a container named "spring-boot-docker" and maps port 9090 on your host machine to port 8080 in the container. You can access your Spring Boot application at `http://localhost:9090`.

## Docker Basics

Here are some basic Docker commands for managing Docker images and containers:

### List Docker Images

To list all Docker images currently stored on your system, use the following command:

```bash
docker images
```

### List Docker Containers

To list all Docker containers (both running and stopped), use the following command:

```bash
docker ps -a
```

### Inspect a Docker Image or Container

To display detailed information about a specific Docker image or container, use the following command (replace `IMAGE_OR_CONTAINER_ID` with the appropriate ID):

```bash
docker inspect IMAGE_OR_CONTAINER_ID
```

### Stop a Running Docker Container

To stop a running Docker container, use the following command (replace `CONTAINER_ID` with the appropriate ID):

```bash
docker stop CONTAINER_ID
```

### Remove a Docker Container

To remove a Docker container, use the following command (replace `CONTAINER_ID` with the appropriate ID):

```bash
docker rm CONTAINER_ID
```

### Remove a Docker Image

To remove a Docker image, use the following command (replace `IMAGE_ID` with the appropriate ID):

```bash
docker rmi IMAGE_ID
```

### List Running Docker Containers

To list all currently running Docker containers, use the following command:

```bash
docker ps
```

These commands will help you manage your Docker images and containers effectively.

Enjoy using Docker with your Spring Boot application!