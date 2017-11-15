
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
    }
}
