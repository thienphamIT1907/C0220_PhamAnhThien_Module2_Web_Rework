package com.repository;

import com.models.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

    Page<Category> findAllByCategoryNameContaining(String categoryName, Pageable pageable);
}
