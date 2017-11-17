using System;

namespace TrabajoFinal
{
    public partial class FormularioCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonNuevaFactura_Click(object sender, EventArgs e)
        {
            bool resultado;
            Controladora.Venta controladora = new Controladora.Venta();
            Controladora.Detalle detalle = new Controladora.Detalle();
            Controladora.Producto producto = new Controladora.Producto();

            Entidades.Producto entidadProducto = producto.BuscarArticulo(long.Parse(CampoIDProducto.Text))[0];

            if (producto.ActualizarStock(int.Parse(CampoCantidad.Text), long.Parse(CampoCantidad.Text)))
            {
                Entidades.Venta entidadVenta = new Entidades.Venta
                {
                    ID = long.Parse(CampoIDVenta2.Text),
                    FECHA = DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToLongTimeString(),
                    DESCUENTO = 0,
                    IDCLIENTE = long.Parse(CampoIDCliente.Text)
                };

                Entidades.Detalle entidadDetalle = new Entidades.Detalle
                {
                    CANTIDAD = long.Parse(CampoCantidad.Text),
                    TOTAL = long.Parse(CampoTotal.Text),
                    IDVENTA = long.Parse(CampoIDVenta2.Text),
                    IDPRODUCTO = long.Parse(CampoIDProducto.Text)
                };

                resultado = controladora.CrearVenta(entidadVenta) && detalle.CrearDetalle(entidadDetalle);

                if (resultado)
                {
                    EtiquetaConfirmacion.Text = "Se ha creado la factura. ";
                    EtiquetaConfirmacion.CssClass = "alert-success";
                }

                else
                {
                    EtiquetaConfirmacion.Text = "No se pudo crear la factura. ";
                    EtiquetaConfirmacion.CssClass = "alert-danger";
                }
            }
            else
            {
                EtiquetaConfirmacion.Text = "No hay cantidad disponible en stock. ";
                EtiquetaConfirmacion.CssClass = "alert-danger";
            }
            
        }

        protected void BotonArticulo_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioArticulo.aspx");
        }

        protected void BotonComportamiento_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioComportamiento.aspx");
        }
    }
}