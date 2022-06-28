FROM openjdk:17
WORKDIR /opt/app
COPY target/*.jar ./app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]