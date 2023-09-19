# This command sets the base image for the Dockerfile. All subsequent commands will be run on this image.
# In this case, we're using the latest version of the openjdk image from Docker Hub.
FROM openjdk 

# This command tells Docker that the container will listen on the specified network ports at runtime.
# Here, we're exposing port 8080, which is where our application will be accessible.
EXPOSE 8080

# The ADD command copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>.
# Here, we're copying a JAR file from the target directory on our host machine to the root directory in our Docker image.
ADD target/spring-boot-docker.jar spring-boot-docker.jar

# The ENTRYPOINT command allows you to configure a container that will run as an executable.
# In this case, when a container is started from this image, it will execute 'java -jar /spring-boot-docker.jar'.
ENTRYPOINT [ "java","-jar","/spring-boot-docker.jar" ]
