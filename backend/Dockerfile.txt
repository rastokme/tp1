# Stage 1: Compile the Java code
FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app
COPY Main.java .
RUN javac Main.java

# Stage 2: Run the compiled Java code
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/Main.class .
CMD ["java", "Main"]
