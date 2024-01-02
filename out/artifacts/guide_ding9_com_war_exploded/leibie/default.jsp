<%@page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<%@ page import="com.ding9.util.UrlRewriteManager,com.ding9.util.Environment"%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="/css/font.css" rel="stylesheet" type="text/css">
		<link href="/css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/js/comment.js"></script>
		<script type="text/javascript" src="/js/domove.js"></script>
		<style type="text/css">

.menu {
	display:block;
	position:absolute;
	left: 870px;
}
.menu a.outer, .menu a.outer:visited {
	color:#666666;
	width:68px;
	height:22px;
	display:block;
	margin-right:1px;
	text-align:center;
	float:right;
	text-decoration:none;
	font-size:12px;
	overflow:hidden;
} 
.menu a.outer:hover {
overflow:visible;
}
.menu a.outer:hover table.first {
	display:block;
	border-collapse:collapse;
	background-color: #F9F9F9;
}
.menu a.inner, .menu a.inner:visited {
	display:block;
	width:80px;
	height:22px;
	text-decoration:none;
	color:#666666;
	font-size:12px;
	text-align:left;
	border-bottom-width: 1px;
	border-bottom-style: dashed;
	border-bottom-color: #999999;
	padding-top: 6px;
	padding-left: 8px;
}
.menu a.inner:hover {
	background-color: #E7F4FA;
}

.menu a.outer table.first a.second {
height:22px; 
line-height:18px; 
overflow:hidden; 
font-weight:bold;
}
.menu a.outer table.first a.second:hover {
position:relative; 
overflow:visible;
}
</style>

</head>

	<body>
		<center>

			<div id="m01">
				<div id="m01_l">
					<div class="m100">
						<img src="/images/m/fl.gif" width="668" height="36">
					</div>
					<div id="m0101">
						<div id="m0101_l"><bean:write name="sortVO" property="content" filter="false" />
						</div>
					</div>					
				</div>				
				<div id="m01_r">
					<logic:present name="adv_67_394">
						<bean:write name="adv_67_394" filter="false" />
					</logic:present>

					<div id="m101" class="f04l">
						<logic:present name="vo55">
							<bean:write name="vo55" property="sort_name" filter="false" />
						</logic:present>
					</div>

					<div id="m0102">
						<div id="m0102_l">
							<div class="div6">
								<ul>
									<logic:present name="list55">
										<logic:iterate id="list" name="list55" offset="0" indexId="seq">
											<li>
												<a id="nowrap" href='<bean:write name="list" property="url" />' class="H3">
													<bean:write name="list" property="prma_name" />
												</a>
											</li>
										</logic:iterate>
									</logic:present>
								</ul>
							</div>
							<!--div6-->
						</div>
						<!--m0102_l-->
						<div id="m0102_r">
							<div class="m80">
								<logic:present name="pic55">
									<a href='<bean:write name="pic55" property="url" />'>

										<logic:empty name="pic55" property="pic_address">
										<img src="<%=Environment.getTempProductPicture()%>" alt='<bean:write name="pic55" property="prma_name" />' width="80" height="80" border="0">
									</logic:empty>
									<logic:notEmpty name="pic55" property="pic_address">
										<img src='<bean:write name="pic55" property="picurl" />' alt='<bean:write name="pic55" property="prma_name" />' width="80" height="80" border="0">
									</logic:notEmpty>

									</a>
								</logic:present>
							</div>
						</div>
						<!--m0102_r-->
					</div>
					<!--m0102-->


					<div id="m102" class="f02l">
						<logic:present name="vo56">
							<bean:write name="vo56" property="sort_name" filter="false" />
						</logic:present>
					</div>
					<div id="m0102">
						<div id="m0102_l">
							<div class="div6">
								<ul>
									<logic:present name="list56">
										<logic:iterate id="list" name="list56" offset="0" indexId="seq">
											<li>
												<a id="nowrap" href='<bean:write name="list" property="url" />' class="H3">
													<bean:write name="list" property="prma_name" />
												</a>
											</li>
										</logic:iterate>
									</logic:present>
								</ul>
							</div>
							<!--div6-->
						</div>
						<!--m0102_l-->
						<div id="m0102_r">
							<div class="m80">
								<logic:present name="pic56">
									<a href='<bean:write name="pic56" property="url" />'>
									
									<logic:empty name="pic56" property="pic_address">
										<img src="<%=Environment.getTempProductPicture()%>" alt='<bean:write name="pic56" property="prma_name" />' width="80" height="80" border="0">
									</logic:empty>
									<logic:notEmpty name="pic56" property="pic_address">
										<img src='<bean:write name="pic56" property="picurl" />' alt='<bean:write name="pic56" property="prma_name" />' width="80" height="80" border="0">
									</logic:notEmpty>
									</a>
								</logic:present>
							</div>
						</div>
						<!--m0102_r-->
					</div>
					<!--m0102-->



					<div id="m102" class="f02l">
						<logic:present name="vo57">
							<bean:write name="vo57" property="sort_name" filter="false" />
						</logic:present>
					</div>
					<div id="m0102">
						<div id="m0102_l">
							<div class="div6">
								<ul>
									<logic:present name="list57">
										<logic:iterate id="list" name="list57" offset="0" indexId="seq">
											<li>h
												<a id="nowrap" href='<bean:write name="list" property="url" />' class="H3">
													<bean:write name="list" property="prma_name" />
												</a>
											</li>
										</logic:iterate>
									</logic:present>
								</ul>
							</div>
							<!--div6-->
						</div>
						<!--m0102_l-->
						<div id="m0102_r">
							<div class="m80">
								<logic:present name="pic57">
									<a href='<bean:write name="pic57" property="url" />'>
										<logic:empty name="pic57" property="pic_address">
										<img src="<%=Environment.getTempProductPicture()%>" alt='<bean:write name="pic57" property="prma_name" />' width="80" height="80" border="0">
									</logic:empty>
									<logic:notEmpty name="pic57" property="pic_address">
										<img src='<bean:write name="pic57" property="picurl" />' alt='<bean:write name="pic57" property="prma_name" />' width="80" height="80" border="0">
									</logic:notEmpty>
									</a>
								</logic:present>
							</div>
						</div>
						<!--m0102_r-->
					</div>
					<!--m0102-->

					<div id="m103" class="f07l">
						<logic:present name="vo58">
							<bean:write name="vo58" property="sort_name" filter="false" />
						</logic:present>
					</div>
					<div id="m0102">
						<div id="m0102_l">
							<div class="div6">
								<ul>
									<logic:present name="list58">
										<logic:iterate id="list" name="list58" offset="0" indexId="seq">
											<li>ht

												<a id="nowrap" href='<bean:write name="list" property="url" />' class="H3">
													<bean:write name="list" property="prma_name" />
												</a>
											</li>
										</logic:iterate>
									</logic:present>
								</ul>
							</div>
							<!--div6-->
						</div>
						<!--m0102_l-->
						<div id="m0102_r">
							<div class="m80">
								<logic:present name="pic58">

									<a href='<bean:write name="pic58" property="url" />'>
										<logic:empty name="pic58" property="pic_address">
										<img src="<%=Environment.getTempProductPicture()%>" alt='<bean:write name="pic58" property="prma_name" />' width="80" height="80" border="0">
									</logic:empty>
									<logic:notEmpty name="pic58" property="pic_address">
										<img src='<bean:write name="pic58" property="picurl" />' alt='<bean:write name="pic58" property="prma_name" />' width="80" height="80" border="0">
									</logic:notEmpty>
									</a>
								</logic:present>
							</div>
						</div>
						<!--m0102_r-->
					</div>
					<!--m0102-->


				</div>
				<!--m01_r-->
			</div>			
		</center>
			</body>
</html>


<SCRIPT language=javascript>
			
		window.focus();		
		function add_Move(){
			var children = document.getElementsByTagName('a') || document.all;
			for(i = 0; i < children.length; i++)
			{
				if(children[i].id=='nowrap')
				{
					if(document.all){
						children[i].attachEvent ('onmouseover', doMove);
					}
					else{
						children[i].addEventListener('mouseover', doMove, false);
					}
				}
			}
		}
		add_Move();
	
		</SCRIPT>
