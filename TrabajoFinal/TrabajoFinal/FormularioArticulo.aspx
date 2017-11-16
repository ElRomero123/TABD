<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="TrabajoFinal.FormularioArticulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Artículos disponibles</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

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
                                <asp:Button ID="BotonBuscar" runat="server" Text="Buscar artículo" CssClass="btn btn-primary" OnClick="BotonBuscar_Click"/>
                                <asp:Button ID="BotonLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-danger" OnClick="BotonLimpiar_Click"/>
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta7" runat="server" Text="Puede buscar un artículo con su ID, si quiere ver todo introduzca ID=-1."></asp:Label>
                        </div>


                        <div class="form-group">

                                    <asp:Label ID="EtiquetaInformacionArticulos" runat="server"></asp:Label>
                                            
                                    <asp:GridView ID="gdvArticulos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                                
                                        <Columns>  
                                            <asp:BoundField DataField="ID" HeaderText="Id" />
                                            <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" />
                                            <asp:BoundField DataField="PRECIO" HeaderText="Precio" />
                                            <asp:BoundField DataField="STOCK" HeaderText="Stock" />
                                            <asp:BoundField DataField="IDCATEGORIA" HeaderText="ID categoría" />
                                        </Columns>

                                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                        <RowStyle BackColor="White" ForeColor="#330099" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                        <SortedDescendingHeaderStyle BackColor="#7E0000" />

                                    </asp:GridView>

                        </div>
            </div>

    </form>
</body>
</html>
