<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">岗位管理</a> <span class="divider">></span></li><li class="active">删除岗位</li>
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
                    <h1>删除岗位 <!-- <small>管理</small> --></h1>
                </div>
                <div class="row-fluid">
                    <div class="span4"></div>
                    <div class="span4">
                        <div class="block-fluid nm without-head">
                            <div class="toolbar nopadding-toolbar clear clearfix">
                                <h4>删除岗位</h4>
                            </div>
                           	<form action="postAction!delPost">
	                            <div class="row-form clearfix">
	                                <div class="span3">岗位编号:</div>
	                                <div class="span9">
	                                    <input name="post.postId" type="text" placeholder="岗位编号">
	                                </div>
	                            </div>                              
	                            <div class="row-form clearfix">
	                                <div class="span3">岗位名称:</div>
	                                <div class="span9">
	                                    <input name="post.name" type="text" placeholder="岗位名称">
	                                </div>
	                            </div>
	                            <div class="footer tar">
	                                <button class="btn btn-success" id="faqSearch" type="submit">删除</button>
	                            </div> 
	                         </form>
                        </div>    
                    </div>
                    <div class="span4"></div>
                </div>
            </div>

        </div>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>