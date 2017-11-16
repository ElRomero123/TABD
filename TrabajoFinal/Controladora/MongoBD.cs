using System.Linq;
using MongoDB.Bson;
using MongoDB.Driver;
using Newtonsoft.Json;
using System.Data;

namespace Controladora
{
    public class MongoBD
    {
        protected static IMongoClient cliente = new MongoClient("mongodb://final:123456@ds111496.mlab.com:11496/db_final");
        protected static IMongoDatabase database = cliente.GetDatabase("db_final");

        public string[] ConsultarComentarios(double ID)
        {
            string[] resultados = new string[5];

            var coleccion = database.GetCollection<BsonDocument>("Clientes");
            var filter = Builders<BsonDocument>.Filter.Eq("_id", ID);
            var result = coleccion.Find(filter).FirstOrDefault();

            if(result != null)
            { 
                resultados[0] = result["Nombre"] != null ? result["Nombre"].ToString() : string.Empty;
                resultados[1] = result["Apellido"] != null ? result["Apellido"].ToString() : string.Empty;
                resultados[2] = result["Comentarios"] != null ? result["Comentarios"].ToString() : string.Empty;
                resultados[3] = result["Deseos"] != null ? result["Deseos"].ToString() : string.Empty;
                resultados[4] = result["Busquedas"] != null ? result["Busquedas"].ToString() : string.Empty;
            }

            else
            {
                
            }

            return resultados;
        }
    }
}
