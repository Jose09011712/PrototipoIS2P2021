using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaModelo2P;
namespace CapaControlador2P
{
    
    public class ClsControlador
    {
        ClsSentencias Sn = new ClsSentencias();
        public string[] funcItems(string Tabla, string estado, string Campo)
        {
            string[] Items = Sn.funcLlenarCmb(Tabla, estado, Campo);
            return Items;
        }

        public int funcCodigoMaximo(string Tabla, string Campo)
        {
            int CodigoNuevo = Sn.funcObtenerCodigo(Tabla, Campo);
            return CodigoNuevo;
        }

        public void procDatosInsertar(string tabla, List<string> lista)
        {
            Sn.procInsertarDatos(tabla, lista);
        }


    }
}
