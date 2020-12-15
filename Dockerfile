FROM openjdk:8
COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn dependency:go-offline -B
RUN mvn package
WORKDIR /src
COPY ./target/springboot-jsp-login-page-1.0.jar ./springboot-jsp-login-page-1.0.jar
CMD ["java","-jar","springboot-jsp-login-page-1.0.jar"]
