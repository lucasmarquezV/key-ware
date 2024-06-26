<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salas na TV</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
        <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
        <link rel="stylesheet" href="styles/page.css">
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/header.jspf" %>
        <div id="app" class="container">
            <div v-if="shared.session">
                <div v-if="error" class="alert alert-danger m-2" role="alert">
                    {{ error }}
                </div>
                <div v-else class="normal-page">
                    <div class="wrapper">
                        <table class="table">
                            <tr>
                                <th>REQUISITANTE</th>
                                <th>MATERIA</th>
                                <th>SALA</th>
                            </tr>
                            <tr v-for="item in list" :key="item.rowid">
                                <td v-if="item.employeeType === 'PROFESSOR' || item.employeeType === 'MONITOR'"> {{ item.employeeName }} </td>
                                <td v-if="item.employeeType === 'PROFESSOR' || item.employeeType === 'MONITOR'"> {{ item.subjectName }} </td>
                                <td v-if="item.employeeType === 'PROFESSOR' || item.employeeType === 'MONITOR'"> {{ item.roomName }} </td>
                            </tr>
                        </table>                   
                    </div>
                </div>
            </div>
        </div>

        <script src="scripts/tv.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
