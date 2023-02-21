<%@ page pageEncoding="utf-8" %>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>二维码信息</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">

        body {
            font-family: "微软雅黑";
            background-color: #EDEDED;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 96%;
            margin: 0 auto;
            text-align: center;
            border-collapse: collapse;
            font-size: 16px;
        }

        td, th {
            padding: 5px;
        }

        th {
            background-color: #DCDCDC;
            width: 120px;
        }

        th.width-40 {
            width: 40px;
        }

        th.width-70 {
            width: 70px;
        }

        th.width-80 {
            width: 80px;
        }

        hr {
            margin-bottom: 20px;
            border: 1px solid #aaa;
        }

        #add-emp {
            text-align: center;
            font-size: 20px;
        }

        .pull-right {
            float: right !important;
        }

        .category__header-title {
            height: 50px;
            display: block;
        }

        .demo {
            width: 50px;
            height: 30px;
        }
    </style>
</head>

<body><!-- body-start  -->
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js">//引入jquery框架
</script>

<h2>二维码信息</h2>
<div id="add-emp">
    <a href="print_info" target="rightFrame">生成二维码</a>
</div>
<hr/>
<h3 slot="title" class="category__header-title">
    <Icon type="ios-paper-outline" color="#2D8cF0"/>
    数据管理
    <div class="pull-right">
        <form action="importQr" method="post" enctype="multipart/form-data">
            <input type="button" value="选择文件" onclick="path.click()" style="font-size: 20px; font-weight: bold">
            <%--<input type="button" value="选择文件" onclick="path.click()" style="border:1px solid #ccc;background:#fff">--%>
            <input type="text" size="12" name="upfile" id="upfile" style="height: 26px;font-size: 20px; font-weight: bold">
            <input type="file" name="myfile" id="path" style="display:none" onchange="upfile.value=this.value">
            <br/>
            <input type="submit" style="font-size: 20px; font-weight: bold" value="数据导入">
        </form>
    </div>
    <%--<form action="importQr" method="post" enctype="multipart/form-data">--%>
    <%--<input type="file" name="myfile" id="myfile" value="" /><br/><input type="submit" value="数据导入"></form>--%>
    <%--</div>--%>
</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="批量打印" style="font-size: 20px; font-weight: bold" onclick="printPr()">
<%--<input type="button" value="导入模板" style="font-size: 20px; font-weight: bold" onclick="importExcel()">--%>
<input type="button" value="批量生码" style="font-size: 20px; font-weight: bold" onclick="createQr()">
<input type="button" value="全量导出" style="font-size: 20px; font-weight: bold" onclick="exportExcel()">
<input type="button" value="模板下载" style="font-size: 20px; font-weight: bold" onclick="downExcel()">



<br/>
<br/>
<input id="record" value="${record}" style="display:none" }>
<table border="1">
    <tr>
        <th class="width-13">批量打印或者生码</th>
        <th class="width-2">序号</th>
        <th class="width-10">二维码图片</th>
        <th class="width-9">客户姓名</th>
        <th class="width-9">客户地址</th>
        <th class="width-9">柜体名称</th>
        <th class="width-10">柜体安装方位</th>
        <th class="width-8">单号</th>
        <th class="width-9">创建时间</th>
        <%--<th class="width-8">是否打印</th>--%>
        <%--<th class="width-8">打印时间</th>--%>
        <th class="width-8">备注</th>
        <th class="width-13">操 作</th>
    </tr>
    <c:forEach items="${ qrcodelist }" var="qrcode" varStatus="vs">
        <tr>
            <td>
                <input type=checkbox name=chkBox value=${ qrcode.id }></td>
            <td>${ vs.count }</td>
            <td><img id="imga${ qrcode.qrImgAddress}"
                     src="${pageContext.request.contextPath}/static/img/${ qrcode.qrImgAddress}.jpg"
                     width="100%" height="100%" style="display:none" onload="this.style.display=''"
                     onmouseover="bigger(${ qrcode.qrImgAddress})" onmouseout="smaller(${ qrcode.qrImgAddress})"/></td>
            <td>${ qrcode.customerName }</td>
            <td>${ qrcode.customerAddress }</td>
            <td>${ qrcode.cupboardName }</td>
            <td>${ qrcode.cupboardInstallPlace }</td>
            <td>${ qrcode.customerOrderId }</td>
            <td>${ qrcode.qrCreatetime }</td>
                <%--<td>--%>
                <%--<c:choose>--%>
                <%--<c:when test="${ qrcode.qrPrintflag==0}">--%>
                <%--<p  style="color:red;font-size:16px;">否</p>--%>
                <%--</c:when>--%>
                <%--<c:otherwise>--%>
                <%--<p  style="font-size:16px;">是</p>--%>
                <%--</c:otherwise>--%>
                <%--</c:choose>--%>
                <%--</td>--%>
                <%--<td>${ qrcode.qrPrinttime }</td>--%>
            <td>${ qrcode.remark }</td>
            <td>
                <a href="qrDelete?id=${ qrcode.id }"
                   onclick="return qrDelete()">删除</a>

                    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>

                <a href="printQrInfo?id=${ qrcode.id }">打印</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div style="text-align:center">
    <a href="?start=0">首 页</a>
    <c:if test="${page.start-page.count>0}">
        <a href="?start=${page.start-page.count}&">上一页</a>
    </c:if>
    <c:if test="${nextpageHide>0}">
        <a href="?start=${page.start+page.count}&">下一页</a>
    </c:if>
    <a href="?start=${page.last}">末 页</a>
</div>

<script type="text/javascript">
    function qrDelete() {
        return confirm("确定要删除吗?");
    }

    function bigger(imga) {
        var img = document.getElementById("imga" + imga);
        img.style.width = '300px';
        img.style.height = '300px';
    }

    function smaller(imga) {
        var img = document.getElementById("imga" + imga);
        img.style.width = '100px';
        img.style.height = '100px';
    }

    function printPr() {
        var boxes = document.getElementsByName("chkBox");
        var arr = [];
        for (i = 0; i < boxes.length; i++) {
            if (boxes[i].checked == true && boxes[i].value != "" && boxes != undefined && boxes != null) {
                arr.push(boxes[i].value)
            }
        }
        if (arr == "" || arr == undefined || arr == null || arr.length == 0) {
            alert("请至少选择一条二维码的数据");
            console.log("请至少选择一条二维码的数据,刷新页面")
            location.reload();
        } else {
            console.log("批量打印二维码跳转后台")
            window.location.href = "${pageContext.request.contextPath}/printQrInfo?id=" + arr
        }
    }


    function createQr() {
        var boxes = document.getElementsByName("chkBox");
        var arr = [];
        for (i = 0; i < boxes.length; i++) {
            if (boxes[i].checked == true && boxes[i].value != "" && boxes != undefined && boxes != null) {
                arr.push(boxes[i].value)
            }
        }
        if (arr == "" || arr == undefined || arr == null || arr.length == 0) {
            alert("请至少选择一条二维码的数据");
            console.log("请至少选择一条二维码的数据,刷新页面")
            location.reload();
        } else {
            console.log("批量生成二维码跳转后台")
            window.location.href = "${pageContext.request.contextPath}/createQrInfo?id=" + arr
        }
    }


    function downExcel() {
        window.location.href = "${pageContext.request.contextPath}/static/excelfile/moban.xls"
    }

    function exportExcel() {
        $.ajax({
            async: false,
            url: "${pageContext.request.contextPath}/exportExcel",
            type: "post",
            dataType: "text",
            //问题 ajax没有回调
            // success:function(data){
            // 	alert(data+"+++++++++++")
            // 	if (data.status == 302) {
            // 		location.href = data.location;
            // 	}
            // }
        });
        window.location.href = "${pageContext.request.contextPath}/static/excelfile/daochu.xls"
    }


    function importExcel() {
        alert("请将编辑好的模板放置在D/jiaju/moban.xls上，若位置不对，无法导入");
        window.location.href = "${pageContext.request.contextPath}/importExcel"
    }


</script>

</body><!-- body-end  -->
</html>



