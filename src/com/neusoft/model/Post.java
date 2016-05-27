package com.neusoft.model;
// default package



/**
 * Post entity. @author MyEclipse Persistence Tools
 */

public class Post  implements java.io.Serializable {


    // Fields    

     private Integer postId;
     private String name;
     private String type;
     private Integer quota;


    // Constructors

    /** default constructor */
    public Post() {
    }

	/** minimal constructor */
    public Post(String name, String type) {
        this.name = name;
        this.type = type;
    }
    
    /** full constructor */
    public Post(String name, String type, Integer quota) {
        this.name = name;
        this.type = type;
        this.quota = quota;
    }

   
    // Property accessors

    public Integer getPostId() {
        return this.postId;
    }
    
    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    public Integer getQuota() {
        return this.quota;
    }
    
    public void setQuota(Integer quota) {
        this.quota = quota;
    }
   








}