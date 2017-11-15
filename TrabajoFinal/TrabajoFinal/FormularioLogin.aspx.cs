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
            long.TryParse(CampoID.Text, out long ID);
            string Password = CampoPassword.Text;
            bool request;
            Controladora.Cliente controladora = new Controladora.Cliente();

       
            request = controladora.Validar(ID, Password);

            if(request)
            {
                Response.Redirect("FormularioCompra.aspx");
            }

            else
            {
                EtiquetaConfirmacion.Text = "No se puede iniciar. Credenciales invalidas.";
                EtiquetaConfirmacion.CssClass = "alert-danger";
            }
          
        }
        protected void BotonLimpiar_Click(object sender, EventArgs e)
        {
            CampoID.Text = "";
            CampoPassword.Text = "";
            EtiquetaConfirmacion.Text = "";
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