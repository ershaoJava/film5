<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--截取当前项目名,如“/UserTest”-->
<c:set var="project" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
<head>
    <meta http-equit="Content-Type" content="text/html;charset=utf-8"/>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="${project}/css/bootstrap/fonts/bootstrap.min.css"/>
    <script type="text/javascript" src="${project}/js/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="${project}/css/bootstrap/bootstrap.js"></script>
    <title></title>
</head>
<body>
<div class="page">
    <nav class="nav navbar-default" style="background-color:#3fc2ec">
        <nav class="navbar-header">
            <a class="navbar-brand">
                电影租赁
            </a>
        </nav>
        <nav class="container-fluid">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" class="admin">
                        <span class="glyphicon glyphicon-user"></span>
                        <span>&nbsp;&nbsp;Admin</span>
                    </a>
                </li>
            </ul>
        </nav>
    </nav>
    <div class="row" style="margin-right:0px;">
        <div class="col-sm-3 col-md-2">
            <a href="#" class="list-group-item">
                <span class="glyphicon glyphicon-stop"></span>
                &nbsp;&nbsp;&nbsp;Customer管理
                <span class="glyphicon glyphicon-chevron-right"  style="float:right"></span>
            </a>
            <a href="#" class="list-group-item">
                <span class="glyphicon glyphicon-stop" ></span>
                &nbsp;&nbsp;&nbsp;Film设置
                <span class="glyphicon glyphicon-chevron-right" style="float:right"></span>
            </a>
        </div>
        <div class="col-sm-9 col-md-10" id="showCus">
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <ul class="list-group">
                        <li class="list-group-item" style="font-size:20px;font-weight: bolder">客户管理</li>
                        <li class="list-group-item">
                            <ul class="list-group" style="border-top:2px solid #3fbff5">
                                <li class="list-group-item">
                                    客户列表
                                    <span class="col-sm-offset-1 col-md-offset-1"></span>
                                    <input type="button" class="btn btn-info" value="新建" id="addCusBt"/>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead></thead>
                                                    <tbody>
                                                    <tr>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <nav class="navbar navbar-default">
                                        <div>
                                            <ul class="nav navbar-nav navbar-right" id="navigation">

                                            </ul>
                                        </div>
                                    </nav>
                                 </li>

                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-sm-10 col-md-10" id="addCus" style="display:none">
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <ul class="list-group">
                        <li class="list-group-item" style="font-size:20px;font-weight: bolder">创建Customer</li>
                        <li class="list-group-item">
                            <ul class="list-group" style="border-top:2px solid #3fbff5">
                                <li class="list-group-item">
                                    基本信息
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <form class="form-horizontal" id="addCusForm">
                                                <div class="form-group">
                                                    <label class="col-sm-2 col-md-2 control-label" style="font-size:15px;font-weight: bold;" for="addFirstName">
                                                        <span style="color:red">*&nbsp;</span>FirstName
                                                    </label>
                                                    <div class="col-sm-4 col-md-4">
                                                        <input type="text" class="form-control" id="addFirstName" name="firstName"/>
                                                        <span>&nbsp;</span>
                                                    </div>
                                                    <label class="col-sm-2 col-md-2 control-label" style="color:red;text-align:left" id="add-tick-fir">

                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 col-md-2 control-label" style="font-size:15px;font-weight: bold;" for="addLastName">
                                                        <span style="color:red">*&nbsp;</span>
                                                        LastName
                                                    </label>
                                                    <div class="col-sm-4 col-md-4">
                                                        <input type="text" class="form-control" id="addLastName" name="lastName"/>
                                                        <span>&nbsp;</span>
                                                    </div>
                                                    <label class="col-sm-2 col-md-2 control-label" style="color:red;text-align:left" id="add-tick-last">

                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 col-md-2 control-label" style="font-size:15px;font-weight: bold;" for="addEmail">
                                                        <span style="color:red">*&nbsp;</span>
                                                        Email
                                                    </label>
                                                    <div class="col-sm-4 col-md-4">
                                                        <input type="text" class="form-control" id="addEmail" name="email"/>
                                                        <span>&nbsp;</span>
                                                    </div>
                                                    <label class="col-sm-2 col-md-2 control-label" style="color:red;text-align:left" id="add-tick-email">

                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 col-md-2 control-label" style="font-size:15px;font-weight: bold;" for="addAdress">
                                                        <span style="color:red">*&nbsp;</span>
                                                        Adress
                                                    </label>
                                                    <div class="col-sm-4 col-md-4">
                                                        <select class="form-control" id="addAdress" name="addressId">

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 col-md-2 control-label" style="font-size:15px;font-weight: bold;" for="addAdress">
                                                    </label>
                                                    <div class="col-sm-1 col-md-1">
                                                        <a class="btn btn-info" id="goCreateCus">新建</a>
                                                    </div>
                                                    <div class="col-sm-1 col-md-1">
                                                        <a class="btn btn-default" id="noCreate">取消</a>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <!--编辑模态框 -->
    <div class="modal fade" id="modelEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    信息修改
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="modifyForm">
                        <input type="hidden" id="edit-customerId" name="customerId"/>
                        <div class="form-group">
                            <label class="col-sm-2 col-md-2 control-label" for="edit-firstName"><span style="color:red">*</span>&nbsp;FirstName</label>
                            <div class="col-sm-8 col-md-8">
                                <input type="text" class="form-control" id="edit-firstName" name="firstName"/>
                                <span></span>
                                <span>&nbsp;</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-md-2 control-label" for="edit-lastName"><span style="color:red">*</span>&nbsp;lastName</label>
                            <div class="col-sm-8 col-md-8">
                                <input type="text" class="form-control" id="edit-lastName" name="lastName"/>
                                <span></span>
                                <span>&nbsp;</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2  control-label" for="edit-Email"><span style="color:red">*</span>&nbsp;Email</label>
                            <div class="col-sm-8 col-md-8">
                                <input type="text" class="form-control" id="edit-email" name="email"/>
                                <span></span>
                                <span>&nbsp;</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-md-2 control-label" for="edit-address"><span style="color:red">*</span>&nbsp;Address</label>
                            <div class="col-sm-8 col-md-8">
                                <select class="form-control" name="addressId" id="edit-address">

                                </select>
                                <span></span>
                                <span>&nbsp;</span>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">
                        关闭
                    </button>
                    <button class="btn btn-primary goEdit">提交</button>
                </div>
            </div>
        </div>
    </div>
    <!--提示模态框 -->
    <div class="modal fade" id="modalTick" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" id="tick-msg">

                </div>
                <div class="modal-footer" id="tick-fooster" style="display:none">
                    <button class="btn btn-default" data-dismiss="modal" id="tick-cancle">
                        关闭
                    </button>
                    <button class="btn btn-primary" id="operate" value="">确定</button>
                </div>
            </div>
        </div>
    </div>
    <!--删除本账户模态框-->
    <div class="modal fade" id="modal-tick-del" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" id="tick-del-msg">
                    该账户已登录，删除后将退出登录？
                </div>
                <div class="modal-footer"">
                    <button class="btn btn-default" data-dismiss="modal">
                        关闭
                    </button>
                    <button class="btn btn-primary" id="goDelMe">确定</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var tickMsg="${tick-del-msg}";
    if(tickMsg=="N") {
        $("#tick-msg").html("本账户删除失败，请稍后再试");
        $("#tick-fooster").css("display","none");
        $("#modalTick").modal();
        setTimeout(function(){
            $("#modalTick").modal("hide");
        },1000)
    }
    function page(currpage){
        $.post("${project}/customer/getAllCus",{"currentPage":currpage},function(data){
            $("thead").empty();
            $("tbody").empty();
            var operate=$("<th></th>").append("操作");
            var firstName=$("<th></th>").append("FistName");
            var lastName=$("<th></th>").append("LastName");
            var address=$("<th></th>").append("Address");
            var email=$("<th></th>").append("Email");
            var customerId=$("<th></th>").append("CustomerId");
            var lastUpdate=$("<th></th>").append("LastUpdate");
            $("<tr></tr>").append(operate).append(firstName).append(lastName).append(address).append(email).append(customerId).append(lastUpdate).appendTo($("thead"));

            //循环添加数据
            $.each(data.pageInfo.list,function(index,item){
                operate=$("<td></td>").append($("<a href='#'></a>").append("编辑").addClass("edit")).append("&nbsp;|&nbsp;").append($("<a href='#'></a>").append("删除").addClass("del"));
                firstName=$("<td></td>").append(item.firstName);
                lastName=$("<td></td>").append(item.lastName);
                address=$("<td></td>").append(item.address.address);
                email=$("<td></td>").append(item.email);
                customerId=$("<td></td>").append(item.customerId);
                var unixTimestamp = new Date(item.lastUpdate) ;//获取从后台传来的时间戳item.lastUpdate
                var commonTime = unixTimestamp.toLocaleString();
                lastUpdate=$("<td></td>").append(commonTime);
                $("<tr></tr>").append(operate).append(firstName).append(lastName).append(address).append(email).append(customerId).append(lastUpdate).appendTo($("tbody"));
            });
            $("#navigation").html("");
            //添加首页
            var firstPage;
            if(data.pageInfo.pageNum==1) firstPage=$("<a></a>").append($("<span></span>").append("首页"));
            else firstPage=$("<a href='#'></a>").append("首页").addClass("firstPage").attr("pageId","1");
            $("#navigation").append($("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append(firstPage));

            //上一页
            var lastPage;
            if(data.pageInfo.pageNum==1) lastPage=$("<a></a>").append($("<span class='glyphicon glyphicon-chevron-left'></span>"));
            else lastPage=$("<a href='#'></a>").append($("<span class='glyphicon glyphicon-chevron-left'></span>")).addClass("lastPage").attr("pageId",data.pageInfo.pageNum-1);
            $("#navigation").append($("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append(lastPage));

            //循环页码
            $.each(data.pageInfo.navigatepageNums,function(index,item){
                var toPage;
                if(item==data.pageInfo.pageNum) toPage=$("<li style='background-color:#3FBFF5;border:1px solid #F8F8F8'></li>").append($("<a></a>").append(item).addClass("nowPage"));
                else toPage=$("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append($("<a href='#'></a>").append(item).addClass("toPage").attr("pageId",item));
                $("#navigation").append(toPage);
            });

            //下一页
            var nextPage;
            if(data.pageInfo.pageNum==data.pageInfo.pages) nextPage=$("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append($("<a></a>").append($("<span class='glyphicon glyphicon-chevron-right'></span>")));
            else nextPage=$("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append($("<a href='#'></a>").append($("<span class='glyphicon glyphicon-chevron-right'></span>")).addClass("nextPage").attr("pageId",pageNum+1));
            $("#navigation").append(nextPage);

            //尾页
            var rightPage;
            if(data.pageInfo.pageNum==data.pageInfo.pages) rightPage=$("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append($("<a></a>").append($("<span></span>").append("尾页")));
            else rightPage=$("<li style='background-color:white;border:1px solid #F8F8F8'></li>").append($("<a href='#'></a>").append("尾页").addClass("rightPage").attr("pageId",data.pageInfo.pages));
            $("#navigation").append(rightPage);

            //隔阂
            $("#navigation").append($("<li></li>").append($("<a></a>").append("&nbsp;")));
            },"json");

    };
    $(document).on("mouseover mouseout",".admin",function(event){
        if(event.type=="mouseover") $(this).css("color","white");
        if(event.type=="mouseout") $(this).css("color","inherit");
    });
    $(document).on("click",".edit",function(){
        $("input[type=text]").next().html("");//清除提示记录
        var firstName=$(this).parent().parent().find("td").eq(1).html();
        var lastName=$(this).parent().parent().find("td").eq(2).html();
        var address=$(this).parent().parent().find("td").eq(3).html();
        var email=$(this).parent().parent().find("td").eq(4).html();
        var customerId=$(this).parent().parent().find("td").eq(5).html();
        $("#edit-customerId").val(customerId);
        $("#edit-firstName").val(firstName);
        $("#edit-lastName").val(lastName);
        $("#edit-email").val(email);
        //地址
        $("#edit-address").html("");
        $.post("${project}/customer/getAllAddr",function(data){
            $.each(data.addresses,function(index,item) {
                if(item.address==address) $("#edit-address").append($("<option></option>").append(item.address).attr("value",item.addressId).attr("selected","selected"));
                else $("#edit-address").append($("<option></option>").append(item.address).attr("value",item.addressId));
            })
        });
        $("#modelEdit").modal();
    });
    $(document).on("click",".goEdit",function(){
        var tick=1;
        if($("#edit-firstName").val()=="") {
            tick=0;
            $("#edit-firstName").parent().children().eq(1).css("color","red").text("请输入firstName");
        }
        if($("#edit-lastName").val()=="") {
            tick=0;
            $("#edit-lastName").parent().children().eq(1).css("color","red").text("请输入lastName");
        }
        if($("#edit-address").val()=="") {
            tick=0;
            $("#edit-address").parent().children().eq(1).css("color","red").text("请输入address");
        }
        var reg=/^([a-zA-Z0-9._-]+)@([a-zA-Z0-9]+)((\.[a-zA-Z]{2,})+)$/;//{2,}为至少两位
        if(!reg.test($("#edit-email").val())||$("#edit-email").val()=="")
        {   tick=0;
            $("#edit-email").parent().children().eq(1).css("color", "red").text("请输入正确的邮箱");
        }
        if(tick==1) {
            $.post("${project}/customer/goUpdate",$("#modifyForm").serialize(),function(data){
                if(data.line==1) $("#tick-msg").html("修改成功！");
                else $("#tick-msg").html("修改失败，请稍后再试！");
                $("#modelEdit").modal("hide");
                $("#modalTick").modal();
                page($(".nowPage").html());
                setTimeout(function(){
                    $("#modalTick").modal("hide");
                },800);//0.8s后移除提示框

            });
        }
    });
    $(document).on("keyup","#edit-firstName,#edit-lastName,#edit-email",function(){
        if($(this).val()!="") $(this).parent().children().eq(1).text("");
    });
    $(document).on("click",".del",function(){
        var cusId=$(this).parent().parent().find("td").eq(5).html();
        var loginCusId="${sessionScope.customer.customerId}";
        if(cusId==loginCusId){
            $("#goDelMe").wrap("<a href='${project}/customer/delMe?customerId="+loginCusId+"'></a>");
            $("#modal-tick-del").modal();
        }else{
            $("#operate").addClass("goDel");
            $("#operate").attr("value",cusId);
            $("#tick-msg").html("确认删除？");
            $("#tick-fooster").css("display","inherit");//显示确认删除按钮
            $("#modalTick").modal();
        }
    });
    $(document).on("click",".goDel",function(){
        $("#modalTick").modal("hide");
        $(".modal-backdrop").remove();
        var cusId=$(this).attr("value");
        $.post("${project}/customer/delCus",{"customerId":cusId},function(data){
            $("#tick-fooster").css("display","none");
            $("#operate").removeClass("goDel");
            $("#operate").attr("value","");
            if(data.line==1) $("#tick-msg").html("已删除！");
            else $("#tick-msg").html("请稍后再试！");
            $("#modalTick").modal();
            setTimeout(function(){
                $("#modalTick").modal("hide");
                $(".modal-backdrop").remove();
            },800);
            page($(".nowPage").html());
        });
    });
    $(document).on("click",".admin",function(){
        $("#tick-fooster").css("display","inherit");
        $("#tick-msg").html("注销后需重新登录？");
        $("#operate").wrap("<a href='${project}/customer/loginAgain' class='loginAgain'></a>");
        $("#modalTick").modal();
    });
    $(document).on("click","#tick-cancle",function(){
        $(".loginAgain").remove();
    });
    $(document).on("click","#addCusBt",function(){
        $("#addAdress").html("");
        $.post("${project}/customer/getAllAddr",function(data){
            $.each(data.addresses,function(index,item){
                $("<option></option>").append(item.address).attr("value",item.addressId).appendTo($("#addAdress"));
            });
        });
        $("#showCus").css("display","none");
        $("#addCus").css("display","inherit");
    });
    $(document).on("click","#noCreate",function(){
        $("#showCus").css("display","inherit");
        $("#addCus").css("display","none");
    });
    $(document).on("click","#goCreateCus",function(){
        $("#add-tick-fir").html("");
        $("#add-tick-last").html("");
        $("#add-tick-email").html("");
        var reg=/^([a-zA-Z0-9._-]+)@([a-zA-Z0-9]+)((\.[a-zA-Z]{2,})+)$/;//{2,}为至少两位
        if($("#addFirstName").val()=="") $("#add-tick-fir").html("请输入firstname");
        else if($("#addLastName").val()=="") $("#add-tick-last").html("请输入lastname");
        else if(!reg.test($("#addEmail").val())) $("#add-tick-email").html("email格式错误");
        else{//提交
            $.post("${project}/customer/addCus",$("#addCusForm").serialize(),function(data){
                page($(".nowPage").html());
                if(data.line==1) $("#tick-msg").html("已添加！");
                else $("#tick-msg").html("添加失败，稍后再试！");
                $("#modalTick").modal();
                setTimeout(function(){
                    $("#modalTick").modal("hide");
                    $("#addCus").css("display","none");
                    $("#showCus").css("display","inherit");
                },800);
            });
        }
    });

    $(function(){
        //重写时间格式
        Date.prototype.toLocaleString=function(){
            return this.getFullYear()+"-"+this.getMonth()+"-"+this.getDate()+"&nbsp;"+this.getHours()+":"+this.getMinutes()+":"+this.getSeconds();
        };
        page(1);
    });
</script>
</body>
</html>
