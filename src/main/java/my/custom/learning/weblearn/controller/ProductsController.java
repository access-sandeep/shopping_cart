package my.custom.learning.weblearn.controller;

import java.io.File;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.ProductImage;
import my.custom.learning.weblearn.entity.Products;
import my.custom.learning.weblearn.exceptions.ProductNotFoundException;
import my.custom.learning.weblearn.repository.ProcuctsRepository;
import my.custom.learning.weblearn.repository.ProductImageRepository;

@RestController
public class ProductsController {

	@Autowired
	private ProcuctsRepository repository;
	
	@Autowired
	private ProductImageRepository productImageRepository;

	public ProductsController(ProcuctsRepository repository, ProductImageRepository productImageRepository) {
		super();
		this.repository = repository;
		this.productImageRepository = productImageRepository;
	}

	@GetMapping(path = "/products", version = AppConstants.API_VERSION)
	public List<Products> findAll() {
		return repository.findAll();
	}

	@GetMapping(path = "/products/{id}", version = AppConstants.API_VERSION)
	public Optional<Products> findById(@PathVariable Long id) {
		Optional<Products> product = repository.findById(id);
		if (product.isEmpty()) {
			throw new ProductNotFoundException("No product found with the product id = " + id,
					"Line number 44 in ProductsController.java");
		}
		return product;
	}

	@PostMapping(path = "/products/add", version = AppConstants.API_VERSION)
	public ResponseEntity<Products> addProduct(@Validated(Products.Create.class) @RequestBody Products product) {
		LocalDateTime localDateTime = LocalDateTime.now();
		product.setCreated_at(localDateTime);
		Products createProduct = repository.save(product);
		URI location = URI.create("/products/" + createProduct.getProduct_id());
		return ResponseEntity.created(location).build();
	}

	@PostMapping(path = "/products/update/{id}", version = AppConstants.API_VERSION)
	public ResponseEntity<Products> updateProduct(@Validated(Products.Update.class) @RequestBody Products product, @PathVariable Long id) {
		product.setProduct_id(id);
		Products existingProduct = repository.findById(id).get();
		if(product.getProduct_name() == null) {
			product.setProduct_name(existingProduct.getProduct_name());
		}
		
		if(product.getDescription() == null) {
			product.setDescription(existingProduct.getDescription());
		}
		
		if(product.getSku() == null) {
			product.setSku(existingProduct.getSku());
		}
		
		if(product.getBrand_id() == null) {
			product.setBrand_id(existingProduct.getBrand_id());
		}
		
		if(product.getCategory_id() == null) {
			product.setCategory_id(existingProduct.getCategory_id());
		}
		
		if(product.getPrice() == null) {
			product.setPrice(existingProduct.getPrice());
		}
		product.setCreated_at(existingProduct.getCreated_at());
		product.setUpdated_at(LocalDateTime.now());
				
		if(product.isIs_active() == null) {
			product.setIs_active(existingProduct.isIs_active());
		}
		
		if(product.getDiscount_price() == null) {
			product.setDiscount_price(existingProduct.getDiscount_price());
		}
		
		if(product.getWeight() == null) {
			product.setWeight(existingProduct.getWeight());
		}
		
		System.out.println("Product to be updated: " + product);
		
		Products createProduct = repository.save(product);
		URI location = URI.create("/products/" + createProduct.getProduct_id());
		return ResponseEntity.created(location).build();
	}

//	React JS File Upload form:
//	import axios from "axios";
//	import { useState } from "react";
//
//	function UploadImage() {
//	    const [file, setFile] = useState(null);
//
//	    const upload = async () => {
//	        const formData = new FormData();
//	        formData.append("file", file);
//
//	        await axios.post(
//	            "http://localhost:8080/api/products/upload",
//	            formData,
//	            {
//	                headers: {
//	                    "Content-Type": "multipart/form-data"
//	                }
//	            }
//	        );
//
//	        alert("Uploaded");
//	    };
//
//	    return (
//	        <>
//	            <input
//	                type="file"
//	                onChange={(e) => setFile(e.target.files[0])}
//	            />
//
//	            <button onClick={upload}>
//	                Upload
//	            </button>
//	        </>
//	    );
//	}
//
//	export default UploadImage;
	
//	postman request POST 'http://localhost:9090/product/image/upload' \
//	  --header 'X-API-VERSION: 1.1.0' \
//	  --header 'Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzYW5kZWVwLm11a2hlcmppQGNvZ25pemFudC5jb20iLCJpYXQiOjE3ODQ5OTA0OTcsImV4cCI6MTc4NTA3Njg5N30.YilCpo1dqB9-nUQSp5JKMMfpZ9HkMAI2VwAc8qujG0lQmWUV1VjtgSiaLkjBap6axM-QNT8eEu42g5t5dHd3pg' 'file=@"postman-cloud:///1f188ea9-34df-42c0-bf0d-656bd79d7b1a"' \
//	   --form 'product_id=10001' \
//	  --auth-bearer-token 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzYW5kZWVwLm11a2hlcmppQGNvZ25pemFudC5jb20iLCJpYXQiOjE3ODQ5OTA0OTcsImV4cCI6MTc4NTA3Njg5N30.YilCpo1dqB9-nUQSp5JKMMfpZ9HkMAI2VwAc8qujG0lQmWUV1VjtgSiaLkjBap6axM-QNT8eEu42g5t5dHd3pg'

	@PostMapping(path="/product/image/upload", version = AppConstants.API_VERSION)
	public ResponseEntity<String> uploadImage(@RequestParam("file") MultipartFile file, @RequestParam("product_id") Long product_id) throws java.io.IOException {
		String uploadDir = AppConstants.IMAGE_UPLOAD_PATH;
		File directory = new File(uploadDir);

		if (!directory.exists()) {
			directory.mkdirs();
		}

		String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
		Path path = Paths.get(uploadDir, fileName);

		Files.copy(file.getInputStream(), path);
		mapToTheDb(path.toString(), product_id);
		return ResponseEntity.ok(fileName);
	}
	
	private void mapToTheDb(String file_path, Long product_id) {
		ProductImage productImage = new ProductImage(null, product_id, file_path, false);
		productImageRepository.save(productImage);
	}

}
