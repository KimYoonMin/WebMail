<%@page import="java.net.URLEncoder"%>
<%@page import="mail.SendEmail"%>
<%@page import="web.User"%>
<%@page import="web.UserMapper"%>
<%@ page import="java.io.*, java.util.*, java.sql.*"%>
<%@ page import="org.apache.ibatis.io.Resources"%>
<%@ page import="org.apache.ibatis.session.*"%>
<%@ page import="org.mariadb.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="subject" value="${ param.subject }" />
<c:set var="message" value="${ param.message }" />
<c:set var="from_email" value="${ sessionScope.name }" />
<c:set var="to_email" value="${ param.to_email }" />
<c:set var="sendYn" value="${ param.sendYn }" />
<!doctype html>
<html>
    <head>
        <title>Send Mail</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
        <link href='custom.css' rel='stylesheet' type='text/css'>
    </head>
    <body>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js" integrity="sha256-dHf/YjH1A4tewEsKUSmNnV05DDbfGN3g7NMq86xgGh8=" crossorigin="anonymous"></script>
        <script src="contact.js"></script>
<c:if test="${sendYn != 'Y' }">
<form id="contact-form" method="post" role="form">
	<input type="hidden" id="sendYn" name="sendYn" value="Y"/>
    <div class="messages"></div>

    <div class="controls">

        <div class="row">
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="form_email">From Email *</label>
                    <input id="from_email" type="email" name="from_email" class="form-control" placeholder="Please enter from email *" required="required" data-error="Valid email is required." value="${from_email}" readonly="readonly">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="to_email">To Email *</label>
                    <input id="to_email" type="email" name="to_email" class="form-control" placeholder="Please enter to email *" required="required" data-error="Valid email is required." value="${to_email}">
                    <div class="help-block with-errors"></div>
                </div>
            </div></br>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="subject">Subject *</label>
                    <input id="subject" type="text" name="subject" class="form-control" placeholder="Please enter subject *" required="required" value="${subject}">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="form_message">Message *</label>
                    <textarea id="form_message" name="message" class="form-control" placeholder="Message for me *" rows="4" required="required" data-error="Please, leave us a message.">${message}</textarea>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            <div class="col-md-12">
                <input type="submit" class="btn btn-success btn-send" value="Send message">
            </div>
        </div>
    </div>

</form>
</c:if>

<c:if test="${sendYn == 'Y' }">
<%
	String from_email = (String)pageContext.getAttribute("from_email");
	String to_email = (String)pageContext.getAttribute("to_email");
	String subject = (String)pageContext.getAttribute("subject");
	String message = (String)pageContext.getAttribute("message");
	SendEmail sendEmail = new SendEmail(from_email,to_email,subject,message);
	String result = sendEmail.send();
	pageContext.setAttribute("result", result);
%>
<c:out value="${result}"/>
</c:if>
    </body>
</html>
