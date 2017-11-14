<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="TrabajoFinal.FormularioArticulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Artículos disponibles</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    <form id="FormularioArticulo" runat="server">
         
          <h1>Consulta de artículos disponibles.</h1>

          <div class="container">
                        
                        <div class="form-group">
                                <asp:Label ID="Etiqueta1" runat="server" Text="ID producto: "></asp:Label>
                                <asp:TextBox ID="CampoIDProducto" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvIDProducto" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoIDProducto" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta2" runat="server" Text="Nombre: "></asp:Label>
                               <asp:Label ID="EtiquetaNombre" runat="server"></asp:Label>
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta3" runat="server" Text="Precio: "></asp:Label>
                               <asp:Label ID="EtiquetaPrecio" runat="server"></asp:Label>

                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta4" runat="server" Text="Stock: "></asp:Label>
                               <asp:Label ID="EtiquetaStock" runat="server"></asp:Label>
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta5" runat="server" Text="ID proveedor: "></asp:Label>
                               <asp:Label ID="EtiquetaIDProveedor" runat="server"></asp:Label>
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta6" runat="server" Text="ID categoría: "></asp:Label>
                               <asp:Label ID="EtiquetaIDCategoria" runat="server"></asp:Label>
                        </div>

                        <div class="form-group">
                                <asp:Button ID="BotonBuscar" runat="server" Text="Buscar artículo" CssClass="btn btn-primary" OnClick="BotonBuscar_Click"/>
                                <asp:Button ID="BotonLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-danger" OnClick="BotonLimpiar_Click"/>
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta7" runat="server" Text="Puede buscar un artículo con su ID, si quiere ver todo introduzca ID=-1."></asp:Label>
                        </div>

            </div>

    </form>
</body>
</html>
