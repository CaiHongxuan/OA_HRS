<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">主页</a> <span class="divider">></span></li><li><a href="deptAction!showDeptList">部门管理</a> <span class="divider">></span></li><li class="active">部门员工列表</li>
                </ul>
                <ul class="buttons">
                    <li>
                        <a href="#" class="link_bcPopupSearch"><span class="icon-search"></span><span class="text">Search</span></a>
                        <div id="bcPopupSearch" class="popup">
                        	<div class="head clearfix">
                                <div class="arrow"></div>
                                <span class="isw-zoom"></span>
                                <span class="name">查询员工信息</span>
                            </div>
                        	<form>  
	                        	<div class="row-form clearfix">
	                                <div class="span1">部门名称:</div>
	                                <div class="span2">
	                                    <select name="select">
	                                        <option value="0">市场部</option>
	                                        <option value="1">研发部</option>
	                                        <option value="2">人事部</option>
	                                        <option value="3">财政部</option> 
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span1">员工编号:</div>
	                                <div class="span2">                                    
	                                    <input type="text" placeholder="员工编号">
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span1">员工姓名:</div>
	                                <div class="span2">                          
	                                    <input type="text" placeholder="员工姓名">
	                                </div>
	                            </div>                     
	                            <div class="footer">
	                                <button class="btn" type="button">查找</button>
	                                <button class="btn btn-danger link_bcPopupSearch" type="button">关闭</button>
	                            </div>
                            </form>   
                        </div> 
                    </li>
                </ul>
            </div>
            
            <div class="workplace">

                <div class="page-header">
                    <h1>部门员工列表<small>And 查询</small></h1>
                </div> 
                <div class="row-fluid">
                    <div class="span12">                    
                        <div class="head clearfix">
                            <div class="isw-grid"></div>
                            <h1>员工列表</h1>      
                            <ul class="buttons">
                                <li><a href="#" class="isw-download"></a></li>                                                        
                                <li><a href="#" class="isw-attachment"></a></li>
                                <li>
                                    <a href="#" class="isw-settings"></a>
                                    <ul class="dd-list">
                                        <li><a href="#"><span class="isw-plus"></span>创建</a></li>
                                        <li><a href="#"><span class="isw-edit"></span>编辑</a></li>
                                        <li><a href="#"><span class="isw-delete"></span>删除</a></li>
                                    </ul>
                                </li>
                            </ul>                        
                        </div>
                        <div class="block-fluid">
                            <table cellpadding="0" cellspacing="0" width="100%" class="table">
                                <thead>
                                    <tr> 
                                        <th><input type="checkbox" name="checkall"/></th>
                                        <th width="5%">员工编号</th>
                                        <th width="8%">姓名</th>
                                        <th width="13%">身份证号</th>
                                        <th width="3%">性别</th>
                                        <th width="10%">生日</th>
                                        <th width="10%">电话</th>
                                        <th width="10%">邮箱</th>
                                        <th width="10%">入职时间</th>
                                        <th width="5%">部门编号</th>
                                        <th width="5%">岗位编号</th>
                                        <th width="21%">操作</th>                                    
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${dept.emps }" var="emp">
                                    <tr>
                                        <th><input type="checkbox" name="checkbox"/></th>
                                        <td>${emp.empId }</td>
                                        <td>${emp.name }</td>
                                        <td>${emp.idNo }</td>
                                        <td>${emp.sex }</td>
                                        <td>${fn:substring(emp.birthday,0,10) }</td>
                                        <td>${emp.dept.tel }</td>  
                                        <td>${emp.dept.mail }</td>
                                        <td>${fn:substring(emp.inDate,0,10) }</td>
                                        <td>${emp.deptId }</td>  
                                        <td>${emp.postId }</td>                   
                                        <td>
	                                		<button class="btn" type="button">详情</button>
	                                		<button class="btn btn-danger" type="button">删除</button>
	                                	</td>                                    
                                    </tr>
                                </c:forEach>
                                	<tr>
                                		<th></th>
                                		<td colspan="9">该部门总计有：${emps.size() }个员工</td>
                                	</tr>                 
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> 
            </div>

        </div>

</body>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>