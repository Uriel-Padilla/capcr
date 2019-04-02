<%-- 
    Document   : index
    Created on : 2/04/2019, 12:24:01 AM
    Author     : LabTW08
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%-- --%>
        <form action="index.jsp" method="GET">
            <p>
                Numero : <input type="text" name="numero">
                <input type = 'submit' name = "enviar">
            </p>
        </form>
        
        <%
            int  numero = Integer.parseInt(request.getParameter("numero"));
            Long factorial = new Long(1);
            if(numero >= 0){
                for (int i = 0; i <numero; i++) {
                    factorial *= i;
                }
                out.println("<p> El resultado de " +numero+ "! = "+ factorial+ "</p>");
            }else{
                out.println("Ingrese un numero mayor o igual a cero");
            }
            
        %>
    </body>
</html>
