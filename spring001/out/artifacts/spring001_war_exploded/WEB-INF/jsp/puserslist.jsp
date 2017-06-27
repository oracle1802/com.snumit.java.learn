<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>--%>
<%--<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ol class="breadcrumb" style="margin-top:2px; margin-bottom:2px;">
    <li class="breadcrumb-item"><a href="/">Home</a></li>
    <li class="breadcrumb-item"><a href="/admmin">Adminstrate</a></li>
    <li class="breadcrumb-item active">Users</li>
</ol>

<div class="card">
    <div class="card-header">
        <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
        <h4>Users list</h4>
        <button type="button" class="btn btn-primary" onclick="reloadTableBodyByJsonData('/html/somejson.html', 'tbody#tableresultsbody')">Search</button>
    </div>

    <div class="card-block" style="padding: 0px;">
        <%
            int cntr = 1;
        %>

        <table class="table table-responsive table-hover">
            <thead class="thead-default">
            <tr>
                <th>#</th>
                <th>User Ident</th>
                <th>Login Name</th>

                <th>Is account non expired</th>
                <th>Is account non locked</th>
                <th>Is credentials non expired</th>
                <th>Is enabled</th>

                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>

                <th>Created date</th>

            </tr>
            </thead>
            <tbody id="tableresultsbody">
            <c:if test="${not empty serviceUser}">
                <c:forEach var="user" items="${serviceUser.findAllPage(0,10)}">
                    <tr >
                        <th scope="row"><%=cntr++%></th>
                        <td>${user.getUserId()}</td>
                        <td>${user.getLoginName()}</td>

                        <td>${user.isAccountNonExpired()}</td>
                        <td>${user.isAccountNonLocked()}</td>
                        <td>${user.isCredentialsNonExpired()}</td>
                        <td>${user.isEnabled()}</td>

                        <td>${user.getFirstName()}</td>
                        <td>${user.getMiddleName()}</td>
                        <td>${user.getLastName()}</td>

                        <td>${user.getDateAdd()}</td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>
        <div class="card-footer">
            <button type="button" class="btn btn-primary" onclick="onNewUserClick()">New user</button>
            <button type="button" class="btn btn-primary">Detail Info</button>
            <button type="button" class="btn btn-primary">Edit</button>
        </div>
    </div>
</div>
<%--modal dialog "add user"--%>
<div id="modalAddUser" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">New user</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
            </div>

            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="emailInput">Email address as user identifier</label>
                        <input type="email" class="form-control" id="emailInput" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="loginNameInput">Login name</label>
                        <input type="email" class="form-control" id="loginNameInput" aria-describedby="emailHelp" placeholder="Enter login name">
                        <small id="loginNameHelp" class="form-text text-muted">As name which will shown for other users.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="firstNameInput">First name</label>
                        <input type="email" class="form-control" id="firstNameInput" aria-describedby="emailHelp" placeholder="">
                        <small id="firstNameHelp" class="form-text text-muted"></small>
                    </div>
                    <div class="form-group">
                        <label for="middleNameInput">Middle name</label>
                        <input type="email" class="form-control" id="middleNameInput" aria-describedby="emailHelp" placeholder="">
                        <small id="middleNameHelp" class="form-text text-muted"></small>
                    </div>
                    <div class="form-group">
                        <label for="secondNameInput">Last name</label>
                        <input type="email" class="form-control" id="secondNameInput" aria-describedby="emailHelp" placeholder="">
                        <small id="secondNameHelp" class="form-text text-muted"></small>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">Is account non expired </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">Is account non locked </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">Is credentials non expired </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">Is enabled </label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Create user</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    /*show modal dialog*/
    function onNewUserClick() {
        $('#modalAddUser').modal('show');
//        $('#myModal').modal('toggle');
//        $('#myModal').modal('show');
//        $('#myModal').modal('hide');
    }



</script>