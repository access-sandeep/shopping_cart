# WebLearn - Spring Boot REST API for the shopping cart

A comprehensive Spring Boot REST API application for managing e-commerce operations including users, products, inventory, brands, categories, warehouses, and addresses. This project demonstrates Spring Data JPA, RESTful web services, JWT authentication, role-based access control, exception handling, and data validation using Jakarta EE annotations.

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
- [Security Configuration](#security-configuration)
- [Maven Commands](#maven-commands)
- [API Testing with Postman](#-api-testing-with-postman)
- [Learning Outcomes](#-learning-outcomes)
- [Quick Start](#-quick-start)
- [Troubleshooting](#-api-testing--debugging)

---

## 🎯 Project Overview

WebLearn is a comprehensive REST API for managing e-commerce operations. The application provides complete functionality for managing users, products, inventory, orders, and related entities. It leverages PostgreSQL as the database, Spring Data JPA for data persistence, Spring Security for authentication/authorization with JWT tokens, and Spring Validation for input validation. The application demonstrates enterprise-level design patterns with custom exception handling, role-based access control, and production-ready code practices.

---

## ✨ Features

- ✅ **User Management** - User registration, login, and profile management
- ✅ **Authentication & Authorization** - JWT token-based authentication with Spring Security
- ✅ **Role-Based Access Control** - Admin and User roles with permissions
- ✅ **Product Management** - Create, read, update products with images
- ✅ **Inventory Management** - Track product stock across warehouses
- ✅ **E-Commerce Features** - Brands, categories, warehouse locations
- ✅ **Address Management** - User addresses with city/country support
- ✅ **Post Management** - User posts functionality
- ✅ **Input Validation** - Jakarta Annotations for comprehensive validation
- ✅ **Custom Exception Handling** - Global exception handler with detailed error responses
- ✅ **RESTful API Design** - Standards-compliant REST endpoints
- ✅ **API Documentation** - OpenAPI/Swagger for interactive API exploration
- ✅ **Spring Data JPA** - Repository pattern for database operations
- ✅ **PostgreSQL Integration** - Robust relational database support
- ✅ **Development Tools** - DevTools for hot reload during development

---

## 🛠️ Technologies & Dependencies

| Technology | Version | Purpose |
|---|---|---|
| **Java** | 17 | Programming Language |
| **Spring Boot** | 4.0.6 | Framework |
| **Spring Security** | Latest | Authentication & Authorization |
| **Spring Data JPA** | Latest | ORM & Database Access |
| **Spring Web MVC** | Latest | REST API & Web Framework |
| **Spring Validation** | Latest | Input Validation |
| **JWT (JSON Web Token)** | 0.12.7 | Token-based Authentication |
| **PostgreSQL** | Latest | Relational Database |
| **Jakarta EE** | Latest | Enterprise Java Standard |
| **SpringDoc OpenAPI** | 3.0.1 | API Documentation (Swagger/OpenAPI) |
| **Maven** | 3.6+ | Build Tool |

### Key Dependencies (from pom.xml)

```xml
- spring-boot-starter-data-jpa: ORM and database access
- spring-boot-starter-webmvc: REST API creation
- spring-boot-starter-validation: Data validation
- spring-boot-starter-security: Authentication & Authorization
- springdoc-openapi-starter-webmvc-ui: API documentation
- jjwt-api, jjwt-impl, jjwt-jackson: JWT authentication
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
│   │   ├── java/my/custom/learning/weblearn/
│   │   │   ├── AppConstants.java                           # Application-wide constants
│   │   │   ├── WeblearnApplication.java                    # Spring Boot main class
│   │   │   │
│   │   │   ├── config/
│   │   │   │   └── SecurityConfig.java                     # Spring Security configuration
│   │   │   │
│   │   │   ├── controller/
│   │   │   │   ├── UserController.java                     # User endpoints
│   │   │   │   ├── PostController.java                     # Post endpoints
│   │   │   │   ├── ProductsController.java                 # Product endpoints
│   │   │   │   ├── ProductInventoryController.java         # Inventory endpoints
│   │   │   │   ├── BrandController.java                    # Brand endpoints
│   │   │   │   ├── CategoryController.java                 # Category endpoints
│   │   │   │   ├── WarehouseController.java                # Warehouse endpoints
│   │   │   │   ├── AddressController.java                  # Address endpoints
│   │   │   │   ├── LoginController.java                    # Authentication endpoints
│   │   │   │   ├── RegistrationController.java             # User registration endpoints
│   │   │   │   └── AuthorizationExampleController.java     # Authorization examples
│   │   │   │
│   │   │   ├── entity/
│   │   │   │   ├── User.java                               # User entity
│   │   │   │   ├── Post.java                               # Post entity
│   │   │   │   ├── Products.java                           # Product entity
│   │   │   │   ├── ProductImage.java                       # Product image entity
│   │   │   │   ├── ProductInventory.java                   # Inventory entity
│   │   │   │   ├── Brand.java                              # Brand entity
│   │   │   │   ├── CategoryOfProducts.java                 # Category entity
│   │   │   │   ├── Warehouse.java                          # Warehouse entity
│   │   │   │   ├── Address.java                            # Address entity
│   │   │   │   ├── City.java                               # City entity
│   │   │   │   ├── Country.java                            # Country entity
│   │   │   │   ├── Role.java                               # Role entity
│   │   │   │   ├── Login.java                              # Login entity
│   │   │   │   ├── LoginResponse.java                      # Login response DTO
│   │   │   │   ├── Token.java                              # Token entity
│   │   │   │   └── RequestRegisterUser.java                # Registration request DTO
│   │   │   │
│   │   │   ├── repository/
│   │   │   │   ├── UserRepository.java                     # User database operations
│   │   │   │   ├── PostRepository.java                     # Post database operations
│   │   │   │   ├── ProductsRepository.java                 # Product database operations
│   │   │   │   ├── ProductInventoryRepository.java         # Inventory database operations
│   │   │   │   ├── BrandRepository.java                    # Brand database operations
│   │   │   │   ├── CategoryRepository.java                 # Category database operations
│   │   │   │   ├── WarehouseRepository.java                # Warehouse database operations
│   │   │   │   ├── AddressRepository.java                  # Address database operations
│   │   │   │   ├── RoleRepository.java                     # Role database operations
│   │   │   │   └── TokenRepository.java                    # Token database operations
│   │   │   │
│   │   │   ├── service/
│   │   │   │   ├── UserService.java                        # User business logic
│   │   │   │   ├── PostService.java                        # Post business logic
│   │   │   │   ├── JwtService.java                         # JWT token generation & validation
│   │   │   │   ├── CustomUserDetailsService.java           # Custom user details service
│   │   │   │   └── RoleManagementService.java              # Role management logic
│   │   │   │
│   │   │   ├── security/
│   │   │   │   └── JwtAuthenticationFilter.java            # JWT authentication filter
│   │   │   │
│   │   │   ├── exceptions/
│   │   │   │   ├── UserNotFoundException.java              # User not found exception
│   │   │   │   ├── UserNotDeletedException.java            # User deletion exception
│   │   │   │   ├── PostNotFoundException.java              # Post not found exception
│   │   │   │   ├── PostNotDeletedException.java            # Post deletion exception
│   │   │   │   ├── ProductNotFoundException.java           # Product not found exception
│   │   │   │   ├── ProductInventoryNotFoundException.java   # Inventory not found exception
│   │   │   │   ├── BrandNotFoundException.java             # Brand not found exception
│   │   │   │   ├── CategoryNotFoundException.java          # Category not found exception
│   │   │   │   ├── AddressNotFoundException.java           # Address not found exception
│   │   │   │   ├── WarehouseNotFoundException.java         # Warehouse not found exception
│   │   │   │   └── parent/
│   │   │   │       ├── CustomResponseEntityExceptionHandler.java  # Global exception handler
│   │   │   │       └── ErrorDetails.java                          # Error response model
│   │   │   │
│   │   │   └── utility/                                    # Utility classes & helpers
│   │   │
│   │   └── resources/
│   │       ├── application.yaml                            # Application configuration (YAML)
│   │       ├── application.properties                      # Application configuration (properties)
│   │       ├── data.sql                                    # Sample SQL data for initialization
│   │       ├── roles-initialization.sql                    # Database roles initialization
│   │       ├── static/                                     # Static resources (CSS, JS, images)
│   │       └── templates/                                  # HTML templates (Thymeleaf)
│   │
│   └── test/
│       └── java/my/custom/learning/weblearn/
│           └── WeblearnApplicationTests.java               # Application tests
│
├── pom.xml                                                 # Maven project configuration
├── mvnw & mvnw.cmd                                         # Maven wrapper scripts
├── HELP.md                                                 # Build help documentation
├── README.md                                               # This file
├── Postman_Collections/
│   └── weblearn.postman_collection.json                    # Postman API collection
├── database-backup/
│   └── backup.sql                                          # Database backup file
└── uploads/
    └── products/                                           # Product image uploads directory
```

---

## 📋 Prerequisites

Before running this application, ensure you have the following installed:

- **Java Development Kit (JDK)**: Version 17 or higher
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

- **Postman** (Optional): For API testing
  - Download from: https://www.postman.com/downloads/

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

### Authentication Endpoints

| Method | Endpoint | Description |
|---|---|---|
| POST | `/auth/login` | User login (returns JWT token) |
| POST | `/auth/register` | User registration |
| POST | `/auth/refresh` | Refresh JWT token |

### User Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/users` | Get all users |
| GET | `/user/{id}` | Get user by ID |
| POST | `/user` | Create new user |
| PUT | `/user/{id}` | Update user |
| DELETE | `/user/{id}` | Delete user |

### Post Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/posts` | Get all posts |
| GET | `/post/{id}` | Get post by ID |
| POST | `/user/{userId}/post` | Create post for user |
| DELETE | `/post/{id}` | Delete post |

### Product Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/products` | Get all products |
| GET | `/product/{id}` | Get product by ID |
| POST | `/product` | Create new product |
| PUT | `/product/{id}` | Update product |
| DELETE | `/product/{id}` | Delete product |
| POST | `/product/{id}/image` | Upload product image |

### Inventory Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/inventory` | Get all inventory records |
| GET | `/inventory/{id}` | Get inventory by ID |
| POST | `/inventory` | Create inventory record |
| PUT | `/inventory/{id}` | Update inventory |
| DELETE | `/inventory/{id}` | Delete inventory |

### Brand Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/brands` | Get all brands |
| GET | `/brand/{id}` | Get brand by ID |
| POST | `/brand` | Create new brand |
| PUT | `/brand/{id}` | Update brand |
| DELETE | `/brand/{id}` | Delete brand |

### Category Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/categories` | Get all categories |
| GET | `/category/{id}` | Get category by ID |
| POST | `/category` | Create new category |
| PUT | `/category/{id}` | Update category |
| DELETE | `/category/{id}` | Delete category |

### Warehouse Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/warehouses` | Get all warehouses |
| GET | `/warehouse/{id}` | Get warehouse by ID |
| POST | `/warehouse` | Create new warehouse |
| PUT | `/warehouse/{id}` | Update warehouse |
| DELETE | `/warehouse/{id}` | Delete warehouse |

### Address Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/addresses` | Get all addresses |
| GET | `/address/{id}` | Get address by ID |
| POST | `/address` | Create new address |
| PUT | `/address/{id}` | Update address |
| DELETE | `/address/{id}` | Delete address |

### Sample API Requests

#### 1. User Registration

```bash
POST http://localhost:9090/api/v1.1.0/auth/register
Content-Type: application/json

{
  "first_name": "John",
  "last_name": "Doe",
  "email": "john.doe@example.com",
  "phone": "9876543210",
  "password": "password123",
  "is_active": true
}
```

#### 2. User Login

```bash
POST http://localhost:9090/api/v1.1.0/auth/login
Content-Type: application/json

{
  "email": "john.doe@example.com",
  "password": "password123"
}
```

**Response:**
```json
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "refreshToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": 1,
    "first_name": "John",
    "last_name": "Doe",
    "email": "john.doe@example.com"
  }
}
```

#### 3. Create Product

```bash
POST http://localhost:9090/api/v1.1.0/product
Content-Type: application/json
Authorization: Bearer {jwt_token}

{
  "product_name": "Laptop",
  "description": "High performance laptop",
  "price": 1299.99,
  "brand_id": 1,
  "category_id": 1
}
```

#### 4. Get All Products

```bash
GET http://localhost:9090/api/v1.1.0/products
Authorization: Bearer {jwt_token}
```

#### 5. Create Warehouse

```bash
POST http://localhost:9090/api/v1.1.0/warehouse
Content-Type: application/json
Authorization: Bearer {jwt_token}

{
  "warehouse_name": "Main Warehouse",
  "location": "New York",
  "capacity": 1000
}
```

#### 6. Update Inventory

```bash
PUT http://localhost:9090/api/v1.1.0/inventory/{id}
Content-Type: application/json
Authorization: Bearer {jwt_token}

{
  "quantity": 50,
  "warehouse_id": 1,
  "product_id": 1
}
```

### Error Responses

**Unauthorized (401):**
```json
{
  "timestamp": "2026-08-01T10:30:00Z",
  "message": "Unauthorized",
  "details": "Missing or invalid JWT token"
}
```

**User Not Found (404):**
```json
{
  "timestamp": "2026-08-01T10:30:00Z",
  "message": "No user with id 999",
  "details": "User record not found in database"
}
```

**Validation Error (400):**
```json
{
  "timestamp": "2026-08-01T10:30:00Z",
  "message": "Validation failed",
  "details": "The first name should only contain alphabets..."
}
```

**Conflict - Resource Already Exists (409):**
```json
{
  "timestamp": "2026-08-01T10:30:00Z",
  "message": "Resource already exists",
  "details": "Product with this name already exists"
}
```

---

## 🗄️ Database Configuration

### Database Schema

The application uses PostgreSQL with the following main tables:

#### Users Table
```sql
CREATE TABLE users (
    user_id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    address_id BIGINT,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Products Table
```sql
CREATE TABLE products (
    product_id BIGSERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    brand_id BIGINT,
    category_id BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES category_of_products(category_id)
);
```

#### Product Images Table
```sql
CREATE TABLE product_image (
    image_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    image_path VARCHAR(500),
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);
```

#### Product Inventory Table
```sql
CREATE TABLE product_inventory (
    inventory_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    warehouse_id BIGINT NOT NULL,
    quantity INTEGER DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);
```

#### Brands Table
```sql
CREATE TABLE brand (
    brand_id BIGSERIAL PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Categories Table
```sql
CREATE TABLE category_of_products (
    category_id BIGSERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Warehouses Table
```sql
CREATE TABLE warehouse (
    warehouse_id BIGSERIAL PRIMARY KEY,
    warehouse_name VARCHAR(255) NOT NULL,
    location VARCHAR(500),
    capacity INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Addresses Table
```sql
CREATE TABLE address (
    address_id BIGSERIAL PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city_id BIGINT,
    country_id BIGINT,
    postal_code VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (city_id) REFERENCES city(city_id),
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);
```

#### Cities Table
```sql
CREATE TABLE city (
    city_id BIGSERIAL PRIMARY KEY,
    city_name VARCHAR(255) NOT NULL,
    country_id BIGINT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);
```

#### Countries Table
```sql
CREATE TABLE country (
    country_id BIGSERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,
    country_code VARCHAR(10)
);
```

#### Posts Table
```sql
CREATE TABLE post (
    id BIGSERIAL PRIMARY KEY,
    description VARCHAR(1000) NOT NULL,
    user_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
```

#### Roles Table
```sql
CREATE TABLE role (
    role_id BIGSERIAL PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(255)
);
```

#### Tokens Table
```sql
CREATE TABLE token (
    token_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    token VARCHAR(1000) NOT NULL,
    token_type VARCHAR(50),
    revoked BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
```

### Initialization Scripts

The following SQL scripts are provided for database setup:

- **roles-initialization.sql**: Creates initial roles (ADMIN, USER, etc.)
- **data.sql**: Populates sample data for development/testing

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

## 🔒 Security Configuration

### JWT Authentication

This application uses JWT (JSON Web Tokens) for stateless authentication:

1. **User Registration** - New users register with email and password
2. **User Login** - Users authenticate with email/password to receive JWT token
3. **Token Usage** - Include JWT token in `Authorization: Bearer {token}` header for protected endpoints
4. **Token Validation** - JwtAuthenticationFilter validates tokens on each request
5. **Token Refresh** - Expired tokens can be refreshed using refresh tokens

### Spring Security Configuration

Key security features configured in `SecurityConfig.java`:

- CSRF protection enabled
- CORS configuration for cross-origin requests
- JWT filter added to security chain
- Password encoding with BCrypt
- Role-based access control
- Protected endpoints requiring authentication

### Sample JWT Header

```
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
```

## 🔒 Security Considerations

1. **Never commit sensitive data** (passwords, keys) to version control
2. Use environment variables for database credentials in production
3. Validate and sanitize all user inputs (implemented with Jakarta Validation)
4. Use HTTPS in production for all API endpoints
5. Implement proper authentication (JWT) and authorization (roles)
6. Keep dependencies updated for security patches
7. Use strong password policies for user accounts
8. Implement rate limiting for API endpoints
9. Enable CORS only for trusted origins
10. Regularly audit security logs and access patterns

---

## 📚 Additional Resources

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Spring Data JPA Documentation](https://spring.io/projects/spring-data-jpa)
- [Spring Security Documentation](https://spring.io/projects/spring-security)
- [JWT Best Practices](https://tools.ietf.org/html/rfc7519)
- [Jakarta EE Documentation](https://jakarta.ee/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [Maven Documentation](https://maven.apache.org/guides/)
- [RESTful API Best Practices](https://restfulapi.net/)
- [SpringDoc OpenAPI Documentation](https://springdoc.org/)
- [Postman Learning Center](https://learning.postman.com/)

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

## 🧪 API Testing with Postman

A complete Postman collection is included for testing all API endpoints:

**Collection Location**: `Postman_Collections/weblearn.postman_collection.json`

### Importing the Collection

1. Open Postman
2. Click **Import** → **Upload Files**
3. Select `weblearn.postman_collection.json`
4. All endpoints will be organized by resource (Users, Products, Inventory, etc.)

### Testing Workflow

1. **Register** a new user via `/auth/register`
2. **Login** with `/auth/login` to get JWT token
3. **Set Authorization** - Add token to Postman environment variable
4. **Test Endpoints** - Run requests with automatic token injection
5. **View Responses** - Check response codes and data structure

### Environment Variables in Postman

Create a Postman environment with:
```json
{
  "base_url": "http://localhost:9090/api/v1.1.0",
  "token": "{{jwt_token_from_login}}",
  "user_id": "{{user_id_from_response}}"
}
```

---

## 📞 API Testing & Debugging

### Common Issues

**Database Connection Error:**
- Verify PostgreSQL is running
- Check database credentials in application.yaml
- Ensure weblearn_db database exists

**JWT Token Invalid:**
- Ensure token is sent in Authorization header
- Check token hasn't expired
- Verify token format: `Authorization: Bearer {token}`

**Port Already in Use:**
- Change port in application.yaml to `server.port: 8080`
- Or kill existing process using port 9090

For more issues, questions, or suggestions:
- Create an issue in the repository
- Check database logs for detailed errors
- Review application logs in console output

---

**Last Updated**: August 1, 2026
**Version**: 0.0.1-SNAPSHOT
**Author**: WebLearn Development Team
