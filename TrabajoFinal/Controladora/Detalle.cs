using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controladora
{
    public class Detalle
    {
        private Broker.BDVentasOnlineEntities db = new Broker.BDVentasOnlineEntities();

        public bool CrearDetalle(Entidades.Detalle detalle)
        {
            bool resultado = false;
            try
            {
                #pragma warning disable CS0618 // El tipo o el miembro están obsoletos
                AutoMapper.Mapper.CreateMap<Entidades.Detalle, Broker.DETALLE>();
                #pragma warning restore CS0618 // El tipo o el miembro están obsoletos 

                Broker.DETALLE objetoDetalle = AutoMapper.Mapper.Map<Broker.DETALLE>(detalle);
                db.DETALLEs.Add(objetoDetalle);
                db.SaveChanges();
                resultado = true;
            }

            catch
            {

            }
            return resultado;
        }

        public List<Entidades.Detalle> BuscarDetalle(long ID)
        {
            List<Entidades.Detalle> lista = new List<Entidades.Detalle>();

            try
            {
                var resultado = from c in db.DETALLEs
                                where (c.IDVENTA == ID)
                                select new {c.ID, c.CANTIDAD, c.TOTAL, c.IDVENTA, c.IDPRODUCTO};

                foreach (var item in resultado)
                {
                    Entidades.Detalle Detalle = new Entidades.Detalle
                    {
                        ID = item.ID,
                        CANTIDAD = long.Parse(item.CANTIDAD.ToString()),
                        TOTAL = long.Parse(item.TOTAL.ToString()),
                        IDVENTA = item.IDVENTA,
                        IDPRODUCTO = item.IDPRODUCTO
                    };

                    lista.Add(Detalle);
                }
            }
            catch
            {

            }
            return lista;
        }

    }   
}
