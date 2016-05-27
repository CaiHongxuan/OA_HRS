<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="page/header.jsp" %>

    <div class="wrapper"> 
            
        <div class="header">
            <a class="logo" href="index.jsp"><img src="img/logo.png" alt="Aquarius -  responsive admin panel" title="Aquarius -  responsive admin panel"/></a>
            <ul class="header_menu">
                <li class="list_icon"><a href="#">&nbsp;</a></li>
                <li class="settings_icon">
                    <a href="#" class="link_themeSettings">&nbsp;</a>
                    
                    <div id="themeSettings" class="popup">
                        <div class="head clearfix">
                            <div class="arrow"></div>
                            <span class="isw-settings"></span>
                            <span class="name">Theme settings</span>
                        </div>
                        <div class="body settings">
                            <div class="row-fluid">
                                <div class="span3"><strong>Style:</strong></div>
                                <div class="span9">
                                    <a class="styleExample tip active" title="Default style" data-style="">&nbsp;</a>                                    
                                    <a class="styleExample silver tip" title="Silver style" data-style="silver">&nbsp;</a>
                                    <a class="styleExample dark tip" title="Dark style" data-style="dark">&nbsp;</a>
                                    <a class="styleExample marble tip" title="Marble style" data-style="marble">&nbsp;</a>
                                    <a class="styleExample red tip" title="Red style" data-style="red">&nbsp;</a>                                    
                                    <a class="styleExample green tip" title="Green style" data-style="green">&nbsp;</a>
                                    <a class="styleExample lime tip" title="Lime style" data-style="lime">&nbsp;</a>
                                    <a class="styleExample purple tip" title="Purple style" data-style="purple">&nbsp;</a>                                    
                                </div>
                            </div>                            
                            <div class="row-fluid">
                                <div class="span3"><strong>Background:</strong></div>
                                <div class="span9">
                                    <a class="bgExample tip active" title="Default" data-style="">&nbsp;</a>
                                    <a class="bgExample bgCube tip" title="Cubes" data-style="cube">&nbsp;</a>
                                    <a class="bgExample bghLine tip" title="Horizontal line" data-style="hline">&nbsp;</a>
                                    <a class="bgExample bgvLine tip" title="Vertical line" data-style="vline">&nbsp;</a>
                                    <a class="bgExample bgDots tip" title="Dots" data-style="dots">&nbsp;</a>
                                    <a class="bgExample bgCrosshatch tip" title="Crosshatch" data-style="crosshatch">&nbsp;</a>
                                    <a class="bgExample bgbCrosshatch tip" title="Big crosshatch" data-style="bcrosshatch">&nbsp;</a>
                                    <a class="bgExample bgGrid tip" title="Grid" data-style="grid">&nbsp;</a>
                                </div>
                            </div>                            
                            <div class="row-fluid">
                                <div class="span3"><strong>Fixed layout:</strong></div>
                                <div class="span9">
                                    <input type="checkbox" name="settings_fixed" value="1"/>
                                </div> 
                            </div>
                            <div class="row-fluid">
                                <div class="span3"><strong>Hide menu:</strong></div>
                                <div class="span9">
                                    <input type="checkbox" name="settings_menu" value="1"/>
                                </div>                                           
                            </div>                            
                        </div>
                        <div class="footer">                            
                            <button class="btn link_themeSettings" type="button">Close</button>
                        </div>
                    </div>                    
                    
                </li>
            </ul>    
        </div>

        <div class="menu">                

            <div class="breadLine">            
                <div class="arrow"></div>
                <div class="adminControl active">
                    Hi, Aqvatarius
                </div>
            </div>

            <div class="admin">
                <div class="image">
                    <img src="img/users/aqvatarius.jpg" class="img-polaroid"/>                
                </div>
                <ul class="control">       
                    <!-- <li><span class="icon-comment"></span> <a href="messages.jsp">Messages</a> <a href="messages.jsp" class="caption red">12</a></li>
                    <li><span class="icon-cog"></span> <a href="forms.jsp">Settings</a></li> -->
                    <li><span class="icon-share-alt"></span> <a href="login.jsp">Logout</a></li>
                </ul>
                <div class="info">
                    <span>Welcom back! Your last visit: 24.10.2012 in 19:55</span>
                </div>
            </div>

            <ul class="navigation">            
                <li class="active">
                    <a href="index.jsp">
                        <span class="isw-grid"></span><span class="text">主页</span>
                    </a>
                </li>                 
                <li class="openable">
                    <a href="#">
                        <span class="isw-zoom"></span><span class="text">入职管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="page/entry.jsp" target="menuFrame">
                                <span class="icon-pencil"></span><span class="text">普通入职</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="openable">
                    <a href="#">
                        <span class="isw-documents"></span><span class="text">部门管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="deptAction!showDeptList" target="menuFrame">
                                <span class="icon-info-sign"></span><span class="text">查询部门信息列表</span>
                            </a>                  
                        </li>
                        <li>
                            <a href="page/searchDeptUser.jsp" target="menuFrame">
                                <span class="icon-user"></span><span class="text">查询部门下属员工</span>
                            </a>                  
                        </li>                                                   
                        <li>
                            <a href="page/createDept.jsp" target="menuFrame">
                                <span class="icon-list"></span><span class="text">新建部门</span>
                            </a>
                        </li>  
                        <li>
                            <a href="page/updateDeptInfo.jsp" target="menuFrame">
                                <span class="icon-refresh"></span><span class="text">修改部门信息</span>
                            </a>
                        </li>    
                        <li>
                            <a href="page/deleteDept.jsp" target="menuFrame">
                                <span class="icon-envelope"></span><span class="text">删除部门</span>
                            </a>
                        </li>                                             
                    </ul>                                
                </li>    
                <li class="openable">
                    <a href="#">
                        <span class="isw-list"></span><span class="text">岗位管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="postAction!showPostList" target="menuFrame">
                                <span class="icon-th"></span><span class="text">查询岗位信息列表</span>
                            </a>                  
                        </li>          
                        <li>
                            <a href="page/searchPosUser.jsp" target="menuFrame">
                                <span class="icon-th-large"></span><span class="text">查询岗位下属员工</span>
                            </a>                  
                        </li>                     
                        <li>
                            <a href="page/createPos.jsp" target="menuFrame">
                                <span class="icon-chevron-right"></span><span class="text">新建岗位</span>
                            </a>                  
                        </li> 
                        <li>
                            <a href="page/updatePosInfo.jsp" target="menuFrame">
                                <span class="icon-fire"></span><span class="text">修改岗位信息</span>
                            </a>                  
                        </li>         
                        <li>
                            <a href="page/deletePos.jsp" target="menuFrame">
                                <span class="icon-align-justify"></span><span class="text">删除岗位</span>
                            </a>                  
                        </li>                        
                    </ul>                
                </li>       
                <li class="openable">
                    <a href="#">
                        <span class="isw-zoom"></span><span class="text">员工离职管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="page/searchEmploy.jsp" target="menuFrame">
                                <span class="icon-picture"></span><span class="text">查询员工列表</span>
                            </a>
                        </li>
                        <li>
                            <a href="page/unEmploy.jsp" target="menuFrame">
                                <span class="icon-pencil"></span><span class="text">离职员工列表</span>
                            </a>
                        </li>   
                    </ul>
                </li> 
                <li class="openable">
                    <a href="#">
                        <span class="isw-documents"></span><span class="text">报表管理</span>
                    </a>
                    <ul>
                        <li>
                            <a href="page/newEmployReport.jsp" target="menuFrame">
                                <span class="icon-info-sign"></span><span class="text">新聘员工报表</span>
                            </a> 
                        </li>
                        <li>
                            <a href="page/unEmployReport.jsp" target="menuFrame">
                                <span class="icon-user"></span><span class="text">离职员工报表</span>
                            </a>                  
                        </li>                                                   
                        <li>
                            <a href="page/deptUserMovReport.jsp" target="menuFrame">
                                <span class="icon-list"></span><span class="text">部门调动员工报表</span>
                            </a>
                        </li>              
                        <li>
                            <a href="page/posUserMovReport.jsp" target="menuFrame">
                                <span class="icon-refresh"></span><span class="text">岗位调动员工报表</span>
                            </a>
                        </li>  
                        <li>
                            <a href="page/hrMonthlyReport.jsp" target="menuFrame">
                                <span class="icon-envelope"></span><span class="text">人事月报</span>
                            </a>
                        </li>                                               
                    </ul>                                
                </li>   
                <li class="openable">
                    <a href="#">
                        <span class="isw-cancel"></span><span class="text">错误页面管理</span>
                    </a>
                    <ul>
                        <li><a href="page/403.jsp" target="menuFrame"><span class="icon-warning-sign"></span><span class="text">403 Forbidden</span></a></li>
                        <li><a href="page/404.jsp" target="menuFrame"><span class="icon-warning-sign"></span><span class="text">404 Not Found</span></a></li>
                        <li><a href="page/500.jsp" target="menuFrame"><span class="icon-warning-sign"></span><span class="text">500 Internal Server Error</span></a></li>
                        <li><a href="page/503.jsp" target="menuFrame"><span class="icon-warning-sign"></span><span class="text">503 Service Unavailable</span></a></li>
                        <li><a href="page/504.jsp" target="menuFrame"><span class="icon-warning-sign"></span><span class="text">504 Gateway Timeout</span></a></li>
                    </ul>
                </li>                         
            </ul>

            <div class="dr"><span></span></div>
            <div class="widget-fluid">
                <div id="menuDatepicker"></div>
            </div>
            <div class="dr"><span></span></div>
            <div class="widget">
                <div class="input-append">
                    <input id="appendedInputButton" style="width: 118px;" type="text"><button class="btn" type="button">Search</button>
                </div> 
            </div>
            <div class="dr"><span></span></div>
            <div class="widget-fluid">
                <div class="wBlock clearfix">
                    <div class="dSpace">
                        <h3>Last visits</h3>
                        <span class="number">6,302</span>                    
                        <span>5,774 <b>unique</b></span>
                        <span>3,512 <b>returning</b></span>
                    </div>
                    <div class="rSpace">
                        <h3>Today</h3>
                        <span class="mChartBar" sparkType="bar" sparkBarColor="white"><!--240,234,150,290,310,240,210,400,320,198,250,222,111,240,221,340,250,190--></span>                                                                                
                        <span>&nbsp;</span>
                        <span>65% <b>New</b></span>
                        <span>35% <b>Returning</b></span>
                    </div>
                </div>
            </div>
        </div>

		<iframe src="page/entry.jsp" id="menuFrame" name="menuFrame" frameborder="0" scrolling='yes' style="overflow: visible;" width="100%" height="1000px"></iframe>

	</div>   

</body>

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.jsp by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:49:28 GMT -->
</html>