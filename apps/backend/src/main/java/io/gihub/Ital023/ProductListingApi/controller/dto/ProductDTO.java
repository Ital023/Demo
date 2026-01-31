package io.gihub.Ital023.ProductListingApi.controller.dto;

import java.math.BigDecimal;

public record ProductDTO(Long productId, String name, BigDecimal price, String description, CategoryDTO category) {
}
