<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioComportamiento.aspx.cs" Inherits="TrabajoFinal.FormularioComportamiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Comportamiento de los usuarios</title>

        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

</head>
<body>
    <form id="FormularioComportamiento" runat="server">
              
              <h1>Ver comportamiento de los usuarios.</h1>

              <div class="container">

                        <div class="form-group">
                                <asp:Label ID="Etiqueta1" runat="server" Text="ID usuario: "></asp:Label>
                                <asp:TextBox ID="CampoID" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvID" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoID" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta2" runat="server" Text="Nombre: "></asp:Label>
                                <asp:Label ID="EtiquetaNombre" runat="server"></asp:Label>  
                        </div>

                        <div class="form-group">
                                <asp:Button ID="BotonBuscarUsuario" runat="server" Text="Buscar usuario" CssClass="btn btn-primary" OnClick="BotonBuscarUsuario_Click"/>
                                <asp:Button ID="BotonBuscarComportamiento" runat="server" Text="Buscar comportamiento para este usuario" CssClass="btn btn-danger" OnClick="BotonBuscarComportamiento_Click"/> 
                        </div>

              </div>

              <div class="container">
                     <h3>Puntuacion y comentarios.</h3>
                     <h3>Lista de deseos.</h3>
                     <h3>Búsquedas y comentarios.</h3>
              </div>

    </form>
</body>
</html>
