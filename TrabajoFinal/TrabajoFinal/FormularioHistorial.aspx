<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioHistorial.aspx.cs" Inherits="TrabajoFinal.FormularioHistorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Historial de compra</title>

        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


</head>
<body>
    <form id="FormularioHistorial" runat="server">
              
              <h1>Historial de compras de los usuarios.</h1>

              <div class="container">

                        <div class="form-group">
                                <asp:Label ID="Etiqueta1" runat="server" Text="Consecutivo o ID: "></asp:Label>
                                <asp:TextBox ID="CampoID" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvID" runat="server" ErrorMessage="Campo necesario!" ForeColor="Red" ControlToValidate="CampoID" ValidationGroup="Admin"></asp:RequiredFieldValidator>
                                <asp:Button ID="BotonBuscarVenta" runat="server" Text="Buscar venta/factura" CssClass="btn btn-primary" OnClick="BotonBuscarVenta_Click" />
                                
                        </div>

                        <div class="form-group">
                                <asp:Button ID="BotonBuscarDetalle" runat="server" Text="Buscar detalle para esta factura" CssClass="btn btn-primary" OnClick="BotonBuscarDetalle_Click" />
                        </div>

                        <div class="form-group">
                                <asp:Button ID="BotonLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-danger" OnClick="BotonLimpiar_Click1" />
                        </div>

                        <div class="form-group">
                               <asp:Label ID="Etiqueta3" runat="server" Text="Puede buscar una venta con su ID, si quiere ver todo introduzca ID=-1. Si quiere ver el detalle de una factura, seleccione Buscar detalle para esta factura."></asp:Label>
                        </div>

                        <div class="form-group">

                                    <asp:Label ID="EtiquetaHistorialVenta" runat="server"></asp:Label>
                                            
                                    <asp:GridView ID="gdvHistorialVenta" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                                
                                        <Columns>  
                                            <asp:BoundField DataField="ID" HeaderText="Id" />
                                            <asp:BoundField DataField="FECHA" HeaderText="Fecha" />
                                            <asp:BoundField DataField="DESCUENTO" HeaderText="Descuento" />
                                            <asp:BoundField DataField="IDCLIENTE" HeaderText="Id Cliente" />
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

                          <div class="form-group">

                                    <asp:Label ID="EtiquetaHistorialDetalle" runat="server"></asp:Label>
                                            
                                    <asp:GridView ID="gdvHistorialDetalle" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                                
                                        <Columns>  
                                            <asp:BoundField DataField="ID" HeaderText="Id" />
                                            <asp:BoundField DataField="CANTIDAD" HeaderText="Cantidad" />
                                            <asp:BoundField DataField="TOTAL" HeaderText="Total" />
                                            <asp:BoundField DataField="IDVENTA" HeaderText="Id Venta" />
                                            <asp:BoundField DataField="IDPRODUCTO" HeaderText="Id Producto" />
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
