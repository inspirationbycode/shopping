package com.shop.ws;

import com.shop.model.Book;
import com.shop.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "bookws")
public class BookService {
    @Autowired
    BookRepository bookRepository;

    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Book> getBooks() {
        return bookRepository.findAll();
    }

    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    public Book getBook(@PathVariable(value = "id") long id) {
        return bookRepository.findOne(id);
    }

    @RequestMapping(value = "/any", method = RequestMethod.GET)
    public Book findByAny(@PathVariable(value = "any") String any){
        return null;
    }
}
