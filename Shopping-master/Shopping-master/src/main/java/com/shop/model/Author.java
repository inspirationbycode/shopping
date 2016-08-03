package com.shop.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Author {
    private long id;
    private String firstName;
    private String lastName;
    private String description;
    private String url;
    private Set<Book> books = new HashSet<>();
    private Set<AuthorComment> comments = new HashSet<>();
    private Set<AuthorMark> marks = new HashSet<>();
    private Set<Genre> genres = new HashSet<>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "firstname")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "lastname")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastname) {
        this.lastName = lastname;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "bk_aut_link", joinColumns = {
            @JoinColumn(name = "author_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "book_id",
                    nullable = false, updatable = false) })
    @JsonBackReference
    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name = "aut_com_link", joinColumns = @JoinColumn(name = "author_id"),
            inverseJoinColumns = @JoinColumn(name = "comment_id"))
    public Set<AuthorComment> getComments() {
        return comments;
    }

    public void setComments(Set<AuthorComment> comments) {
        this.comments = comments;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name = "aut_mrk_link", joinColumns = @JoinColumn(name = "author_id"),
            inverseJoinColumns = @JoinColumn(name = "mark_id"))
    public Set<AuthorMark> getMarks() {
        return marks;
    }

    public void setMarks(Set<AuthorMark> marks) {
        this.marks = marks;
    }

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "aut_gr_link", joinColumns = {
            @JoinColumn(name = "author_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "genre_id",
                    nullable = false, updatable = false) })
    @JsonManagedReference
    public Set<Genre> getGenres() {
        return genres;
    }

    public void setGenres(Set<Genre> genres) {
        this.genres = genres;
    }
}
