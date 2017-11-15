using System;

namespace Entidades
{
    [Serializable]
    public class Cliente
    {
        public long ID { get; set; }
        public string NOMBRE { get; set; }
        public string DIRECCION { get; set; }
        public string CONTRASENA { get; set; }
    }
}
