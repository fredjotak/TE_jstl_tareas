<%@page import="com.emergentes.modelo.Tarea"%>
<%@page import="com.emergentes.modelo.GestorTareas"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    if (session.getAttribute("agenda")==null){
        GestorTareas objetoGT = new GestorTareas();
        
        objetoGT.insertarTarea(new Tarea(1, "Reunión con Estudiantes", "Alta"));
        objetoGT.insertarTarea(new Tarea(2, "Estudiar para el examen de Estadística", "Alta"));
        objetoGT.insertarTarea(new Tarea(3, "Partido de futsal", "Baja"));
        
        session.setAttribute("agenda", objetoGT);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Tareas</title>
    </head>
    <body>
        <section>
            <h1>Lista de Tareas</h1>
            <a href="Controller?op=nuevo">Nuevo</a> <br>
            
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Tarea</th>
                    <th>Prioridad</th>
                    <th colspan="2">Acción</th>
                </tr>
                <c:forEach var="item" items="${sessionScope.agenda.getListaTareas()}" >
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.tarea}</td>
                        <td>${item.prioridad}</td>
                        <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                        <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </section>
        <footer>
            2021
        </footer>
    </body>
</html>
