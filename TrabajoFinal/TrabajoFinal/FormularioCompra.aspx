<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioCompra.aspx.cs" Inherits="TrabajoFinal.FormularioCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Compra de artículos</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    <form id="FormularioCompra" runat="server">
           
           <h1>Compra de artículos deportivos.</h1>

           <div class="container">
                    
                    <div class="form-group">
                            <asp:Label ID="Etiqueta1" runat="server" Text="ID detalle: "></asp:Label>
                            <asp:TextBox ID="CampoIDDetalle" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvIDDetalle" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoIDDetalle" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                            <asp:Label ID="Etiqueta2" runat="server" Text="ID producto: "></asp:Label>
                            <asp:TextBox ID="CampoIDProducto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvIDProducto" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoIDProducto" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                            <asp:Label ID="Etiqueta3" runat="server" Text="Cantidad: "></asp:Label>
                            <asp:TextBox ID="CampoCantidad" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCantidad" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoCantidad" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                            <asp:Label ID="Etiqueta4" runat="server" Text="Total: "></asp:Label>
                            <asp:TextBox ID="CampoTotal" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTotal" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoTotal" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                            <asp:Button ID="BotonMismaFactura" runat="server" Text="Comprar en la misma factura" CssClass="btn btn-primary" OnClick="BotonMismaFactura_Click"/>
                            <asp:Button ID="BotonNuevaFactura" runat="server" Text="Generar nueva factura" CssClass="btn btn-primary" OnClick="BotonNuevaFactura_Click"/>
                    </div>

                    <div class="form-group">
                            <asp:Label ID="Etiqueta5" runat="server" Text="Otras opciones"></asp:Label>
                    </div>

                    <div class="form-group">
                            <asp:Button ID="BotonArticulo" runat="server" Text="Ver artículos disponibles" CssClass="btn btn-danger" OnClick="BotonArticulo_Click"/>
                            <asp:Button ID="BotonComportamiento" runat="server" Text="Ver comportamiento de usuarios" CssClass="btn btn-danger" OnClick="BotonComportamiento_Click"/>
                    </div>

            </div>
    </form>
</body>
</html>
