# WebLearn - Spring Boot REST API

A Spring Boot REST API application for managing users and their posts. This project demonstrates Spring Data JPA, RESTful web services, exception handling, and data validation using Jakarta EE annotations.

---

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Technologies & Dependencies](#technologies--dependencies)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [API Endpoints](#api-endpoints)
- [Database Configuration](#database-configuration)
- [Maven Commands](#maven-commands)

---

## 🎯 Project Overview

WebLearn is a REST API for managing users and their posts. The application uses PostgreSQL as the database, Spring Data JPA for data persistence, and Spring Validation for input validation. It includes custom exception handling and error responses.

---

## ✨ Features

- ✅ User Management (Create, Read, Update, Delete)
- ✅ Post Management (Create, Read)
- ✅ User-Post Relationship (One-to-Many)
- ✅ Input Validation with Jakarta Annotations
- ✅ Custom Exception Handling
- ✅ RESTful API Design
- ✅ OpenAPI/Swagger Documentation
- ✅ Spring Data JPA Repository Pattern
- ✅ PostgreSQL Database Integration
- ✅ Development Tools (DevTools for hot reload)

---

## 🛠️ Technologies & Dependencies

| Technology | Version | Purpose |
|---|---|---|
| **Java** | 25 | Programming Language |
| **Spring Boot** | 4.0.6 | Framework |
| **Spring Data JPA** | Latest | ORM & Database Access |
| **Spring Web MVC** | Latest | REST API & Web Framework |
| **Spring Validation** | Latest | Input Validation |
| **PostgreSQL** | Latest | Relational Database |
| **Jakarta EE** | Latest | Enterprise Java Standard |
| **SpringDoc OpenAPI** | 3.0.1 | API Documentation (Swagger/OpenAPI) |
| **Maven** | 3.6+ | Build Tool |

### Key Dependencies (from pom.xml)

```xml
- spring-boot-starter-data-jpa: ORM and database access
- spring-boot-starter-webmvc: REST API creation
- spring-boot-starter-validation: Data validation
- springdoc-openapi-starter-webmvc-ui: API documentation
- spring-boot-devtools: Hot reload during development
- postgresql: PostgreSQL JDBC driver
- spring-boot-starter-data-jpa-test: Testing
- spring-boot-starter-webmvc-test: REST API testing
```

---

## 📁 Project Structure

```
weblearn/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── my/custom/learning/weblearn/
│   │   │       ├── AppConstants.java                 # Application-wide constants
│   │   │       ├── WeblearnApplication.java          # Spring Boot main class
│   │   │       ├── controller/
│   │   │       │   ├── PostController.java           # REST endpoints for posts
│   │   │       │   ├── UserController.java           # REST endpoints for users
│   │   │       │   └── UserJpaController.java        # JPA-based user endpoints
│   │   │       ├── entity/
│   │   │       │   ├── Post.java                     # Post entity (JPA)
│   │   │       │   └── User.java                     # User entity (JPA)
│   │   │       ├── repository/
│   │   │       │   ├── PostRepository.java           # Post database operations
│   │   │       │   └── UserRepository.java           # User database operations
│   │   │       ├── service/
│   │   │       │   ├── PostService.java              # Post business logic
│   │   │       │   └── UserService.java              # User business logic
│   │   │       └── exceptions/
│   │   │           ├── PostNotFoundException.java    # Custom post exception
│   │   │           ├── PostNotDeletedException.java  # Custom deletion exception
│   │   │           ├── UserNotFoundException.java    # Custom user exception
│   │   │           ├── UserNotDeletedException.java  # Custom deletion exception
│   │   │           └── parent/
│   │   │               ├── CustomResponseEntityExceptionHandler.java  # Global exception handler
│   │   │               └── ErrorDetails.java                          # Error response model
│   │   └── resources/
│   │       ├── application.properties                # Application configuration (properties)
│   │       ├── application.yaml                      # Application configuration (YAML)
│   │       ├── data.sql                              # Sample SQL data (for initialization)
│   │       ├── static/                               # Static resources (CSS, JS, images)
│   │       └── templates/                            # HTML templates (if using Thymeleaf)
│   └── test/
│       └── java/my/custom/learning/weblearn/
│           └── WeblearnApplicationTests.java         # Application tests
├── pom.xml                                           # Maven project configuration
├── mvnw & mvnw.cmd                                   # Maven wrapper scripts
├── HELP.md                                           # Build help documentation
├── README.md                                         # This file
└── database-backup/
    └── backup.sql                                    # Database backup file
```

---

## 📋 Prerequisites

Before running this application, ensure you have the following installed:

- **Java Development Kit (JDK)**: Version 25 or higher
  - Download from: https://www.oracle.com/java/technologies/downloads/

- **Apache Maven**: Version 3.6 or higher
  - Download from: https://maven.apache.org/download.cgi
  - Verify: `mvn --version`

- **PostgreSQL**: Version 12 or higher
  - Download from: https://www.postgresql.org/download/
  - Installation guide: https://www.postgresql.org/docs/current/index.html

- **Git** (Optional): For version control
  - Download from: https://git-scm.com/

- **IDE** (Recommended): IntelliJ IDEA, Eclipse, or VS Code with extensions

---

## 🚀 Installation & Setup

### Step 1: Clone or Download the Project

```powershell
# Clone from repository (if using Git)
git clone <repository-url>

# Navigate to project directory
cd C:\Users\sande\OneDrive\Documents\Java\Spring-Practice\weblearn
```

### Step 2: Set Up PostgreSQL Database

1. **Start PostgreSQL Service**
   ```powershell
   # Windows - PostgreSQL should start automatically with the service
   # If not, start it from Windows Services or use:
   pg_ctl -D "C:\Program Files\PostgreSQL\<version>\data" start
   ```

2. **Create Database and User**
   ```powershell
   # Connect to PostgreSQL
   psql -U postgres
   
   # In PostgreSQL console, run:
   CREATE DATABASE weblearn_db;
   CREATE USER weblearn_user WITH PASSWORD 'your_secure_password';
   ALTER ROLE weblearn_user SET client_encoding TO 'utf8';
   ALTER ROLE weblearn_user SET default_transaction_isolation TO 'read committed';
   ALTER ROLE weblearn_user SET default_transaction_deferrable TO on;
   ALTER ROLE weblearn_user SET default_transaction_readonly TO off;
   GRANT ALL PRIVILEGES ON DATABASE weblearn_db TO weblearn_user;
   ```

3. **Exit PostgreSQL Console**
   ```powershell
   \q
   ```

### Step 3: Configure Application Properties

Edit `src/main/resources/application.yaml`:

```yaml
server:
  port: 9090

spring:
  application:
    name: weblearn
  
  datasource:
    url: jdbc:postgresql://localhost:5432/weblearn_db
    username: weblearn_user
    password: your_secure_password
    driver-class-name: org.postgresql.Driver
  
  jpa:
    database-platform: org.hibernate.dialect.PostgreSQLDialect
    hibernate:
      ddl-auto: create-drop  # Use 'create-drop', 'create', 'update', or 'validate'
    show-sql: false
    properties:
      hibernate:
        format_sql: true

  sql:
    init:
      mode: always
```

### Step 4: Build the Project

```powershell
# Navigate to project directory
cd C:\Users\sande\OneDrive\Documents\Java\Spring-Practice\weblearn

# Clean and build using Maven Wrapper (recommended - no separate Maven installation needed)
mvnw.cmd clean install

# OR using your installed Maven
mvn clean install
```

---

## ▶️ Running the Application

### Option 1: Using Maven

```powershell
# Navigate to project directory
cd C:\Users\sande\OneDrive\Documents\Java\Spring-Practice\weblearn

# Run the application using Maven Wrapper
mvnw.cmd spring-boot:run

# OR using installed Maven
mvn spring-boot:run
```

### Option 2: Using JAR File

```powershell
# Build the JAR first
mvnw.cmd clean package

# Run the JAR
java -jar target/weblearn-0.0.1-SNAPSHOT.jar
```

### Option 3: From IDE

- **IntelliJ IDEA**: Right-click on `WeblearnApplication.java` → Run
- **Eclipse**: Right-click project → Run As → Spring Boot App
- **VS Code**: Use Spring Boot Dashboard extension

### Verify the Application is Running

```powershell
# Check if server is running
curl http://localhost:9090/

# Or open in browser
# http://localhost:9090/swagger-ui.html  (API Documentation)
```

**Expected Console Output:**
```
Yes you started
```

---

## 🔌 API Endpoints

### Base URL
```
http://localhost:9090/api/v1.1.0
```

### User Endpoints

| Method | Endpoint | Description | Status |
|---|---|---|---|
| GET | `/users` | Get all users | ✅ |
| GET | `/user/{id}` | Get user by ID | ✅ |
| POST | `/user` | Create new user | ✅ |
| PUT | `/user/{id}` | Update user | ✅ |
| DELETE | `/user/{id}` | Delete user | ✅ |

### Post Endpoints

| Method | Endpoint | Description | Status |
|---|---|---|---|
| GET | `/posts` | Get all posts | ✅ |
| GET | `/post/{id}` | Get post by ID | ✅ |
| POST | `/user/{id}/post` | Create post for user | ✅ |

### Sample API Requests

#### 1. Create a User

```bash
POST http://localhost:9090/api/v1.1.0/user
Content-Type: application/json

{
  "first_name": "John",
  "last_name": "Doe",
  "email": "john.doe@example.com",
  "phone": "9876543210",
  "secret_key": "secret123",
  "is_active": true
}
```

#### 2. Get All Users

```bash
GET http://localhost:9090/api/v1.1.0/users
```

#### 3. Get User by ID

```bash
GET http://localhost:9090/api/v1.1.0/user/10000
```

#### 4. Create a Post for User

```bash
POST http://localhost:9090/api/v1.1.0/user/10000/post
Content-Type: application/json

{
  "description": "This is my first post"
}
```

#### 5. Get All Posts

```bash
GET http://localhost:9090/api/v1.1.0/posts
```

### Error Responses

**User Not Found (404):**
```json
{
  "timestamp": "2026-07-12T10:30:00Z",
  "message": "No user with id 999",
  "details": "trace"
}
```

**Validation Error (400):**
```json
{
  "timestamp": "2026-07-12T10:30:00Z",
  "message": "Validation failed",
  "details": "The first name should only contain alphabets..."
}
```

---

## 🗄️ Database Configuration

### Database Schema

#### Users Table
```sql
CREATE TABLE users (
    user_id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20) NOT NULL,
    secret_key VARCHAR(255),
    address_id INTEGER,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Posts Table
```sql
CREATE TABLE post (
    id BIGSERIAL PRIMARY KEY,
    description VARCHAR(1000) NOT NULL,
    user_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
```

### Sequences

- **user_seq**: Starts at 10000, increments by 1
- **post_seq**: Starts at 10004, increments by 1

### Database Backup

A backup of the database is available at: `database-backup/backup.sql`

To restore from backup:
```powershell
psql -U weblearn_user -d weblearn_db -f database-backup/backup.sql
```

---

## 📦 Maven Commands

### Build Commands

```powershell
# Navigate to project directory
cd C:\Users\sande\OneDrive\Documents\Java\Spring-Practice\weblearn

# Clean the build directory
mvnw.cmd clean

# Compile the source code
mvnw.cmd compile

# Build the project (compile + package)
mvnw.cmd build

# Clean and build
mvnw.cmd clean build

# Build with skipping tests
mvnw.cmd clean build -DskipTests

# Full lifecycle: clean, compile, test, package, verify
mvnw.cmd clean package
```

### Running Commands

```powershell
# Run the application
mvnw.cmd spring-boot:run

# Run with debug mode
mvnw.cmd spring-boot:run -Dspring-boot.run.arguments="--debug"

# Run with custom port
mvnw.cmd spring-boot:run -Dspring-boot.run.arguments="--server.port=8080"
```

### Testing Commands

```powershell
# Run all tests
mvnw.cmd test

# Run specific test class
mvnw.cmd test -Dtest=WeblearnApplicationTests

# Run tests with coverage
mvnw.cmd clean test jacoco:report
```

### Dependency Commands

```powershell
# Display project dependencies tree
mvnw.cmd dependency:tree

# Display dependencies in text format
mvnw.cmd dependency:list

# Check for outdated dependencies
mvnw.cmd versions:display-dependency-updates

# Update to latest dependency versions
mvnw.cmd versions:use-latest-versions
```

### Package Commands

```powershell
# Create executable JAR
mvnw.cmd clean package

# Package without running tests
mvnw.cmd clean package -DskipTests

# Package with specific profile
mvnw.cmd clean package -Pprofile-name
```

### Install/Deploy Commands

```powershell
# Install to local Maven repository
mvnw.cmd install

# Install without running tests
mvnw.cmd install -DskipTests

# Deploy to remote repository
mvnw.cmd deploy
```

### Validation & Help Commands

```powershell
# Validate project configuration
mvnw.cmd validate

# Display all available goals
mvnw.cmd help:describe

# Get help for specific plugin
mvnw.cmd help:describe -Dplugin=spring-boot

# Check for security vulnerabilities
mvnw.cmd dependency-check:check
```

---

## 🔒 Security Considerations

1. **Never commit sensitive data** (passwords, keys) to version control
2. Use environment variables for database credentials in production
3. Validate and sanitize all user inputs (already implemented with Jakarta Validation)
4. Use HTTPS in production
5. Implement proper authentication and authorization
6. Keep dependencies updated for security patches

---

## 📚 Additional Resources

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Spring Data JPA Documentation](https://spring.io/projects/spring-data-jpa)
- [Jakarta EE Documentation](https://jakarta.ee/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [Maven Documentation](https://maven.apache.org/guides/)
- [RESTful API Best Practices](https://restfulapi.net/)

---

## 🤝 Contributing

1. Create a new branch for your feature
2. Commit your changes with meaningful messages
3. Push to the repository
4. Create a pull request for review

---

## 📝 License

This project is provided as-is for educational purposes.

---

## 👨‍💻 Author

Created as a Spring Boot practice project for learning REST API development with Spring Data JPA, validation, and exception handling.

---

## 📞 Support

For issues, questions, or suggestions:
- Create an issue in the repository
- Contact the development team
- Refer to the documentation links above

---

## 🎓 Learning Outcomes

By studying this project, you will understand:

✅ Spring Boot application structure
✅ RESTful API design principles
✅ Spring Data JPA and ORM concepts
✅ Input validation with Jakarta annotations
✅ Custom exception handling with @ControllerAdvice
✅ Relationship mapping (One-to-Many, Many-to-One)
✅ Sequence generators in PostgreSQL
✅ Request/Response mapping with DTOs
✅ Maven build and dependency management
✅ API documentation with Swagger/OpenAPI

---

**Last Updated**: July 12, 2026
**Version**: 0.0.1-SNAPSHOT
