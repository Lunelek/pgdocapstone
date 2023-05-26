FROM openjdk:11
LABEL maintainer="folu.aduloju@gmail.com"
VOLUME /tmp
EXPOSE 80
ARG JAR_FILE=target/target/spring-boot-docker-complete-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} pgdocapstone.jar
ENTRYPOINT ["java","-jar","/pgdocapstone.jar"]
