package com.shop.repository;

import com.shop.model.Cart;
import org.springframework.data.repository.CrudRepository;

public interface CartRepository extends CrudRepository<Cart, Long> {
    Iterable<Cart> findByUserId(Long userId);
}
