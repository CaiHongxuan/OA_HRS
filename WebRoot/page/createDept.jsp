<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">主页</a> <span class="divider">></span></li><li><a href="deptAction!showDeptList">部门管理</a> <span class="divider">></span></li><li class="active">新建部门</li>
                </ul>
                <ul class="buttons">              
                    <li>
                        <a href="#" class="link_bcPopupSearch"><span class="icon-search"></span><span class="text">Search</span></a>
                        <div id="bcPopupSearch" class="popup">
                            <div class="head clearfix">
                                <div class="arrow"></div>
                                <span class="isw-zoom"></span>
                                <span class="name">Search</span>
                            </div>
                            <div class="body search">
                                <input type="text" placeholder="Some text for search..." name="search"/>
                            </div>
                            <div class="footer">
                                <button class="btn" type="button">Search</button>
                                <button class="btn btn-danger link_bcPopupSearch" type="button">Close</button>
                            </div>
                        </div> 
                    </li>
                </ul>
            </div>
            
            <div class="workplace">

                <div class="page-header">
                    <h1>新建部门</h1>
                </div>

                <div class="row-fluid">
                    <div class="span3"></div>
                    <div class="span6">
                        <div class="block-fluid nm without-head">
                        <form action="deptAction!saveDept">
	                            <div class="toolbar nopadding-toolbar clear clearfix">
	                                <h4>新建部门</h4>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span3">部门编号:</div>
	                                <div class="span9">
	                                    <input name="dept.deptId" type="text" placeholder="部门编号">
	                                </div>
	                            </div>             
	                            <div class="row-form clearfix">
	                                <div class="span3">部门名称:</div>
	                                <div class="span9">
	                                    <input name="dept.deptName" type="text" placeholder="部门名称">
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span3">部门类型:</div>
	                                <div class="span9">
	                                    <select name="dept.type">
	                                        <option value="0">公司</option>
	                                        <option value="1">部门</option>
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span3">部门电话:</div>
	                                <div class="span9">
	                                    <input name="dept.tel" type="text" placeholder="部门电话">
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span3">部门传真(可不填):</div>
	                                <div class="span9">
	                                    <input name="dept.fax" type="text" placeholder="部门传真">
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span3">上级部门(可不填):</div>
	                                <div class="span9">
	                                    <select name="dept.dept.deptId">
	                                    	<option></option>
	                                        <option value="0">公司</option>
	                                        <option value="1">部门</option>
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="row-form clearfix">
	                                <div class="span3">部门描述:</div>
	                                <div class="span9">
	                                    <textarea name="dept.describe" placeholder="部门描述"></textarea>
	                                </div>
	                            </div>
	                            <div class="footer tar">
	                                <button class="btn btn-success" id="faqSearch" type="submit">创建</button>
	                            </div> 
	                         </form>
                        </div>    
                    </div>
                    <div class="span3"></div>
                </div>
            </div>

        </div>
</body>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>