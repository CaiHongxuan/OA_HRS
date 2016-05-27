<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">主页</a> <span class="divider">></span></li><li><a href="deptAction!showDeptList">部门管理</a> <span class="divider">></span></li><li class="active">查询部门信息列表</li>
                </ul>
                <ul class="buttons">
                    <li>
                        <a href="#" class="link_bcPopupSearch"><span class="icon-search"></span><span class="text">Search</span></a>
                        <div id="bcPopupSearch" class="popup">
                        	<div class="head clearfix">
                                <div class="arrow"></div>
                                <span class="isw-zoom"></span>
                                <span class="name">查询部门信息</span>
                            </div>
                        	<form>                           
                                <div class="row-form clearfix">
                                    <div class="span1">部门编号:</div>
                                    <div class="span2">
                                        <input name="dept_id" type="text" placeholder="部门编号">
                                    </div>
                                </div>   
                                <div class="row-form clearfix">
                                    <div class="span1">部门名称:</div>
                                    <div class="span2">
                                        <select name="deptName">
                                            <option value="0">策划部</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span1">部门类型:</div>
                                    <div class="span2">
                                        <select name="deptType" value="">
                                                <option value="0">公司</option>
                                                <option value="1">部门</option>
                                        </select>
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
                    <h1>部门信息<small>And 查询</small></h1>
                </div> 
                <div class="row-fluid">
                    <div class="span12">                    
                        <div class="head clearfix">
                            <div class="isw-grid"></div>
                            <h1>部门信息</h1>      
                            <ul class="buttons">
                                <li><a href="#" class="isw-download"></a></li>                                                        
                                <li><a href="#" class="isw-attachment"></a></li>
                                <li>
                                    <a href="#" class="isw-settings"></a>
                                    <ul class="dd-list">
                                        <li><a href="page/createDept.jsp"><span class="isw-plus"></span>创建</a></li>
                                        <li><a href="page/updateDeptInfo.jsp"><span class="isw-edit"></span>编辑</a></li>
                                        <li><a href="deptAction!delDept"><span class="isw-delete"></span>删除</a></li>
                                    </ul>
                                </li>
                            </ul>                        
                        </div>
                        <div class="block-fluid">
                            <table cellpadding="0" cellspacing="0" width="100%" class="table">
                                <thead>
                                    <tr> 
                                        <th><input type="checkbox" name="checkall"/></th>
                                        <th width="5%">编号</th>
                                        <th width="8%">名称</th>
                                        <th width="8%">类型</th>
                                        <th width="10%">电话</th>
                                        <th width="10%">传真</th>
                                        <th width="8%">上级部门</th> 
                                        <th width="10%">成立日期</th>
                                        <th width="25%">描述</th> 
                                        <th width="21%">操作</th>                                    
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items = "${requestScope.depts}" var="dept">
                                    <tr>
                                        <th><input type="checkbox" name="checkbox"/></th>
                                        <td>${dept.deptId }</td>
                                        <td>${dept.deptName }</td>
                                        <td>${dept.type }</td>
                                        <td>${dept.tel }</td>  
                                        <td>${dept.fax }</td>
                                        <td>${dept.dept.deptName }</td>
                                        <td>${fn:substring(dept.setupDate,0,10) }</td>
                                        <td>${dept.describe }</td>                     
                                        <td>
	                                		<button class="btn" type="button">详情</button>
	                                		<a href="deptAction!delDept?dept.deptId=${dept.deptId }"><button class="btn btn-danger" type="button">删除</button></a>
	                                	</td>                                    
                                    </tr>
                                </c:forEach>
                                	<tr>
                                		<th></th>
                                		<td colspan="9">总计有部门：${depts.size() }个</td>
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