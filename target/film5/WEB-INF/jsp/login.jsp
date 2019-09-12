<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--截取当前项目名,如“/UserTest”-->
<c:set var="project" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <meta http-equit="Content-Type" content="text/html;charset=utf-8"/>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="${project}/css/bootstrap/fonts/bootstrap.min.css"/>
    <script type="text/javascript" src="${project}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${project}/css/bootstrap/bootstrap.js"></script>
    <title>Title</title>
    <style type="text/css">
        body{
            background-image:url("${project}/image/back.jpg");
            background-size:100vw 100vh;
        }
        .f-content{
            position:absolute;
            left:30vw;
            top:30vh;
            background-color:white;
            width:44vw;
            height:50vh;
            border-radius:10px;
        }
        .container .f-content .f-form .f-top{
            height:10vh;
            line-height:10vh;
            font-size: 20px;
            font-weight: lighter;
            padding-left:2vw;
            border-bottom:1px solid #dddddd;
            margin-bottom:4vh;
        }
        .f-form .f-nameout{
            height:auto;
            line-height:10vh;
            font-size: 120%;
        }
        .f-form .f-nameout .f-bgColor{
            background-color:inherit;
        }
        .f-form .f-nameout .f-button{
            background-color:#77c2ff;
            font-size:100%;
        }
        .f-nameout .tick{
            padding-top: 0px;
            color:red;
            border: none;
            font-size: medium;
            box-shadow: none;
        }
        @keyframes move{
            0% {top: 25vh;}/*初始状态 高度25vh*/
            100% {top: 30vh;}/*结束状态 高度30vh*/
        }
        @-webkit-keyframes move {/*针对webkit内核：Safari and Chrome*/
            0% {top: 25vh;}/*初始状态 高度25vh*/
            100% {top: 30vh;}/*结束状态 高度30vh*/
        }
        @keyframes fade-in {
            0% {opacity: 0;}/*初始状态 透明度为0*/
            100% {opacity: 1;}/*结束状态 透明度为1*/
        }
        @-webkit-keyframes fade-in {/*针对webkit内核：Safari and Chrome*/
            0% {opacity: 0;}/*初始状态 透明度为0*/
            100% {opacity: 1;}/*结束状态 透明度为1*/
        }
        .f-content{
            animation: fade-in 1s 1,move 1s 1;/*绑定2个动画，动画名称,动画完成的时间,动画播放次数*/
            -webkit-animation:fade-in 1s 1,move 1s 1;/*针对webkit内核*/
        }
        .f-button:hover{
            cursor: inherit;
        }
    </style>



    </head>
    <body>
    <div class="container">
        <div class="f-content">
            <form:form class="f-form" autocomplete="off" method="post" modelAttribute="customer" action="${project}/login/user">
                <div class="f-top">
                    电影租赁管理系统
                </div>
                <div class="row f-nameout">
                    <div class="col-sm-2 col-md-2" ></div>
                    <div  class="col-sm-7 col-md-7 input-group">
                        <label class="input-group-addon f-bgColor" for="firstName">
                            <label class="glyphicon glyphicon-user" for="firstName"></label>
                        </label>
                        <input type="text" class="form-control" name="firstName" id="firstName" placeholder="Username" readonly onfocus="this.removeAttribute('readonly')" style="background-color: inherit" autocomplete="off"/>
                    </div>
                    <div class="col-sm-2 col-md-2" ></div>
                    <div  class="col-sm-7 col-md-7 input-group">
                            <span class="form-control tick">
                                <form:errors path="firstName"/>
                            </span>
                    </div>
                </div>
                <div class="row f-nameout">
                    <div class="col-sm-2 col-md-2"></div>
                    <div class="col-sm-7 col-md-7 input-group">
                        <label class="input-group-addon f-bgColor" for="pwd">
                            <label class="glyphicon glyphicon-lock" for="pwd"></label>
                        </label>
                        <input type="password" class="form-control"  name="password" id="pwd" readonly onfocus="this.removeAttribute('readonly')" style="background-color: inherit" autocomplete="off"/>
                    </div>
                    <div class="col-sm-2 col-md-2" ></div>
                    <div class="col-sm-7 col-md-7 input-group">
                            <span class="form-control tick">
                              <form:errors path="password"/>
                            </span>
                    </div>
                </div>
                <div class="row f-nameout">
                    <div class="col-sm-2 col-md-2"></div>
                    <input type="button"  class="col-sm-7 col-md-7 btn btn-default f-button" value="登&nbsp;&nbsp;录" disabled="disabled"/>
                </div>
            </form:form>
        </div>
    </div>
    <script type="text/javascript">
        $(function(){
                $("#firstName").keyup(function(){
                if($(this).val()!="") {
                    $(".f-button").removeAttr("disabled");
                }
                else $(".f-button").attr("disabled","disabled");
            });
            $(".f-button").click(function(){
                $("form").submit();
            });
        })
    </script>
    </body>

</html>
