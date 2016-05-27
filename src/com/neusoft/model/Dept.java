package com.neusoft.model;
// default package

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Dept entity. @author MyEclipse Persistence Tools
 */

public class Dept  implements java.io.Serializable {


    // Fields    

     private Integer deptId;
     private Dept dept;
     private String deptName;
     private String type;
     private String tel;
     private String fax;
     private String setupDate;
     private String describe;
     private Set depts = new HashSet(0);
     
     /*private Set emps = new HashSet(0);*/


    // Constructors

    /*public Set getEmps() {
		return emps;
	}

	public void setEmps(Set emps) {
		this.emps = emps;
	}
*/
	/** default constructor */
    public Dept() {
    }

	/** minimal constructor */
    public Dept(String deptName, String type, String tel, String setupDate) {
        this.deptName = deptName;
        this.type = type;
        this.tel = tel;
        this.setupDate = setupDate;
    }
    
    /** full constructor */
    public Dept(Dept dept, String deptName, String type, String tel, String fax, String setupDate, String describe, Set depts) {
        this.dept = dept;
        this.deptName = deptName;
        this.type = type;
        this.tel = tel;
        this.fax = fax;
        this.setupDate = setupDate;
        this.describe = describe;
        this.depts = depts;
    }

   
    // Property accessors

    public Integer getDeptId() {
        return this.deptId;
    }
    
    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Dept getDept() {
        return this.dept;
    }
    
    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public String getDeptName() {
        return this.deptName;
    }
    
    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    public String getTel() {
        return this.tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return this.fax;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getSetupDate() {
        return this.setupDate;
    }
    
    public void setSetupDate(String setupDate) {
        this.setupDate = setupDate;
    }

    public String getDescribe() {
        return this.describe;
    }
    
    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Set getDepts() {
        return this.depts;
    }
    
    public void setDepts(Set depts) {
        this.depts = depts;
    }

}