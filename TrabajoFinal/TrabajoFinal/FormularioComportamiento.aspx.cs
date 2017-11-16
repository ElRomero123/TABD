using System;
using System.Collections.Generic;

namespace TrabajoFinal
{
    public partial class FormularioComportamiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonBuscarUsuario_Click(object sender, EventArgs e)
        {
            Controladora.Cliente controladora = new Controladora.Cliente();
            List<Entidades.Cliente> lista = controladora.BuscarCliente(-1);

            EtiquetaInformacionClientes.Text = "Clientes encontrados.";
            gdvClientes.DataSource = lista;
            gdvClientes.DataBind();
        }

        protected void BotonBuscarComportamiento_Click(object sender, EventArgs e)
        {
            Controladora.MongoBD controladora = new Controladora.MongoBD();
            string[] resultado = controladora.ConsultarComentarios(double.Parse(CampoID.Text));

            EtiquetaNombre.Text = resultado[0] + " " + resultado[1];
            EtiquetaComentarios.Text = resultado[2];
            EtiquetaDeseos.Text = resultado[3];
            EtiquetaBusquedas.Text = resultado[4];
        }

        protected void BotonLimpiar_Click(object sender, EventArgs e)
        {
            EtiquetaNombre.Text = "";
            EtiquetaComentarios.Text = "";
            EtiquetaDeseos.Text = "";
            EtiquetaBusquedas.Text = "";
            EtiquetaInformacionClientes.Text = "";
            gdvClientes.DataSource = null;
            gdvClientes.DataBind();
        }
    }
}