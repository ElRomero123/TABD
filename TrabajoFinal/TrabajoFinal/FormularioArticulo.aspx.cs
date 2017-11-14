using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoFinal
{
    public partial class FormularioArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void BotonLimpiar_Click(object sender, EventArgs e)
        {
            CampoIDProducto.Text = "";
            EtiquetaNombre.Text = "";
            EtiquetaPrecio.Text = "";
            EtiquetaStock.Text = "";
            EtiquetaIDProveedor.Text = "";
            EtiquetaIDCategoria.Text = ""; 
        }
    }
}