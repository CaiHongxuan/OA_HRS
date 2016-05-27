<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">员工离职管理</a> <span class="divider">></span></li><li class="active">查询员工列表</li>
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
                    <h1>员工列表<small>And 查询</small></h1>
                </div> 
                <div class="row-fluid">
                    <div class="span8">                    
                        <div class="head clearfix">
                            <div class="isw-grid"></div>
                            <h1>部门名称员工列表</h1>      
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
                                        <th width="15%">员工编号</th>
                                        <th width="20%">员工姓名</th>
                                        <th width="20%">部门名称</th>
                                        <th width="20%">岗位名称</th>
                                        <th width="25%">联系电话</th>                                    
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th><input type="checkbox" name="checkbox"/></th>
                                        <td>101</td>
                                        <td>Dmitry</td>
                                        <td>dmitry@do</td>
                                        <td>dmitry@do</td>
                                        <td>+98(765)432-10-98</td>                                    
                                    </tr>
                                    <tr>
                                        <th><input type="checkbox" name="checkbox"/></th>
                                        <td>102</td>
                                        <td>Alex</td>
                                        <td>alex@dom</td>
                                        <td>alex@dom</td>
                                        <td>+98(765)432-10-99</td>                                    
                                    </tr>                     
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="span4">                         
                        <div class="block-fluid nm without-head">
                                <div class="toolbar nopadding-toolbar clear clearfix">
                                    <h4>查询员工</h4>
                                </div>                                
                                <div class="row-form clearfix">
                                    <div class="span3">部门编号:</div>
                                    <div class="span9">                                    
                                        <input type="text" placeholder="部门编号">
                                    </div>
                                </div>   
                                <div class="row-form clearfix">
                                    <div class="span3">部门名称:</div>
                                    <div class="span7">
                                        <select name="select">
                                                <option value="0">市场部</option>
                                                <option value="1">研发部</option>
                                                <option value="2">人事部</option>
                                                <option value="3">财政部</option> 
                                        </select>
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span3">员工编号:</div>
                                    <div class="span9">                                    
                                        <input type="text" placeholder="员工编号">
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span3">员工姓名:</div>
                                    <div class="span9">                          
                                        <input type="text" placeholder="员工姓名">
                                    </div>
                                </div>
                                <div class="footer tar">
                                    <button class="btn btn-success" id="faqSearch" type="button">查找</button>
                                </div>                            
                        </div>
                    </div>                    
                </div> 
            </div>


        </div>

</body>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>