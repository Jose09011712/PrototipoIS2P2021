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
    }
}
