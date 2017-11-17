using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controladora
{
    public class Venta
    {
        private Broker.BDVentasOnlineEntities db = new Broker.BDVentasOnlineEntities();

        public bool CrearVenta(Entidades.Venta venta)
        {
            bool resultado = false;
            try
            {
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
                AutoMapper.Mapper.CreateMap<Entidades.Venta, Broker.VENTA>();
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos 

                Broker.VENTA objetoVenta = AutoMapper.Mapper.Map<Broker.VENTA>(venta);
                db.VENTAs.Add(objetoVenta);
                db.SaveChanges();

                resultado = true;
            }
            catch

            {

            }
            return resultado;
        }

        public List<Entidades.Venta> BuscarVenta(long ID)
        {
            List<Entidades.Venta> lista = new List<Entidades.Venta>();

            try
            {
                var resultado = from c in db.VENTAs
                                join e in db.CLIENTEs
                                on c.IDCLIENTE equals e.ID
                                where (c.ID == ID || ID == -1)
                                select new { c.ID, c.FECHA, c.DESCUENTO, c.IDCLIENTE, e.NOMBRE };

                foreach (var item in resultado)
                {

                    Entidades.Venta venta = new Entidades.Venta
                    {
                        ID = item.ID,
                        FECHA = item.FECHA,
                        DESCUENTO = double.Parse(item.DESCUENTO.ToString()),
                        IDCLIENTE = item.IDCLIENTE,
                        CLIENTE = item.NOMBRE
                    };

                    lista.Add(venta);
                }
            }
            catch
            {

            }
            return lista;
        }
    }
}
