using System;

namespace TrabajoFinal
{
    public partial class FormularioCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonMismaFactura_Click(object sender, EventArgs e)
        {
            bool resultado;
            Controladora.Detalle controladora = new Controladora.Detalle();

            Entidades.Detalle entidadDetalle = new Entidades.Detalle
            {
                CANTIDAD = long.Parse(CampoCantidad.Text),
                TOTAL = long.Parse(CampoTotal.Text),
                IDPRODUCTO = long.Parse(CampoIDProducto.Text),
                IDVENTA = long.Parse(CampoIDVenta1.Text)
            };

            resultado = controladora.CrearDetalle(entidadDetalle);

            if (resultado)
            {
                EtiquetaConfirmacion.Text = "Se ha realizado la compra en la factura " + CampoIDVenta1.Text;
                EtiquetaConfirmacion.CssClass = "alert-success";
            }

            else
            {
                EtiquetaConfirmacion.Text = "No se pudo realizar la compra. ";
                EtiquetaConfirmacion.CssClass = "alert-danger";
            }
        }

        protected void BotonNuevaFactura_Click(object sender, EventArgs e)
        {
            bool resultado;
            Controladora.Venta controladora = new Controladora.Venta();

            Entidades.Venta entidadVenta = new Entidades.Venta
            {
                ID = long.Parse(CampoIDVenta2.Text),
                FECHA = DateTime.Now.ToLongDateString() + DateTime.Now.ToLongTimeString(),
                DESCUENTO = 0,
                IDCLIENTE = 287960
            };

            resultado = controladora.CrearVenta(entidadVenta);

            if(resultado)
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