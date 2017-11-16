using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    [Serializable]
    public class Venta
    {
        public long ID { get; set; }
        public string FECHA { get; set; }
        public double DESCUENTO { get; set; }
        public long IDCLIENTE { get; set; }
        public string CLIENTE { get; set; }
    }
}
