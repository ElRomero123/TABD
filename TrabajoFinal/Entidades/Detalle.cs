using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Detalle
    {
        public long ID { get; set; }
        public long CANTIDAD { get; set; }
        public long TOTAL { get; set; }
        public long IDVENTA { get; set; }
        public long IDPRODUCTO { get; set; }
        public string ARTICULO { get; set; }
    }
}
