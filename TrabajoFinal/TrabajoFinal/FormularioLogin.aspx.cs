using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoFinal
{
    public partial class FormularioLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonValidar_Click(object sender, EventArgs e)
        {

        }
        protected void BotonLimpiar_Click(object sender, EventArgs e)
        {
            CampoID.Text = "";
            CampoPassword.Text = "";
        }

        protected void BotonArticulo_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioArticulo.aspx");
        }

        protected void BotonHistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioHistorial.aspx");
        }

        protected void BotonComportamiento_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioComportamiento.aspx");
        }
    }
}