package my.custom.learning.weblearn.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.core.util.Json;
import io.swagger.v3.oas.models.OpenAPI;

@RestController
@RequestMapping
public class ApiDocsController {

    private final OpenAPI openAPI;

    public ApiDocsController(OpenAPI openAPI) {
        this.openAPI = openAPI;
    }

    @GetMapping(path = "/api-docs/manual", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> apiDocs() throws Exception {
        String body = Json.mapper().writeValueAsString(openAPI);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        return ResponseEntity.ok().headers(headers).body(body);
    }
}