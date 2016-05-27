package com.neusoft.service;

import java.util.List;

import com.neusoft.dao.DeptDao;
import com.neusoft.model.Dept;

public class DeptService {
	private DeptDao deptDao;
	public DeptDao getDeptDao() {
		return deptDao;
	}
	public void setDeptDao(DeptDao deptDao) {
		this.deptDao = deptDao;
	}
	
	/**
	 * 查询部门信息
	 * @param dept_id
	 * @return
	 */
	public Dept queryDept(Integer dept_id){
		return deptDao.selectDept(dept_id);
	}
	
	/**
	 * 查询部门列表
	 * @return
	 */
	public List<Dept> queryDepts(){
		return deptDao.selectDepts();
	}
	
	/**
	 * 创建部门
	 * @param dept
	 */
	public void saveDept(Dept dept){
		deptDao.insertDept(dept);
	}
	
	/**
	 * 删除部门
	 * @param deptId
	 */
	public void removeDept(Integer deptId){
		Dept dept = deptDao.selectDept(deptId);
		deptDao.deleteDept(dept);
	}
	
}
