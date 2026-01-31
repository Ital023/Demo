package io.gihub.Ital023.ProductListingApi.controller;

import io.gihub.Ital023.ProductListingApi.controller.dto.ProductsResponseDTO;
import io.gihub.Ital023.ProductListingApi.service.ProductService;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "/products")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public ResponseEntity<ProductsResponseDTO> findAllProducts(@RequestParam(name = "page", defaultValue = "0") Integer page,
                                                                      @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize) {
        var products = productService.findAll(page, pageSize);

        return ResponseEntity.ok(products);
    }

}
