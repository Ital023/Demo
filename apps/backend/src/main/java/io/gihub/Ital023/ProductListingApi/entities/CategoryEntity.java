package io.gihub.Ital023.ProductListingApi.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_category")
public class CategoryEntity {

    @Id
    @Column(name = "category_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long categoryId;

    @Column(name = "name")
    private String name;

}
