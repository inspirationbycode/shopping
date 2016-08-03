package com.shop.ws;

import com.shop.model.Genre;
import com.shop.repository.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "genrews")
public class GenreService {
    @Autowired
    GenreRepository genreRepository;

    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Genre> getGenres() {
        return genreRepository.findAll();
    }
}
