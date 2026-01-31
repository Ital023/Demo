package io.gihub.Ital023.ProductListingApi.service;

import io.gihub.Ital023.ProductListingApi.controller.dto.CategoryDTO;
import io.gihub.Ital023.ProductListingApi.controller.dto.PaginationDTO;
import io.gihub.Ital023.ProductListingApi.controller.dto.ProductDTO;
import io.gihub.Ital023.ProductListingApi.controller.dto.ProductsResponseDTO;
import io.gihub.Ital023.ProductListingApi.entities.CategoryEntity;
import io.gihub.Ital023.ProductListingApi.entities.ProductEntity;
import io.gihub.Ital023.ProductListingApi.repository.ProductRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }


    public ProductsResponseDTO findAll(Integer page, Integer pageSize) {

        Pageable pageable = PageRequest.of(page, pageSize);

        var productsEntityPage = productRepository.findAll(pageable);

        List<ProductDTO> productsDTO = productsEntityPage.map(x -> toProductDTO(x)).toList();

        PaginationDTO paginationDTO = new PaginationDTO(productsEntityPage.getNumber(),
                productsEntityPage.getSize(),
                productsEntityPage.getTotalElements(),
                productsEntityPage.getTotalPages());

        return new ProductsResponseDTO(productsDTO, paginationDTO);
    }

    private ProductDTO toProductDTO(ProductEntity productEntity) {
        CategoryEntity category = productEntity.getCategory();

        CategoryDTO categoryDTO = new CategoryDTO(category.getCategoryId(), category.getName());

        return new ProductDTO(productEntity.getProductId(),
                productEntity.getName(),
                productEntity.getPrice(),
                productEntity.getDescription(),
                categoryDTO);
    }


}
