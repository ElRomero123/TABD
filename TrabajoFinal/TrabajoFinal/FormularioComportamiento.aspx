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
                                <asp:Button ID="BotonBuscarUsuario" runat="server" Text="Mostrar Usuarios" CssClass="btn btn-primary" OnClick="BotonBuscarUsuario_Click"/>
                                <asp:Button ID="BotonBuscarComportamiento" runat="server" Text="Buscar comportamiento para este usuario" CssClass="btn btn-danger" OnClick="BotonBuscarComportamiento_Click"/> 
                                <asp:Button ID="BotonLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-primary" OnClick="BotonLimpiar_Click"/> 
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta2" runat="server" Text="Nombre: "></asp:Label>
                                <asp:Label ID="EtiquetaNombre" runat="server"></asp:Label>  
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta3" runat="server" Text="Comentarios: "></asp:Label>
                                <asp:Label ID="EtiquetaComentarios" runat="server"></asp:Label>  
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta4" runat="server" Text="Deseos: "></asp:Label>
                                <asp:Label ID="EtiquetaDeseos" runat="server"></asp:Label>  
                        </div>

                        <div class="form-group">
                                <asp:Label ID="Etiqueta5" runat="server" Text="Busquedas: "></asp:Label>
                                <asp:Label ID="EtiquetaBusquedas" runat="server"></asp:Label>  
                        </div>

                        <div class="form-group">

                                    <asp:Label ID="EtiquetaInformacionClientes" runat="server"></asp:Label>
                                            
                                    <asp:GridView ID="gdvClientes" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                                
                                        <Columns>  
                                            <asp:BoundField DataField="ID" HeaderText="Id" />
                                            <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" />
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
