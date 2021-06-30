FROM maven:latest AS build-stage
COPY . /build
WORKDIR /build
RUN mvn clean package -DskipTests

FROM java:8 AS runtime
WORKDIR /opt/backend
COPY --from=build-stage /build/target/spring-petclinic-rest-2.4.2.jar app.jar
ENTRYPOINT ["/usr/bin/java", "-jar", "app.jar"]