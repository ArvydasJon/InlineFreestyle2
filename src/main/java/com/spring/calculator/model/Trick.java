package com.spring.calculator.model;

//import jakarta.validation.constraints.*;

import javax.persistence.*;
import javax.validation.constraints.*;
@Entity
@Table(name = "tricks")
public class Trick {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "trick_name")
    @NotEmpty(message = "Field cannot be empty")
    private String trick_name;

    @Column(name = "trick_type")
    private String trick_type;

    @Column(name = "trick_level")
    private char trick_level;

    @Column(name = "trick_score")
    @Min(value = 0, message = "Number cannot be negative")
    private int trick_score;

    @Column(name = "official_score")
    private boolean official_score;

    @Column(name = "trick_name2")
    private String trick_name2;

    @Column(name = "link")
    private String link;


    public Trick() {
    }

    public Trick(int id, String trick_name, String trick_type, char trick_level, int trick_score, boolean official_score, String trick_name2, String link) {
        this.id = id;
        this.trick_name = trick_name;
        this.trick_type = trick_type;
        this.trick_level = trick_level;
        this.trick_score = trick_score;
        this.official_score = official_score;
        this.trick_name2 = trick_name2;
        this.link = link;
    }

    public Trick(String trick_name, String trick_type, char trick_level, int trick_score, boolean official_score, String trick_name2, String link) {
        this.trick_name = trick_name;
        this.trick_type = trick_type;
        this.trick_level = trick_level;
        this.trick_score = trick_score;
        this.official_score = official_score;
        this.trick_name2 = trick_name2;
        this.link = link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTrick_name() {
        return trick_name;
    }

    public void setTrick_name(String trick_name) {
        this.trick_name = trick_name;
    }

    public String getTrick_type() {
        return trick_type;
    }

    public void setTrick_type(String trick_type) {
        this.trick_type = trick_type;
    }

    public char getTrick_level() {
        return trick_level;
    }

    public void setTrick_level(char trick_level) {
        this.trick_level = trick_level;
    }

    public int getTrick_score() {
        return trick_score;
    }

    public void setTrick_score(int trick_score) {
        this.trick_score = trick_score;
    }

    public boolean isOfficial_score() {
        return official_score;
    }

    public void setOfficial_score(boolean official_score) {
        this.official_score = official_score;
    }

    public String getTrick_name2() {
        return trick_name2;
    }

    public void setTrick_name2(String trick_name2) {
        this.trick_name2 = trick_name2;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "Trick{" +
                "id=" + id +
                ", trick_name='" + trick_name + '\'' +
                ", trick_type='" + trick_type + '\'' +
                ", trick_level=" + trick_level +
                ", trick_score=" + trick_score +
                ", official_score=" + official_score +
                ", trick_name2='" + trick_name2 + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
