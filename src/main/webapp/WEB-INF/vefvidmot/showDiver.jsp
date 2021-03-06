<!DOCTYPE html>

<!-- Author: Team 4 -->
<!-- Date: November 2017 -->

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Good day </title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/daginn.css"/>"/>
    </head>
    <body>
        <%@ include file="navigation.jsp" %>
        <div class="container">
            ${message.getMessage()}
            <div class="jumbotron">

                <h1>Hello ${diver.getName()}</h1>
                <p class="lead">Welcome to your dashboard. Here you can log new dives and view your current dives.</p>
                <form method="POST" commandName="diver" action="/diveForm">
                    <input class="btn btn-lg btn-primary" type="submit" value="Log new dive &raquo;"/>
                </form><br>

                <form method="GET" commandName="diver" action="/showAllDives">
                    <input class="btn btn-lg btn-outline-primary" type="submit" value="Show all dives"/>
                </form><br>

                <form method="GET" action="/allDivers">
                    <input class="btn btn-lg btn-outline-primary" type="submit" value="All divers"/>
                </form><br>

                <form method="GET" action="/addDiver">
                    <input class="btn btn-lg btn-outline-primary" type="submit" value="Add new diver"/>
                </form><br>
            </div>
        </div>
    </body>
</html>