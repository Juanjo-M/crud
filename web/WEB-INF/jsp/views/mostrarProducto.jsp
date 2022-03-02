<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecera.jsp" %>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap.min.css" />
        <script>$(document).ready(function() {
            $('#listadoTabla').DataTable({
                "paging": true,
                "buttons":true,
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
                "language": {
                    "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json"
                },
                "paginate" : true
            });
        } );
        </script>
            <h1 style="clear:both">Coneccion a Bases de Datos MYSql</h1>
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    
                </div>
                <div class="card-body ">
                    <table id="listadoTabla" class="table table-bordered table-striped table-hover">
                        <thead>
                            <th>cod_producto</th>
                            <th>descripcion</th>
                            <th>nombre</th>
                            <th>Acciones</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${producto}" var="dato">
                            <tr>
                                <td><c:out value="${dato.cod_producto}"></c:out></td>
                                <td><c:out value="${dato.descripcion}"></c:out></td>
                                <td><c:out value="${dato.nombre}"></c:out></td>
                                <td>
                                    <a href="actProducto.htm?id=${dato.cod_producto}" 
                                   class="btn btn-warning">
                                    <span class="glyphicon glyphicon-pencil"></span></a> 
<!--                                    <a href="actProducto.htm?id=${dato.cod_producto}" class="btn btn-warning">Editar</a> 
    -->                                <a href="borrarProducto.htm?id=${dato.cod_producto}" class="btn btn-danger">
                                        <span class="glyphicon glyphicon-trash"></span>
                                        </a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot>
                            <th>cod_producto</th>
                            <th>descripcion</th>
                            <th>nombre</th>
                            <th>Acciones</th>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
<%@include file="pie.jsp" %>
