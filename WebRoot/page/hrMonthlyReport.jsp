<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">报表管理</a> <span class="divider">></span></li><li class="active">人事月报</li>
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
                    <h1>人事月报<small>And 查询</small></h1>
                </div> 
                <div class="row-fluid">
                    <div class="span8">                    
                        <div class="head clearfix">
                            <div class="isw-grid"></div>
                            <h1>某年某月人事月报</h1>      
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
                                        <th rowspan="2">部门名称</th>
                                        <th colspan="6">人数统计</th>
                                        <th colspan="4">学历统计</th>
                                    </tr>
                                    <tr>
                                        <th>月初人数</th>
                                        <th>月末人数</th>
                                        <th>本月新入职</th>
                                        <th>本月离职</th>
                                        <th>本月调入</th>
                                        <th>本月调出</th>
                                        <th>研究生</th>
                                        <th>本科</th>
                                        <th>大专</th>
                                        <th>高中及以下</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>市场部</td>
                                        <td>101</td>
                                        <td>212</td>
                                        <td>11</td>
                                        <td>32</td>            
                                        <td>20</td>
                                        <td>54</td> 
                                        <td>44</td>
                                        <td>121</td>            
                                        <td>22</td>
                                        <td>42</td>                                    
                                    </tr>
                                    <tr>
                                        <td>研发部</td>
                                        <td>10</td>
                                        <td>75</td>
                                        <td>22</td>
                                        <td>75</td>            
                                        <td>15</td>
                                        <td>21</td> 
                                        <td>453</td>
                                        <td>46</td>            
                                        <td>63</td>
                                        <td>123</td>                                     
                                    </tr>                     
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="span4">                         
                        <div class="block-fluid nm without-head">
                                <div class="toolbar nopadding-toolbar clear clearfix">
                                    <h4>查询人事月报</h4>
                                </div>                                
                                <div class="row-form clearfix">
                                    <div class="span3">选择月份:</div>
                                    <div class="span9">                                    
                                        <input type="text" placeholder="选择月份">
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
<style type="text/css">
     .table thead th{
        text-align: center;
        vertical-align:middle;"
    }
	</style>
<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>