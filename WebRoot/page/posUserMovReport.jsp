<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">报表管理</a> <span class="divider">></span></li><li class="active">岗位调动员工报表</li>
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
                    <h1>岗位调动员工报表<small>And 查询</small></h1>
                </div> 
                <div class="row-fluid">
                    <div class="span8">                    
                        <div class="head clearfix">
                            <div class="isw-grid"></div>
                            <h1>某年某月至某年某月新聘员工报表</h1>      
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
                                        <th width="15%">序号</th>
                                        <th width="15%">原岗位名称</th>
                                        <th width="15%">新岗位名称</th>
                                        <th width="15%">姓名</th>
                                        <th width="10%">性别</th> 
                                        <th width="15%">调动日期</th>
                                        <th width="15%">调动原因</th>                                    
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>101</td>
                                        <td>市场部</td>
                                        <td>研发部</td>
                                        <td>闪电快打</td>
                                        <td>男</td>            
                                        <td>2015.12.12</td>
                                        <td>博士后</td>                                    
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>市场部</td>
                                        <td>研发部</td>
                                        <td>闪电快打</td>
                                        <td>男</td>            
                                        <td>2015.12.12</td>
                                        <td>博士后</td>                                     
                                    </tr>                     
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="span4">                         
                        <div class="block-fluid nm without-head">
                                <div class="toolbar nopadding-toolbar clear clearfix">
                                    <h4>查询岗位调动员工报表</h4>
                                </div>                                
                                <div class="row-form clearfix">
                                    <div class="span3">开始日期:</div>
                                    <div class="span9">                                    
                                        <input type="text" placeholder="开始日期">
                                    </div>
                                </div>
                                <div class="row-form clearfix">
                                    <div class="span3">结束日期:</div>
                                    <div class="span9">                                    
                                        <input type="text" placeholder="结束日期">
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