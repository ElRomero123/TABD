using System;
using System.Collections.Generic;

namespace TrabajoFinal
{
    public partial class FormularioArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonBuscar_Click(object sender, EventArgs e)
        {
            long.TryParse(CampoIDProducto.Text, out long ID);
                ;
            Controladora.Articulo controladora = new Controladora.Articulo();
            List<Entidades.Articulo> lista = controladora.BuscarArticulo(ID);
            EtiquetaInformacionArticulos.Text = "Artículos encontrados.";
            gdvArticulos.DataSource = lista;
            gdvArticulos.DataBind();
        }

        protected void BotonLimpiar_Click(object sender, EventArgs e)
        {
            EtiquetaInformacionArticulos.Text = "";
            gdvArticulos.DataSource = null;
            gdvArticulos.DataBind();
        }
    }
}