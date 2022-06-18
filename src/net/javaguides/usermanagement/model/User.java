package net.javaguides.usermanagement.model;

import java.io.InputStream;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */
public class User {
    protected int id;
    protected String name;
    protected String email;
    protected String country;
    protected InputStream file;
    private String base64Image;
    public User() {}

    public User(String name, String email, String country, InputStream file) {
        super();
        this.name = name;
        this.email = email;
        this.country = country;
        this.file= file;
    }

    public User(int id, String name, String email, String country, InputStream file) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
        this.file= file;
    }
    public User(int id, String name, String email, String country, String base64Image) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
        this.base64Image =base64Image;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
    public InputStream getFileStream() {
        return file;
    }
    public String getBase64Image() {
        return base64Image;
    }
 
    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }
    
}