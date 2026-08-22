# Build stage
FROM maven:3.9-eclipse-temurin-21-alpine AS builder
WORKDIR /app

# Install git and clone the application source from GitHub
RUN apk add --no-cache git
RUN git clone --depth=1 https://github.com/access-sandeep/shopping_cart.git .

# Pre-fetch dependencies for better layer caching on rebuilds
RUN chmod +x mvnw
RUN ./mvnw -B -DskipTests dependency:go-offline

# Build the application
RUN ./mvnw -B clean package -DskipTests

# Keep only the runnable Spring Boot jar (exclude *.jar.original)
RUN JAR_FILE=$(find target -maxdepth 1 -type f -name "*.jar" ! -name "*.jar.original" | head -n 1) \
	&& cp "$JAR_FILE" /app/app.jar

# Runtime stage
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Run as non-root for better container security
RUN addgroup -S spring && adduser -S spring -G spring
USER spring

COPY --from=builder /app/app.jar /app/app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "/app/app.jar"]