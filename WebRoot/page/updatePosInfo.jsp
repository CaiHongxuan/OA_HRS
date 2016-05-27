<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">岗位管理</a> <span class="divider">></span></li><li class="active">修改岗位信息</li>
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
                    <h1>修改岗位信息 <!-- <small>管理</small> --></h1>
                </div>
                <div class="row-fluid">
                    <div class="span4"></div>
                    <div class="span4">
                        <div class="block-fluid nm without-head">
                            <div class="toolbar nopadding-toolbar clear clearfix">
                                <h4>修改岗位信息</h4>
                            </div>
                            <div class="row-form clearfix">
                                <div class="span3">岗位编号:</div>
                                <div class="span9">岗位编号<!-- <input type="text" placeholder="岗位编号" disabled="disabled"> --></div>
                            </div>                              
                            <div class="row-form clearfix">
                                <div class="span3">岗位名称:</div>
                                <div class="span9">
                                    <input type="text" placeholder="岗位名称">
                                </div>
                            </div>
                            <div class="row-form clearfix">
                                <div class="span3">岗位类型:</div>
                                <div class="span9">
                                    <select name="select">
                                            <option value="0">管理</option>
                                            <option value="1">技术</option>
                                            <option value="2">营销</option>
                                            <option value="3">市场</option>
                                    </select>
                                </div>
                            </div>
                            <div class="footer tar">
                                <button class="btn btn-success" id="faqSearch" type="button">保存</button>
                            </div> 
                        </div>    
                    </div>
                    <div class="span4"></div>
                </div>
            </div>

        </div>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>