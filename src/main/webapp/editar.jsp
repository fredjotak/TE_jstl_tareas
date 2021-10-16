<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Tareas</title>
    </head>
    <body>
        <section>
            <h1>
                <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request">
                    Registro de 
                </c:if>
                    <c:if test="${requestScope.op == 'modificar'}" var="res" scope="request">
                    Modificar 
                </c:if>
                tarea
            </h1>
            <jsp:useBean id="miTarea" scope="request" class="com.emergentes.modelo.Tarea" />
            
            <form action="Controller" method="POST">
                <label for="nroId">Id: </label>
                <input type="number" id="nroId" name="nroId" value="<jsp:getProperty name="miTarea" property="id" />" required/>
                <br />
                
                <label for="txtTarea">Tarea: </label>
                <input type="text" id="txtTarea" name="txtTarea" value="<jsp:getProperty name="miTarea" property="tarea" />" required />
                <br />
                
                <label for="cbPrioridad">Prioridad</label>
                <select id="cbPrioridad" name="cbPrioridad">
                    <option value="Alta"
                            <c:if test="${miTarea.prioridad == 'Alta'}" var="res" scope="request">
                                selected
                            </c:if>
                    >Alta</option>
                    <option value="Media"
                            <c:if test="${miTarea.prioridad == 'Media'}" var="res" scope="request">
                                selected
                            </c:if>
                    >Media</option>
                    <option value="Baja"
                            <c:if test="${miTarea.prioridad == 'Baja'}" var="res" scope="request">
                                selected
                            </c:if>
                    >Baja</option>
                </select>
                <br />
                <input type="hidden" name="opg" value="${requestScope.op}"/>
                <input type="hidden" name="op" value="grabar" />
                
                <input type="submit" value="Enviar" />
            </form>
        </section>
        <footer>
            2021
        </footer>
    </body>
</html>
