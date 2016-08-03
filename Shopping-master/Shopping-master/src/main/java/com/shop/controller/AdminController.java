package com.shop.controller;

import com.shop.model.*;
import com.shop.repository.*;
import com.sun.org.apache.regexp.internal.StreamCharacterIterator;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashSet;
import java.util.Set;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Comment;

@Controller
public class AdminController {
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    AuthorRepository authorRepository;
    @Autowired
    BookRepository bookRepository;
    @Autowired
    GenreRepository genreRepository;
    @Autowired
    SeriesRepository seriesRepository;
    @Autowired
    OrderRepository orderRepository;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    String admin(Model model) {
        Iterable<Book> books = bookRepository.findAll();
        model.addAttribute("books", books);
        return "admin/admin";
    }

    @RequestMapping(value = "/adminAuth", method = RequestMethod.GET)
    String adminAuth(Model model) {
        Iterable<Author> authors = authorRepository.findAll();
        model.addAttribute("authors", authors);
        return "admin/author/adminAuth";
    }

    @RequestMapping(value = "/deleteBook", method = RequestMethod.GET)
    String deleteBook(Model model, @RequestParam(value = "id") long id) {
        bookRepository.delete(id);
        return "admin/admin";
    }


    @RequestMapping(value = "/viewBook", method = RequestMethod.GET)
    String updateBook(Model model, @RequestParam(value = "bookId") long bookId,
                      @RequestParam(value = "type") String type) {

        Book book = bookRepository.findOne(bookId);
        model.addAttribute("book", book);

        model.addAttribute("authorArr", authorRepository.findAll());
        model.addAttribute("genreArr", genreRepository.findAll());
        return "admin/book/viewBook";
    }

    @RequestMapping(value = "/adminGenres", method = RequestMethod.GET)
    String viewGenre(Model model) {
        model.addAttribute("genres", genreRepository.findAll());
        return "admin/genres";
    }

    @RequestMapping(value = "/adminSer", method = RequestMethod.GET)
    String viewSeries(Model model) {
        model.addAttribute("series", seriesRepository.findAll());
        return "admin/series";
    }

    @RequestMapping(value = "/viewAuthor", method = RequestMethod.GET)
    String viewAuthor(Model model, @RequestParam(value = "authorId") long authorId, @RequestParam(value = "type") String type) {

        Author author = authorRepository.findOne(authorId);
        model.addAttribute("author", author);

        model.addAttribute("bookArr", bookRepository.findAll());
        model.addAttribute("genreArr", genreRepository.findAll());
        return "admin/author/viewAuthor";
    }

    @RequestMapping(value = "/adminOrder", method = RequestMethod.GET)
    String viewOrder(Model model) {
        model.addAttribute("orders", orderRepository.findAll());
        return "admin/order";
    }

    @RequestMapping(value = "/sucOrder", method = RequestMethod.GET)
    String sucordView(Model model) {
        model.addAttribute("sucord", orderRepository.findAll());
        return "admin/sucord";
    }

    @RequestMapping(value = "/delOrder", method = RequestMethod.GET)
    String delOrder(Model model, @RequestParam(value = "id") long id) {
        orderRepository.delete(id);
        return "admin/order";
    }

    @RequestMapping(value = "/statusOrder", method = RequestMethod.GET)
    String statusOrder(Model model, @RequestParam(value = "id") long id) {
        Orderb orderb = orderRepository.findOne(id);
        orderb.setStatus("APPLIED");
        orderRepository.save(orderb);
        return "admin/order";
    }

    @RequestMapping(value = "/editCommBook", method = RequestMethod.GET)
    String editCommentBook(Model model, @RequestParam(value = "idBook") long idBook, @RequestParam(value = "id") long id) {
        Book book = bookRepository.findOne(idBook);
        for(BookComment comment : book.getComments()) {
            if (comment.getId() == id) {
                book.getComments().remove(comment);
            }
        }
        return "admin/book";
    }

    @RequestMapping(value = "/editCommAuth", method = RequestMethod.GET)
    String editCommentAuthor(Model model, @RequestParam(value = "idAuth") long idAuthor, @RequestParam(value = "id") long id) {
        Author author = authorRepository.findOne(idAuthor);
        for(AuthorComment comment : author.getComments()) {
            if (comment.getId() == id) {
                author.getComments().remove(comment);
            }
        }
        return "admin/book";
    }
}

