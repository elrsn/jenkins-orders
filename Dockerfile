FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/fooddelivery-0.0.1-SNAPSHOT.jar fooddelivery-0.0.1.jar
COPY ${JAR_FILE} fooddelivery-0.0.1.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","fooddelivery-0.0.1.jar"]