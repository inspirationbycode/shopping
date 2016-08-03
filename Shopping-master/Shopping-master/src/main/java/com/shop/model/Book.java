package com.shop.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.*;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Book {
    private long id;
    private String name;
    private String description;
    private Date date;
    private String url;
    private Price price;
    private Set<Author> authors = new HashSet<>();
    private Set<BookComment> comments = new HashSet<>();
    private Set<BookMark> marks = new HashSet<>();
    private Set<Genre> genres = new HashSet<>();
    private Set<Series> series = new HashSet<>();

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
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
    @Column(name = "date")
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @OneToOne(cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
    public Price getPrice() {
        return price;
    }

    public void setPrice(Price price) {
        this.price = price;
    }

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "books")
    @JsonManagedReference
    public Set<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(Set<Author> authors) {
        this.authors = authors;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name = "bk_com_link", joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "comment_id"))
    public Set<BookComment> getComments() {
        return comments;
    }

    public void setComments(Set<BookComment> comments) {
        this.comments = comments;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name = "bk_mrk_link", joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "mark_id"))
    public Set<BookMark> getMarks() {
        return marks;
    }

    public void setMarks(Set<BookMark> marks) {
        this.marks = marks;
    }

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "bk_gr_link", joinColumns = {
            @JoinColumn(name = "genre_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "book_id",
                    nullable = false, updatable = false) })
    @JsonManagedReference
    public Set<Genre> getGenres() {
        return genres;
    }

    public void setGenres(Set<Genre> genres) {
        this.genres = genres;
    }

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "bk_sr_link", joinColumns = {
            @JoinColumn(name = "series_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "book_id",
                    nullable = false, updatable = false) })
    @JsonManagedReference
    public Set<Series> getSeries() {
        return series;
    }

    public void setSeries(Set<Series> series) {
        this.series = series;
    }
}
