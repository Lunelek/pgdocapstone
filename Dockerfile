FROM openjdk:8-jdk-alpine
LABEL maintainer="folu.aduloju@gmail.com"
COPY target/spring-boot-docker-complete-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app:app/lib/*","/app.jar"]
