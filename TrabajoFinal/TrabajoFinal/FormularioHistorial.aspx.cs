using System;

namespace TrabajoFinal
{
    public partial class FormularioHistorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BotonBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void BotonLimpiar_Click(object sender, EventArgs e)
        {
            CampoID.Text = "";
            EtiquetaFecha.Text = "";
            EtiquetaIDCliente.Text = "";
            EtiquetaNombre.Text = "";
        }
    }
}