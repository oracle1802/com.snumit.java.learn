<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="puserlist">
    <br/>
    <div id='parent' style='width: 100%; text-align:center; '>
        <%--Расположение формы по центру--%>

        <div id='child' style='display: inline-block' ;>
            <sf:form method="POST" modelAttribute="user">
                <fieldset>
                    <table style="border-spacing: 4px">
                        <tr >
                            <th style="text-align: right">
                                <label  for="last_name" >Фамилия:</label>
                            </th>
                            <td >
                                <sf:input path="lastName" size="15" maxlength="15" id="last_name" cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <small id="lastName_msg">No spaces, please.</small>
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: right">
                                <label for="first_name" >Имя:</label>
                            </th>
                            <td>
                                <sf:input path="firstName" size="15" maxlength="15" id="first_name" cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <small id="first_name_msg">No spaces, please.</small>
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: right">
                                <label for="middle_name">Отчество:</label>
                            </th>
                            <td>
                                <sf:input path="middleName" size="15" maxlength="15" id="middle_name" cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <small id="middle_name_msg">No spaces, please.</small>
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: right">
                                <label for="user_name">User:</label>
                            </th>
                            <td>
                                <sf:input path="userName" size="15" maxlength="15" id="user_name" cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <small id="username_msg">No spaces, please.</small>
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: right">
                                <label for="user_password">Password:</label>
                            </th>
                            <td>
                                <sf:password path="password" size="30" showPassword="true" id="user_password" cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <small>6 characters or more (be tricky!)</small>
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: right">
                                <label for="user_email">Email:</label>
                            </th>
                            <td>
                                <sf:input path="email" size="30" id="user_email"  cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <small>In case you foget something</small>
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: right"></th>
                            <td style="text-align: right">
                                <sf:checkbox path="updateByEmail" id="user_send_email_newsletter" cssStyle="width: 95%"/>
                            </td>
                            <td style="text-align: left">
                                <label for="user_send_email_newsletter">Send me email updates!</label>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </sf:form>
        </div>
    </div>
</div>