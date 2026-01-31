package io.gihub.Ital023.ProductListingApi.controller.dto;

public record PaginationDTO(Integer page,
                            Integer pageSize,
                            Long totalElements,
                            Integer totalPages) {
}