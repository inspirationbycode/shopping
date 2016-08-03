package com.shop.repository;

import com.shop.model.Book;
import org.springframework.data.repository.CrudRepository;

public interface BookRepository extends CrudRepository<Book, Long> {
    //public Book findByAny(String anyVar);
}
