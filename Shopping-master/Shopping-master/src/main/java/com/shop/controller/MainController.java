package com.shop.controller;

import com.shop.model.Author;
import com.shop.model.AuthorComment;
import com.shop.model.AuthorMark;
import com.shop.model.Book;
import com.shop.repository.AuthorRepository;
import com.shop.repository.BookRepository;
import com.shop.repository.RoleRepository;
import com.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashSet;
import java.util.Set;

@Controller
public class MainController {
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    AuthorRepository authorRepository;
    @Autowired
    BookRepository bookRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    String main(Model model) {
        return "template";
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    String cart(Model model) {
        return "cart";
    }

    @RequestMapping(value = "/reglog", method = RequestMethod.GET)
    String reglog(Model model, @RequestParam(value = "error", required = false) String error) {
        if (error != null) {
            model.addAttribute("error", "Invalid info");
        }
        return "reglog";
    }
}
