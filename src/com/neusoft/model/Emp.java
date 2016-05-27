package com.neusoft.model;
// default package

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Emp entity. @author MyEclipse Persistence Tools
 */

public class Emp  implements java.io.Serializable {


    // Fields    

     private Integer empId;
     private String name;
     private String sex;
     private Date birthday;
     private String idNo;
     private String deptId;
     private String postId;
     private Date inDate;
     private Date startDate;
     private String status;
     private String originate;
     private String politicalStatus;
     private String nations;
     private String nativePlace;
     private String tel;
     private String email;
     private Float height;
     private String bloodType;
     private String marriage;
     private String homeplace;
     private String accountPlace;
     private String topDegree;
     private String topAcademic;
     private String graSchool;
     private String major;
     private Date graDate;
     private Set empLefts = new HashSet(0);
     
     /*private Dept dept;*/


    // Constructors

   /* public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}*/

	/** default constructor */
    public Emp() {
    }

	/** minimal constructor */
    public Emp(String name, String sex, Date birthday, String idNo, String deptId, String postId, Date inDate, Date startDate, String status, String originate) {
        this.name = name;
        this.sex = sex;
        this.birthday = birthday;
        this.idNo = idNo;
        this.deptId = deptId;
        this.postId = postId;
        this.inDate = inDate;
        this.startDate = startDate;
        this.status = status;
        this.originate = originate;
    }
    
    /** full constructor */
    public Emp(String name, String sex, Date birthday, String idNo, String deptId, String postId, Date inDate, Date startDate, String status, String originate, String politicalStatus, String nations, String nativePlace, String tel, String email, Float height, String bloodType, String marriage, String homeplace, String accountPlace, String topDegree, String topAcademic, String graSchool, String major, Date graDate, Set empLefts) {
        this.name = name;
        this.sex = sex;
        this.birthday = birthday;
        this.idNo = idNo;
        this.deptId = deptId;
        this.postId = postId;
        this.inDate = inDate;
        this.startDate = startDate;
        this.status = status;
        this.originate = originate;
        this.politicalStatus = politicalStatus;
        this.nations = nations;
        this.nativePlace = nativePlace;
        this.tel = tel;
        this.email = email;
        this.height = height;
        this.bloodType = bloodType;
        this.marriage = marriage;
        this.homeplace = homeplace;
        this.accountPlace = accountPlace;
        this.topDegree = topDegree;
        this.topAcademic = topAcademic;
        this.graSchool = graSchool;
        this.major = major;
        this.graDate = graDate;
        this.empLefts = empLefts;
    }

   
    // Property accessors

    public Integer getEmpId() {
        return this.empId;
    }
    
    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getIdNo() {
        return this.idNo;
    }
    
    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    public String getDeptId() {
        return this.deptId;
    }
    
    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    public String getPostId() {
        return this.postId;
    }
    
    public void setPostId(String postId) {
        this.postId = postId;
    }

    public Date getInDate() {
        return this.inDate;
    }
    
    public void setInDate(Date inDate) {
        this.inDate = inDate;
    }

    public Date getStartDate() {
        return this.startDate;
    }
    
    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }

    public String getOriginate() {
        return this.originate;
    }
    
    public void setOriginate(String originate) {
        this.originate = originate;
    }

    public String getPoliticalStatus() {
        return this.politicalStatus;
    }
    
    public void setPoliticalStatus(String politicalStatus) {
        this.politicalStatus = politicalStatus;
    }

    public String getNations() {
        return this.nations;
    }
    
    public void setNations(String nations) {
        this.nations = nations;
    }

    public String getNativePlace() {
        return this.nativePlace;
    }
    
    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace;
    }

    public String getTel() {
        return this.tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public Float getHeight() {
        return this.height;
    }
    
    public void setHeight(Float height) {
        this.height = height;
    }

    public String getBloodType() {
        return this.bloodType;
    }
    
    public void setBloodType(String bloodType) {
        this.bloodType = bloodType;
    }

    public String getMarriage() {
        return this.marriage;
    }
    
    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public String getHomeplace() {
        return this.homeplace;
    }
    
    public void setHomeplace(String homeplace) {
        this.homeplace = homeplace;
    }

    public String getAccountPlace() {
        return this.accountPlace;
    }
    
    public void setAccountPlace(String accountPlace) {
        this.accountPlace = accountPlace;
    }

    public String getTopDegree() {
        return this.topDegree;
    }
    
    public void setTopDegree(String topDegree) {
        this.topDegree = topDegree;
    }

    public String getTopAcademic() {
        return this.topAcademic;
    }
    
    public void setTopAcademic(String topAcademic) {
        this.topAcademic = topAcademic;
    }

    public String getGraSchool() {
        return this.graSchool;
    }
    
    public void setGraSchool(String graSchool) {
        this.graSchool = graSchool;
    }

    public String getMajor() {
        return this.major;
    }
    
    public void setMajor(String major) {
        this.major = major;
    }

    public Date getGraDate() {
        return this.graDate;
    }
    
    public void setGraDate(Date graDate) {
        this.graDate = graDate;
    }

    public Set getEmpLefts() {
        return this.empLefts;
    }
    
    public void setEmpLefts(Set empLefts) {
        this.empLefts = empLefts;
    }
   








}