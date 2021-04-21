using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo2P
{
    public class ClsSentencias
    {
        ClsConexion Con = new ClsConexion();
        public string[] funcLlenarCmb(string Tabla, string estado, string Campo)
        {
            string[] Campos = new string[100];
            int I = 0;
            string Sql = "SELECT " + Campo + " FROM " + Tabla + " WHERE " + estado + " = 1 ;";
            try
            {
                OdbcCommand Command = new OdbcCommand(Sql, Con.conexion());
                OdbcDataReader Reader = Command.ExecuteReader();
                while (Reader.Read())
                {
                    Campos[I] = Reader.GetValue(0).ToString();
                    I++;
                }
            }
            catch (Exception Ex) { Console.WriteLine(Ex.Message.ToString() + " \nError en asignarCombo, revise los parametros \n -" + Tabla + "\n -" + Campo); }
            return Campos;
        }



    }
}
