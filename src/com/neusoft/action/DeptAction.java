package com.neusoft.action;

import java.util.List;

import com.neusoft.model.Dept;
import com.neusoft.service.DeptService;
import com.opensymphony.xwork2.ActionSupport;

public class DeptAction extends ActionSupport{
	private Integer dept_id;
	private Dept dept;
	private List<Dept> depts;
	
	public Integer getDept_id() {
		return dept_id;
	}
	public void setDept_id(Integer dept_id) {
		this.dept_id = dept_id;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	public List<Dept> getDepts() {
		return depts;
	}
	public void setDepts(List<Dept> depts) {
		this.depts = depts;
	}
	
	private DeptService deptService;
	public DeptService getDeptService() {
		return deptService;
	}
	public void setDeptService(DeptService deptService) {
		this.deptService = deptService;
	}
	
	private String errorMess;	
	public String getErrorMess() {
		return errorMess;
	}
	public void setErrorMess(String errorMess) {
		this.errorMess = errorMess;
	}
	
	/**
	 * 查询部门信息
	 * @return
	 */
	public String showDeptInfo(){
		dept = deptService.queryDept(dept.getDeptId());
		return "showDeptInfo";
	}
	
	/**
	 * 查询部门列表
	 * @return
	 */
	public String showDeptList(){
		depts = deptService.queryDepts();
		return "showDeptList";
	}
	
	/**
	 * 保存部门
	 * @param dept
	 * @return
	 */
	public String saveDept(){
		deptService.saveDept(dept);
		return "success";
	}
	
	/**
	 * 删除部门
	 * @return
	 */
	public String delDept(){
		try {
			deptService.removeDept(dept.getDeptId());
		} catch (Exception e) {
			errorMess="删除错误！";
			e.printStackTrace();
		}
		return showDeptList();
	}
}
