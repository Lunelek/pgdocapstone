FROM openjdk:11
LABEL maintainer="folu.aduloju@gmail.com
VOLUME /tmp
EXPOSE 80
ARG JAR_FILE=target/project.jar
ADD ${JAR_FILE} pgdocapstone.jar
ENTRYPOINT ["java","-jar","/pgdocapstone.jar"]
