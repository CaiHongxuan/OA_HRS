package com.neusoft.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.neusoft.model.Dept;

public class DeptDao {
	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	/**
	 * 查询dept部门信息列表
	 * @return
	 */
	public List<Dept> selectDepts(){
		String hql = "from Dept";
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
	
	/**
	 * 查询某个部门
	 * @param dept_id
	 * @return
	 */
	public Dept selectDept(Integer dept_id) {
		return (Dept)sessionFactory.getCurrentSession().get(Dept.class, dept_id);
	}

	/**
	 * 创建部门
	 * @param dept
	 */
	public void insertDept(Dept d){
		try
		{
			sessionFactory.getCurrentSession().save(d);
			return;
		}
		catch(RuntimeException e){
			e.printStackTrace();
			return;
		}
	}
	
	/**
	 * 删除部门
	 * @param d
	 */
	public void deleteDept(Dept d){
		sessionFactory.getCurrentSession().delete(d);
	}

}
