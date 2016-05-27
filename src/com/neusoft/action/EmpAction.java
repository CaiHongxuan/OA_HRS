package com.neusoft.action;

import java.util.List;

import com.neusoft.model.Emp;
import com.neusoft.service.EmpService;

public class EmpAction {
	
	private Integer empId;
	private List<Emp> emps;
	private Integer deptno;
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getDeptno() {
		return deptno;
	}
	public void setDeptno(Integer deptno) {
		this.deptno = deptno;
	}
	public List<Emp> getEmps() {
		return emps;
	}
	public void setEmps(List<Emp> emps) {
		this.emps = emps;
	}
	
	private Emp emp;	
	public Emp getEmp() {
		return emp;
	}
	public void setEmp(Emp emp) {
		this.emp = emp;
	}

	private EmpService empService;	
	public EmpService getEmpService() {
		return empService;
	}
	public void setEmpService(EmpService empService) {
		this.empService = empService;
	}
	
	/**
	 * 查询某一员工信息
	 * @return
	 */
	public String showEmpInfo(){
		emp =  empService.queryEmp(empId);
		return "showEmpInfo";
	}
	/**
	 * 查询员工列表
	 * @return
	 */
	public String showEmpList(){
		emps = empService.queryEmps();
		return "showEmpList";
	}
	
	private String errorMess;
	public String getErrorMess() {
		return errorMess;
	}
	public void setErrorMess(String errorMess) {
		this.errorMess = errorMess;
	}
	
	/**
	 * 删除员工
	 * @return
	 */
	public String delEmp(){
		try {
			empService.removeEmp(emp.getEmpId());
		} catch (Exception e) {
			errorMess="删除出错！";
			e.printStackTrace();
		}
		return showEmpList();
	}
	
	/**
	 * 保存员工
	 * @return
	 */
	public String saveEmp(){
		empService.saveEmp(emp);
		return "success";
	}
	
}
