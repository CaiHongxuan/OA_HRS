<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <div class="content">   

            <div class="breadLine">
                <ul class="breadcrumb">
                    <li><a href="#">主页</a> <span class="divider">></span></li><li><a href="#">入职管理</a> <span class="divider">></span></li><li class="active">普通入职</li>
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
                    <h1>员工入职 <small>信息录入</small></h1>
                </div>  
                
                <div class="row-fluid">

                    <div class="span12">
                        <div class="head clearfix">
                            <h2>普通入职信息填写</h2>
                        </div>
                        <div class="block-fluid">                        

                            <div class="row-form clearfix">
                                <div class="span1">员工编号:</div>
                                <div class="span3"><input type="text" placeholder="员工编号"/></div>
                                <div class="span1">姓名:</div>
                                <div class="span2"><input type="text" placeholder="姓名"/></div>
                                <div class="span1">性别:</div>
                                <div class="span1">
                                    <select name="select">
                                            <option value="0">男</option>
                                            <option value="1">女</option>
                                    </select>
                                </div>
                                <div class="span1">出生日期:</div>
                                <div class="span2"><input type="text" placeholder="出生日期"/></div>
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">身份证号:</div>
                                <div class="span3"><input type="text" placeholder="身份证号"/></div>
                                <div class="span2">部门（可选）:</div>
                                <div class="span2">
                                    <select name="select">
                                        <option value="0">市场部</option>
                                        <option value="1">研发部</option>
                                        <option value="2">人事部</option>
                                        <option value="3">财政部</option> 
                                    </select>
                                </div>                         
                                <div class="span2">岗位（可选）:</div>
                                <div class="span2"><input type="text" placeholder="岗位"/></div>
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">入职日期:</div>
                                <div class="span3"><input type="text" placeholder="入职日期"/></div>        
                                <div class="span2">参加工作日期:</div>
                                <div class="span2"><input type="text" placeholder="参加工作日期"/></div>
                                <div class="span1">用工形式:</div>
                                <div class="span3">
                                    <select name="select">
                                        <option value="0">正式员工</option>
                                        <option value="1">临时员工</option>
                                    </select>
                                </div>                   
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">人员来源:</div>
                                <div class="span3">
                                    <select name="select">
                                        <option value="0">校园招聘</option>
                                        <option value="1">社会招聘</option>
                                        <option value="2">其它</option>
                                    </select>
                                </div> 
                                <div class="span1">政治面貌:</div>
                                <div class="span3">
                                    <select name="select">
                                        <option value="0">党员</option>
                                        <option value="1">预备党员</option>
                                        <option value="2">团员</option>
                                        <option value="3">其它</option> 
                                    </select>
                                </div> 
                                <div class="span1">民族:</div>
                                <div class="span3">
                                    <select name="select">
                                        <option value="0">汉族</option>
                                        <option value="1">满族</option>
                                        <option value="2">彝族</option>
                                        <option value="3">维吾尔族</option> 
                                    </select>
                                </div> 
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">籍贯:</div>
                                <div class="span3"><input type="text" placeholder="籍贯"/></div>
                                <div class="span1">联系电话:</div>
                                <div class="span3"><input type="text" placeholder="联系电话"/></div>
                                <div class="span1">电子邮件:</div>
                                <div class="span3"><input type="text" placeholder="电子邮件"/></div>
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">身高:</div>
                                <div class="span1"><input type="text" placeholder="身高"/></div>        
                                <div class="span1">血型:</div>
                                <div class="span1">
                                    <select name="select">
                                        <option value="0">A型</option>
                                        <option value="1">B型</option>
                                        <option value="2">AB型</option>
                                        <option value="3">O型</option>
                                        <option value="4">其它血型</option>
                                    </select>
                                </div>
                                <div class="span1">婚姻状况:</div>
                                <div class="span1">
                                    <select name="select">
                                        <option value="0">已婚</option>
                                        <option value="1">未婚</option>
                                        <option value="2">丧偶</option>
                                        <option value="3">离婚</option>
                                        <option value="4">其它</option>
                                    </select>
                                </div>  
                                <div class="span1">出生地:</div>
                                <div class="span5"><input type="text" placeholder="出生地"/></div>                 
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">户口所在地:</div>
                                <div class="span5"><input type="text" placeholder="户口所在地"/></div>
                                <div class="span1">最高学历:</div>
                                <div class="span2">
                                    <select name="select">
                                        <option value="0">高中及以下</option>
                                        <option value="1">大专</option>
                                        <option value="2">本科</option>
                                        <option value="3">研究生</option> 
                                    </select>
                                </div> 
                                <div class="span1">最高学位:</div>
                                <div class="span2">
                                    <select name="select">
                                        <option value="0">无学位</option>
                                        <option value="1">学士</option>
                                        <option value="2">双学士</option>
                                        <option value="3">硕士</option> 
                                        <option value="4">博士</option>
                                        <option value="5">博士后</option> 
                                    </select>
                                </div> 
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">毕业院校:</div>
                                <div class="span3"><input type="text" placeholder="毕业院校"/></div>
                                <div class="span1">所学专业:</div>
                                <div class="span3"><input type="text" placeholder="所学专业"/></div>
                                <div class="span1">毕业日期:</div>
                                <div class="span3"><input type="text" placeholder="毕业日期"/></div>
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span12"><h4>试用期信息（可选）</h4></div>
                            </div>
                            <div class="row-form clearfix">
                                <div class="span2">试用期部门考核评语:</div>
                                <div class="span10"><textarea name="textarea" placeholder="试用期部门考核评语"></textarea></div>
                            </div>  
                            <div class="row-form clearfix">
                                <div class="span1">考核结果:</div>
                                <div class="span2">
                                    <select name="select">
                                        <option value="0">转正</option>
                                        <option value="1">延期</option>
                                        <option value="2">不予录用</option>
                                    </select>
                                </div> 
                                <div class="span1">处理日期:</div>
                                <div class="span3"><input type="text" placeholder="处理日期"/></div>
                            </div> 
                            <div class="row-form clearfix">
                                <div class="span1">备注:</div>
                                <div class="span11"><textarea name="textarea" placeholder="备注"></textarea></div>
                            </div> 
                            <div class="footer tar">
                                <button class="btn">提交 </button>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>

        </div>
    
</body>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>