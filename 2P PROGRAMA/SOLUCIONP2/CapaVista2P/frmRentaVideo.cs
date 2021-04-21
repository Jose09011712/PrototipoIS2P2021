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
    public partial class frmRentaVideo : Form
    {
        ClsControlador Cn = new ClsControlador();
        public frmRentaVideo()
        {
            InitializeComponent();
            procLlenarCmb("video", "idVideo", "estado", cmbCodigoVideo);
            procLlenarCmb("video", "video", "estado", cmbVideo);
            procLlenarCmb("cliente", "idCliente", "estado", cmbCodigoCliente);
            procLlenarCmb("cliente", "nombre", "estado", cmbCliente);
            CodigoMaximo("encabezadorentavideo", "idEncabezadoRentaVideo", txtCodigo);
        }
        public void CodigoMaximo(string tabla, string campo, TextBox txt)
        {
            string tbl = tabla;
            string cmp1 = campo;
            TextBox txt1 = txt;
            int codigo = Cn.funcCodigoMaximo(tbl, cmp1);
            txt1.Text = codigo.ToString();
            txt1.Enabled = false;
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

        private void cmbCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbCodigoCliente.SelectedIndex = cmbCliente.SelectedIndex;
        }

        private void cmbCodigoCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbCliente.SelectedIndex = cmbCodigoCliente.SelectedIndex;
        }

        private void cmbVideo_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbCodigoVideo.SelectedIndex = cmbVideo.SelectedIndex;
        }

        private void cmbCodigoVideo_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbVideo.SelectedIndex = cmbCodigoVideo.SelectedIndex;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (cmbVideo.SelectedItem == null || txtPresio.Text.Length == 0  || cmbCliente.SelectedItem == null)
            {
                MessageBox.Show("No debe dejar campos vacios");
            }
            else {
                DataGridViewRow fila = new DataGridViewRow();
                fila.CreateCells(dataGridView1);
                fila.Cells[0].Value = txtCodigo.Text;
                fila.Cells[1].Value = cmbCodigoVideo.SelectedItem.ToString();
                fila.Cells[2].Value = cmbVideo.SelectedItem.ToString();
                fila.Cells[3].Value = txtPresio.Text;
                dataGridView1.Rows.Add(fila);
            }


        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Remove(dataGridView1.CurrentRow);
        }

        private void button3_Click(object sender, EventArgs e)
        {  
            string codigo, idCliente, fecha, total;
            codigo = txtCodigo.Text;
            idCliente = cmbCodigoCliente.SelectedItem.ToString();
            fecha = dateTimePicker1.Value.ToString("yyyy-MM-dd HH:MM");
            total = txtTotal.Text;
            List<string> enzabezado = new List<string>();
            enzabezado.Add(codigo);
            enzabezado.Add(idCliente);
            enzabezado.Add(fecha);
            enzabezado.Add(total);
            Cn.procDatosInsertar("encabezadorentavideo", enzabezado);
            List<string> detalle = new List<string>();
            foreach (DataGridViewRow item in dataGridView1.Rows)
            {
                detalle.Clear();
                string CodigoDetalle = Convert.ToString(item.Cells["Column1"].Value);
                string videoDetalle = Convert.ToString(item.Cells["Column2"].Value);
                if (CodigoDetalle == "" || videoDetalle == "")
                {
                    //mensaje si esta vacio el dataGridView
                }
                else
                {
                    //Si no esta vacio, agrega las variables a una lista y las envia para guardalas
                    detalle.Add(CodigoDetalle);
                    detalle.Add(videoDetalle);
                    Cn.procDatosInsertar("detallerentavideo", detalle);
                }

            }
            dataGridView1.Rows.Clear();
            MessageBox.Show("Datos ingresados exitosamente!!!!");
            CodigoMaximo("encabezadorentavideo", "idEncabezadoRentaVideo", txtCodigo);

        }
    }
}
