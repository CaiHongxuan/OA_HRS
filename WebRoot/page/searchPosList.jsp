<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">岗位管理</a> <span class="divider">></span></li><li class="active">查询岗位信息列表</li>
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
                    <h1>岗位信息<small>And 查询</small></h1>
                </div> 
                <div class="row-fluid">
                    <div class="span8">                    
                        <div class="head clearfix">
                            <div class="isw-grid"></div>
                            <h1>岗位信息</h1>      
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
                                        <th width="20%">岗位编号</th>
                                        <th width="20%">岗位名称</th>
                                        <th width="20%">岗位类型</th>
                                        <th width="20%">岗位编制</th> 
                                        <th width="20%">操作</th>                                    
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${requestScope.posts }" var="post">
                                    <tr>
                                        <th><input type="checkbox" name="checkbox"/></th>
                                        <td>${post.postId }</td>
                                        <td>${post.name }</td>
                                        <td>${post.type }</td>
                                        <td>${post.quota }</td>                       
                                        <td>
	                                		<button class="btn" type="button">详情</button>
	                                		<a href="postAction!delPost?post.postId=${post.postId }"><button class="btn btn-danger" type="button">删除</button></a>
	                                	</td>                                  
                                    </tr>
                                </c:forEach>
                                	<tr>
                                		<th></th>
                                		<td colspan="5">总计有岗位：${posts.size() }个</td>
                                	</tr> 
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="span4">                         
                        <div class="block-fluid nm without-head">
                                <div class="toolbar nopadding-toolbar clear clearfix">
                                    <h4>查询岗位信息</h4>
                                </div>                                
                                <div class="row-form clearfix">
                                    <div class="span3">岗位编号:</div>
                                    <div class="span9">                                    
                                        <input type="text" placeholder="岗位编号">
                                    </div>
                                </div>   
                                <div class="row-form clearfix">
                                    <div class="span3">岗位名称:</div>
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
                                    <div class="span3">岗位类型:</div>
                                    <div class="span7">
                                        <select name="select">
                                                <option value="0">管理</option>
                                                <option value="1">技术</option>
                                                <option value="2">营销</option>
                                                <option value="3">市场</option>
                                        </select>
                                    </div>
                                </div>                            
                                <!-- <div class="row-form clearfix">
                                    <div class="span5">岗位编制（可不填）:</div>
                                    <div class="span7">                                    
                                        <input type="text" placeholder="岗位编制">
                                    </div>
                                </div>    -->
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