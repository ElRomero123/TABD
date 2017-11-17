using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DA = Broker;

namespace Controladora
{
    public class Producto
    {
        private Broker.BDVentasOnlineEntities db = new Broker.BDVentasOnlineEntities();

        public List<Entidades.Producto> BuscarArticulo(long ID)
        {
            List<Entidades.Producto> lista = new List<Entidades.Producto>();

            try
            {
                var resultado = from c in db.PRODUCTOes
                                where (c.ID == ID || ID == -1)
                                select new { c.ID, c.NOMBRE, c.PRECIO, c.STOCK, c.IDPROVEEDOR, c.IDCATEGORIA };

                foreach (var item in resultado)
                {
                    Entidades.Producto Articulo = new Entidades.Producto
                    {
                        ID = item.ID,
                        NOMBRE = item.NOMBRE,
                        PRECIO = long.Parse(item.PRECIO.ToString()),
                        STOCK = item.STOCK,
                        IDCATEGORIA = item.IDCATEGORIA,
                        IDPROVEEDOR = item.IDPROVEEDOR
                    };

                    lista.Add(Articulo);
                }
            }
            catch
            {

            }
            return lista;
        }

        public bool ActualizarStock(int cantidad, long ID)
        {
            DA.PRODUCTO producto= db.PRODUCTOes.FirstOrDefault(x => x.ID == ID);
            var stock = int.Parse(producto.STOCK);
            var resultado = stock - cantidad;

            if(resultado >= 0)
            {
                producto.STOCK = resultado.ToString();
                db.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
