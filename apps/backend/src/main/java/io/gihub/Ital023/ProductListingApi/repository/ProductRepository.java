package io.gihub.Ital023.ProductListingApi.repository;

import io.gihub.Ital023.ProductListingApi.entities.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {

}
