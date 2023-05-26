FROM openjdk:8-jdk-alpine
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
COPY target/spring-boot-docker-complete-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app:app/lib/*","/app.jar"]
