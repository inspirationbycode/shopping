package com.shop.repository;

import com.shop.model.Orderb;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<Orderb, Long> {
    Iterable<Orderb> findByUserId(Long userId);
}
