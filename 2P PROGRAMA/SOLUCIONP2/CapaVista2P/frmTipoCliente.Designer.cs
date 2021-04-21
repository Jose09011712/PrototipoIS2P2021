
namespace CapaVista2P
{
    partial class frmTipoCliente
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.rdInactivo = new System.Windows.Forms.RadioButton();
            this.rdActivo = new System.Windows.Forms.RadioButton();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.txtTipoCliente = new System.Windows.Forms.TextBox();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(34, 272);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 17);
            this.label3.TabIndex = 19;
            this.label3.Text = "estado";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(34, 228);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 17);
            this.label2.TabIndex = 18;
            this.label2.Text = "Tipo Cliente";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(34, 182);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 17);
            this.label1.TabIndex = 17;
            this.label1.Text = "Codigo";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(515, 177);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(581, 211);
            this.dataGridView1.TabIndex = 16;
            // 
            // rdInactivo
            // 
            this.rdInactivo.AutoSize = true;
            this.rdInactivo.Location = new System.Drawing.Point(289, 268);
            this.rdInactivo.Name = "rdInactivo";
            this.rdInactivo.Size = new System.Drawing.Size(77, 21);
            this.rdInactivo.TabIndex = 15;
            this.rdInactivo.TabStop = true;
            this.rdInactivo.Text = "inactivo";
            this.rdInactivo.UseVisualStyleBackColor = true;
            this.rdInactivo.CheckedChanged += new System.EventHandler(this.rdInactivo_CheckedChanged);
            // 
            // rdActivo
            // 
            this.rdActivo.AutoSize = true;
            this.rdActivo.Location = new System.Drawing.Point(163, 268);
            this.rdActivo.Name = "rdActivo";
            this.rdActivo.Size = new System.Drawing.Size(66, 21);
            this.rdActivo.TabIndex = 14;
            this.rdActivo.TabStop = true;
            this.rdActivo.Text = "activo";
            this.rdActivo.UseVisualStyleBackColor = true;
            this.rdActivo.CheckedChanged += new System.EventHandler(this.rdActivo_CheckedChanged);
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(303, 304);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(96, 22);
            this.txtEstado.TabIndex = 13;
            this.txtEstado.Tag = "estado";
            this.txtEstado.Visible = false;
            this.txtEstado.TextChanged += new System.EventHandler(this.txtEstado_TextChanged);
            // 
            // txtTipoCliente
            // 
            this.txtTipoCliente.Location = new System.Drawing.Point(163, 223);
            this.txtTipoCliente.Name = "txtTipoCliente";
            this.txtTipoCliente.Size = new System.Drawing.Size(236, 22);
            this.txtTipoCliente.TabIndex = 12;
            this.txtTipoCliente.Tag = "tipoCliente";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(163, 177);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(236, 22);
            this.txtCodigo.TabIndex = 11;
            this.txtCodigo.Tag = "idTipoCliente";
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(23, 25);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 10;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // frmTipoCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1512, 418);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.rdInactivo);
            this.Controls.Add(this.rdActivo);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtTipoCliente);
            this.Controls.Add(this.txtCodigo);
            this.Controls.Add(this.navegador1);
            this.Name = "frmTipoCliente";
            this.Text = "frmTipoCliente";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.RadioButton rdInactivo;
        private System.Windows.Forms.RadioButton rdActivo;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.TextBox txtTipoCliente;
        private System.Windows.Forms.TextBox txtCodigo;
        private CapaVistaNavegador.Navegador navegador1;
    }
}