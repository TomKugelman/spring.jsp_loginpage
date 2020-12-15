FROM openjdk:8
WORKDIR /usr/src/app
COPY . .
RUN mvn dependency:go-offline -B
RUN mvn package
COPY ./target/springboot-jsp-login-page-1.0.jar ./springboot-jsp-login-page-1.0.jar
CMD ["java","-jar","springboot-jsp-login-page-1.0.jar"]
