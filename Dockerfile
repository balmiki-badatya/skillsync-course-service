FROM gradle:9.2.0-jdk21-corretto as build

WORKDIR /app

COPY build.gradle settings.gradle gradlew ./

COPY gradle ./gradle

RUN ./gradlew dependencies

COPY src ./src

RUN ./gradlew clean build -x test

FROM  gcr.io/distroless/java21-debian12

WORKDIR /app

COPY --from=build /app/build/libs/skillsync-course-service-*-SNAPSHOT.jar skillsync-course-service-SNAPSHOT.jar

ENTRYPOINT ["java"]

CMD ["-jar", "skillsync-course-service-SNAPSHOT.jar"]