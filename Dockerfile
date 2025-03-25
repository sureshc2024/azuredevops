FROM openjdk:latest
RUN dnf update -y && \
    dnf upgrade -y openssl && \
    dnf clean all

WORKDIR /app

COPY target/SpringBootRegistrationLogin-1.0.jar .

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/SpringBootRegistrationLogin-1.0.jar"]
