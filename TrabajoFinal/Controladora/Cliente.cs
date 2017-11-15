using System.Collections.Generic;
using System.Linq;

namespace Controladora
{
    public class Cliente
    {
        Broker.BDVentasOnlineEntities db = new Broker.BDVentasOnlineEntities();

        public bool Validar(long ID, string Password)
        {
            bool answer = false;
            string[] arreglo;
            List<string> lista = new List<string>();

            var query = from m in db.CLIENTEs
                        where (m.ID == ID)
                        select new {m.CONTRASENA};

            foreach (var item in query)
            {  
                 string resultado = item.CONTRASENA;
                 lista.Add(resultado);
            }

            arreglo = lista.ToArray();

            if(arreglo.Length > 0)
            {
                if (arreglo[0] == Password)
                {
                    answer = true;
                }
            }
          
            return answer;
        }
    }
}
