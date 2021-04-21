
namespace CapaVista2P
{
    partial class frmTipoVideo
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
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.txtTipoVideo = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.rdActivo = new System.Windows.Forms.RadioButton();
            this.rdInactivo = new System.Windows.Forms.RadioButton();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(153, 165);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(236, 22);
            this.txtCodigo.TabIndex = 1;
            this.txtCodigo.Tag = "idTipoVideo";
            // 
            // txtTipoVideo
            // 
            this.txtTipoVideo.Location = new System.Drawing.Point(153, 211);
            this.txtTipoVideo.Name = "txtTipoVideo";
            this.txtTipoVideo.Size = new System.Drawing.Size(236, 22);
            this.txtTipoVideo.TabIndex = 2;
            this.txtTipoVideo.Tag = "TipoVideo";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(293, 292);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(96, 22);
            this.txtEstado.TabIndex = 3;
            this.txtEstado.Tag = "estado";
            this.txtEstado.Visible = false;
            this.txtEstado.TextChanged += new System.EventHandler(this.txtEstado_TextChanged);
            // 
            // rdActivo
            // 
            this.rdActivo.AutoSize = true;
            this.rdActivo.Location = new System.Drawing.Point(153, 256);
            this.rdActivo.Name = "rdActivo";
            this.rdActivo.Size = new System.Drawing.Size(66, 21);
            this.rdActivo.TabIndex = 4;
            this.rdActivo.TabStop = true;
            this.rdActivo.Text = "activo";
            this.rdActivo.UseVisualStyleBackColor = true;
            this.rdActivo.CheckedChanged += new System.EventHandler(this.rdActivo_CheckedChanged);
            // 
            // rdInactivo
            // 
            this.rdInactivo.AutoSize = true;
            this.rdInactivo.Location = new System.Drawing.Point(279, 256);
            this.rdInactivo.Name = "rdInactivo";
            this.rdInactivo.Size = new System.Drawing.Size(77, 21);
            this.rdInactivo.TabIndex = 5;
            this.rdInactivo.TabStop = true;
            this.rdInactivo.Text = "inactivo";
            this.rdInactivo.UseVisualStyleBackColor = true;
            this.rdInactivo.CheckedChanged += new System.EventHandler(this.rdInactivo_CheckedChanged);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(505, 165);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(581, 211);
            this.dataGridView1.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 170);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 17);
            this.label1.TabIndex = 7;
            this.label1.Text = "Codigo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 216);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(76, 17);
            this.label2.TabIndex = 8;
            this.label2.Text = "Tipo Video";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(24, 260);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 17);
            this.label3.TabIndex = 9;
            this.label3.Text = "estado";
            // 
            // frmTipoVideo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1437, 414);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.rdInactivo);
            this.Controls.Add(this.rdActivo);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtTipoVideo);
            this.Controls.Add(this.txtCodigo);
            this.Controls.Add(this.navegador1);
            this.Name = "frmTipoVideo";
            this.Text = "frmTipoVideo";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.TextBox txtTipoVideo;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.RadioButton rdActivo;
        private System.Windows.Forms.RadioButton rdInactivo;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}