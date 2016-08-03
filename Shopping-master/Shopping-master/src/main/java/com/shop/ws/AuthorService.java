package com.shop.ws;

import com.shop.model.Author;
import com.shop.model.Book;
import com.shop.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/authorws")
public class AuthorService {
    @Autowired
    AuthorRepository authorRepository;

    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Author> getAuthors() {
        return authorRepository.findAll();
    }

    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    public Author getAuthor(@PathVariable(value = "id") long id) {
        return authorRepository.findOne(id);
    }
}
