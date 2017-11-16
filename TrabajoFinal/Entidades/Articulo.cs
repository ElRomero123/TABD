using System;

namespace Entidades
{
    [Serializable]
    public class Articulo
    {
        public long ID { get; set; }
        public string NOMBRE { get; set; }
        public long PRECIO { get; set; }
        public string STOCK { get; set; }
        public long IDPROVEEDOR { get; set; }
        public long IDCATEGORIA { get; set; }
    }
}
