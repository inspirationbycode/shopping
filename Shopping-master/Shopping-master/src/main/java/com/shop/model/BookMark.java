package com.shop.model;

import javax.persistence.*;

@Entity
@Table(name = "book_mark")
public class BookMark {
    private long id;
    private Integer mark;

    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "mark")
    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}
