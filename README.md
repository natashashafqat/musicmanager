# Music Manager

Java application for managing your music, built with Spring Boot. ![spring-boot](https://www.dariawan.com/media/images/tech-spring-boot.width-1024.png)

## Getting Started

This application runs on Java 8, and has been built using Gradle 6.7.1.

1. Build the application from the project root

```
./gradlew build
```

2. Run the application using Spring Boot

```
./gradlew bootRun
```

The application will now be accessible at `http://localhost:8080`.

## Technical Aspects

Spring Boot is a fantastic framework for creating MVC applications.

#### Model
The application builds an in-memory H2 database for persisting the data, which is created upon application start.
The schema is defined and data is added in the `data.sql` file, which is used by Spring Data to initialise on application boot-up.

#### View
The frontend has been developed using the Thymeleaf library, used in many applications to transform HTML5 templates.

#### Controller
Request handling has been done through Spring Controllers in order to process request data, update the Database (Model) and relay the data to the frontend (View).