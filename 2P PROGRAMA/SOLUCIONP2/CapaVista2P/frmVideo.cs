using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControlador2P;

namespace CapaVista2P
{
  
    public partial class frmVideo : Form
    {
        ClsControlador Cn = new ClsControlador();   
        string UsuarioAplicacion;
        static Form FormularioPadre;
        public frmVideo(string usuario, Form formularioPadre)
        {
            InitializeComponent();
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
            FormularioPadre = formularioPadre;
            procLlenarCmb("tipovideo", "idTipoVideo", "estado", comboBox1);
            procLlenarCmb("proveedor", "idProveedor", "estado", comboBox2);
            procLlenarCmb("tipovideo", "TipoVideo", "estado", comboBox3);
            procLlenarCmb("proveedor", "nombre", "estado", comboBox4);
            
        }

        public void procLlenarCmb(string Tabla, string Campo, string estado, ComboBox CmbAgregar)
        {
            string[] Items = Cn.funcItems(Tabla, estado, Campo);
            for (int I = 0; I < Items.Length; I++)
            {
                if (Items[I] != null)
                {
                    if (Items[I] != "")
                    {
                        CmbAgregar.Items.Add(Items[I]);
                    }
                }
            }
        }

        private void rdActivo_CheckedChanged(object sender, EventArgs e)
        {
            if (rdActivo.Checked == true)
            {
                txtEstado.Text = "1";
            }
        }

        private void rdInactivo_CheckedChanged(object sender, EventArgs e)
        {
            if (rdInactivo.Checked == true)
            {
                txtEstado.Text = "0";
            }
        }

        private void txtEstado_TextChanged(object sender, EventArgs e)
        {
            if (txtEstado.Text == "")
            {
                rdActivo.Checked = false;
                rdInactivo.Checked = false;
            }
            if (txtEstado.Text == "1")
            {
                rdActivo.Checked = true;
            }
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            navegador1.aplicacion = 1302;
            navegador1.tbl = "video";
            navegador1.campoEstado = "estado";
            navegador1.MDIformulario = FormularioPadre;
            foreach (Control C in this.Controls)
            {
                if ((C.Tag != null) && (!C.Tag.ToString().Equals("")))
                {
                    if (C is TextBox)
                    {
                        lista.Add(C);

                    }
                    else if (C is ComboBox)
                    {
                        lista.Add(C);

                    }
                    else if (C is DateTimePicker)
                    {
                        lista.Add(C);
                    }
                }
            }
            navegador1.control = lista;
            navegador1.formulario = this;
            navegador1.DatosActualizar = dataGridView1;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "";
            navegador1.ruta = "";
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox3.SelectedIndex = comboBox1.SelectedIndex;
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox4.SelectedIndex = comboBox2.SelectedIndex;
        }

        private void frmVideo_Load(object sender, EventArgs e)
        {

        }

        private void comboBox3_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = comboBox3.SelectedIndex;
        }

        private void comboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            comboBox3.SelectedIndex = comboBox1.SelectedIndex;
        }

        private void comboBox2_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            comboBox4.SelectedIndex = comboBox2.SelectedIndex;
        }

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox2.SelectedIndex = comboBox4.SelectedIndex;
        }

        private void txtEstado_TextChanged_1(object sender, EventArgs e)
        {
            if (txtEstado.Text == "")
            {
                rdActivo.Checked = false;
                rdInactivo.Checked = false;
            }
            if (txtEstado.Text == "1")
            {
                rdActivo.Checked = true;
            }
        }

        private void txtEstado_TextChanged_2(object sender, EventArgs e)
        {
            if (txtEstado.Text == "")
            {
                rdActivo.Checked = false;
                rdInactivo.Checked = false;
            }
            if (txtEstado.Text == "1")
            {
                rdActivo.Checked = true;
            }
        }
    }
}
