
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
    }
}
