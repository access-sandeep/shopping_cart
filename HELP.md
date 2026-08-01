# Getting Started

This HELP file provides quick references and commands to build, run and test the WebLearn project locally.

## Quick links

- Project root: `C:\Users\sande\OneDrive\Documents\Java\Spring-Practice\weblearn`
- Main Spring Boot class: `src/main/java/my/custom/learning/weblearn/WeblearnApplication.java`
- Configuration: `src/main/resources/application.yaml`
- Postman collection: `Postman_Collections/weblearn.postman_collection.json`

## Useful reference documentation

- Official Apache Maven documentation: https://maven.apache.org/guides/index.html
- Spring Boot (4.0.6) reference: https://docs.spring.io/spring-boot/4.0.6/docs/
- Spring Boot Maven Plugin: https://docs.spring.io/spring-boot/4.0.6/maven-plugin
- Spring Web (servlet): https://docs.spring.io/spring-boot/4.0.6/reference/web/servlet.html
- Spring Data JPA guide: https://docs.spring.io/spring-boot/4.0.6/reference/data/sql.html#data.sql.jpa-and-spring-data
- Spring Security docs: https://spring.io/projects/spring-security
- SpringDoc OpenAPI: https://springdoc.org/

## Local setup (quick)

1. Ensure prerequisites are installed: Java 17+, Maven 3.6+, PostgreSQL 12+.
2. Create the database and user (example using `psql`):

```powershell
# run in PowerShell or psql shell
psql -U postgres
CREATE DATABASE weblearn_db;
CREATE USER weblearn_user WITH PASSWORD 'your_secure_password';
GRANT ALL PRIVILEGES ON DATABASE weblearn_db TO weblearn_user;
\q
```

3. Configure database credentials in `src/main/resources/application.yaml` or use environment variables.

4. Build the project (Maven wrapper included):

```powershell
cd C:\Users\sande\OneDrive\Documents\Java\Spring-Practice\weblearn
mvnw.cmd clean package
```

5. Run the application:

```powershell
# using Maven
mvnw.cmd spring-boot:run

# or run the built JAR
java -jar target\weblearn-0.0.1-SNAPSHOT.jar
```

The application listens on the port defined in `application.yaml` (default: 9090).

## Authentication & testing

- The project uses JWT-based authentication (see `security/` and `config/SecurityConfig.java`).
- To test protected endpoints:
  1. Register a user (POST `/api/v1.1.0/auth/register`)
  2. Login (POST `/api/v1.1.0/auth/login`) to obtain a JWT
  3. Add header `Authorization: Bearer {token}` to subsequent requests

- Postman collection bundled at `Postman_Collections/weblearn.postman_collection.json` can be imported to run all example requests.

## Running tests

```powershell
# Run unit/integration tests
mvnw.cmd test
```

## Docker / Container notes

- This repo does not include a Dockerfile by default. To create an image, you can use the Spring Boot Maven plugin's `build-image` goal (requires Docker):

```powershell
mvnw.cmd spring-boot:build-image
```

## Troubleshooting

- Database connection errors: ensure PostgreSQL service is running and credentials/URL in `application.yaml` are correct.
- Port conflicts: change `server.port` in `application.yaml` or stop the service using the port.
- JWT/token issues: verify token is provided in `Authorization` header and hasn't expired; check logs for token validation errors.

## Guides and examples

The following guides are useful when working on or extending the project:

- Building a RESTful Web Service: https://spring.io/guides/gs/rest-service/
- Serving Web Content with Spring MVC: https://spring.io/guides/gs/serving-web-content/
- Accessing Data with JPA: https://spring.io/guides/gs/accessing-data-jpa/
- SpringDoc OpenAPI examples: https://github.com/springdoc/springdoc-openapi-demos/

## Notes about the Maven parent POM

The project inherits from `spring-boot-starter-parent`. Maven POM inheritance can bring in elements like `<licenses>` and `<developers>`. The project POM includes overrides for elements that should not be inherited — if you change the parent, review and remove those overrides if appropriate.

---

If you want, I can also add a short `CONTRIBUTING.md` or example `docker-compose.yml` to simplify local development.