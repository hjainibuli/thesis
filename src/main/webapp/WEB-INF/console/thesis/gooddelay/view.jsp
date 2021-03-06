<%--
  Created by IntelliJ IDEA.
  User: 大白菜
  Date: 2017/8/16 0016
  Time: 下午 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="/inc/dialog.jsp" %>

<div style="padding:10px 10px 10px 10px">

        <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc; padding-bottom: 5px;">学生申请</div>
        <table width="100%" cellpadding="5" class="form-table">
            <tbody>
            <tr>
                <td width="120"><label>论文标题</label></td>
                <td colspan="5">${thesis.topic}</td>
            </tr>
            <tr>
                <td><label>选题学生</label></td>
                <td>${student.username}</td>
                <td><label>学生学号</label></td>
                <td>
                    ${student.account}
                </td>
                <td><label>专业班级</label></td>
                <td>
                    ${student.info.grade}级${student.info.clazz}
                </td>
            </tr>
            <tr>
                <td><label>申请类型</label></td>
                <td>
                    ${goodDelay.applytype eq 1 ? "争优":"延期"}
                </td>
                <td><label>申请日期</label></td>
                <td> <fmt:formatDate value="${goodDelay.cdate}" pattern="yyyy.MM.dd"/></td>
            </tr>
            <tr>
                <td><label>学生申请理由</label></td>
                <td  colspan="5">
                    <pre>
                        ${goodDelay.reason}
                    </pre>
                </td>
            </tr>
            <tr>
                <td><label>指导老师意见</label></td>
                <td colspan="5">
                    <pre>
                        ${goodDelay.advice}
                    </pre>
                </td>
            </tr>
            <tr>
                <td><label>指导老师确认</label></td>
                <td colspan="5">
                    <c:if test="${goodDelay ne null}">
                        <c:if test="${goodDelay.teacherconf eq 1}">
                            已确认
                        </c:if>
                        <c:if test="${goodDelay.teacherconf eq -1}">
                            拒绝申请
                        </c:if>
                        <c:if test="${goodDelay.teacherconf eq 0}">
                            未确认
                        </c:if>
                    </c:if>
                </td>
            </tr>
            <tr>
                <td><label>院系意见</label></td>
                <td colspan="5">
                    <pre>
                        ${goodDelay.review}
                    </pre>
                </td>
            </tr>
            <tr>
                <td><label>院系确认</label></td>
                <td colspan="5">
                    <c:if test="${goodDelay ne null}">
                        <c:if test="${goodDelay.orgconf eq 1}">
                            已确认
                        </c:if>
                        <c:if test="${goodDelay.orgconf eq -1}">
                            拒绝申请
                        </c:if>
                        <c:if test="${goodDelay.orgconf eq 0}">
                            未确认
                        </c:if>
                    </c:if>
                </td>
            </tr>
            </tbody>
        </table>
</div>
<div style="padding:5px;" class="dialog-button">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="applyForm.clearForm()" iconCls="icon-cancel">返回</a>
</div>


<script type="text/javascript">
    var applyForm = {
        clearForm: function(){
            $("#dlg").dialog("close");
        }
    }
</script>
