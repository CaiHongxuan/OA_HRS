package com.neusoft.service;

import java.util.List;

import com.neusoft.dao.EmpDAO;
import com.neusoft.model.Emp;

public class EmpService {
	
	private EmpDAO empDao;
	public EmpDAO getEmpDao() {
		return empDao;
	}
	public void setEmpDao(EmpDAO empDao) {
		this.empDao = empDao;
	}
	
	/**
	 * 查询某个员工信息
	 * @param empId
	 * @return
	 */
	public Emp queryEmp(Integer EmpId){
		return empDao.findById(EmpId);
	}
	
	/**
	 * 查询岗位列表
	 * @return
	 */
	public List<Emp> queryEmps(){
		return empDao.findAll();
	}
	
	/**
	 * 保存岗位
	 * @param emp
	 */
	public void saveEmp(Emp emp){
		empDao.save(emp);
	}
	
	/**
	 * 删除岗位
	 * @param empId
	 */
	public void removeEmp(Integer empId){
		empDao.delete(empDao.findById(empId));
	}

}
