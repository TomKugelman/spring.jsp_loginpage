FROM openjdk:8
WORKDIR /
ENTRYPOINT [ "springboot-jsp-login-page-1.0.jar" ]
COPY ./target/springboot-jsp-login-page-1.0.jar ./springboot-jsp-login-page-1.0.jar
CMD ["java","-jar","springboot-jsp-login-page-1.0.jar"]
