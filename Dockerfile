FROM openjdk:25

WORKDIR /app

COPY target/SpringBootRegistrationLogin-1.0.jar .

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/SpringBootRegistrationLogin-1.0.jar"]
