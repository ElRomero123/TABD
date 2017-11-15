<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioLogin.aspx.cs" Inherits="TrabajoFinal.FormularioLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar sesión</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    <form id="FormularioLogin" runat="server">

              <h1>Iniciar sesión.</h1>

              <div class="container">

                        <div class="form-group">
                                <asp:Label ID="Etiqueta1" runat="server" Text="ID usuario: "></asp:Label>
                                <asp:TextBox ID="CampoID" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvID" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoID" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta2" runat="server" Text="Contraseña: "></asp:Label>
                                <asp:TextBox ID="CampoPassword" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoPassword" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                                <asp:Button ID="BotonValidar" runat="server" Text="Iniciar sesión" CssClass="btn btn-primary" OnClick="BotonValidar_Click"/>
                                <asp:Button ID="BotonLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-danger" OnClick="BotonLimpiar_Click"/>
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta3" runat="server" Text="Otras opciones"></asp:Label>
                        </div>

                        <div class="form-group">
                                <asp:Button ID="BotonArticulo" runat="server" Text="Ver artículos disponibles" CssClass="btn btn-danger" OnClick="BotonArticulo_Click"/>
                                <asp:Button ID="BotonHistorial" runat="server" Text="Ver historial de compra" CssClass="btn btn-danger" OnClick="BotonHistorial_Click"/>
                                <asp:Button ID="BotonComportamiento" runat="server" Text="Ver comportamiento de usuarios" CssClass="btn btn-danger" OnClick="BotonComportamiento_Click"/> 
                        </div>

                        <div class="form-group">
                                <asp:Label ID="EtiquetaConfirmacion" runat="server"></asp:Label>
                        </div>
              </div>
    </form>
</body>
</html>
