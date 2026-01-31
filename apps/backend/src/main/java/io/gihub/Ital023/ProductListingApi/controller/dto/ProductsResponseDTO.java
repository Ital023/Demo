package io.gihub.Ital023.ProductListingApi.controller.dto;

import java.util.List;

public record ProductsResponseDTO(List<ProductDTO> products, PaginationDTO pagination) {
}
