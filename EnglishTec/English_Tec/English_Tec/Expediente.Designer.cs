namespace English_Tec
{
    partial class Expediente
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
            this.txtCP = new System.Windows.Forms.TextBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.tctSangre = new System.Windows.Forms.TextBox();
            this.txtCalle = new System.Windows.Forms.TextBox();
            this.txtColonia = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.txtCiudad = new System.Windows.Forms.TextBox();
            this.txtNControl = new System.Windows.Forms.TextBox();
            this.txtCorreo = new System.Windows.Forms.TextBox();
            this.ckEstatus = new System.Windows.Forms.CheckBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.textnum = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // txtCP
            // 
            this.txtCP.Location = new System.Drawing.Point(620, 162);
            this.txtCP.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtCP.Name = "txtCP";
            this.txtCP.Size = new System.Drawing.Size(266, 31);
            this.txtCP.TabIndex = 0;
            this.txtCP.Text = "Código postal";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Estudiantes",
            "Empleados"});
            this.comboBox1.Location = new System.Drawing.Point(44, 39);
            this.comboBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(283, 33);
            this.comboBox1.TabIndex = 1;
            this.comboBox1.Text = "Tipo de expediente";
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // tctSangre
            // 
            this.tctSangre.Location = new System.Drawing.Point(330, 100);
            this.tctSangre.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.tctSangre.Name = "tctSangre";
            this.tctSangre.Size = new System.Drawing.Size(222, 31);
            this.tctSangre.TabIndex = 2;
            this.tctSangre.Text = "Tipo de sangre";
            // 
            // txtCalle
            // 
            this.txtCalle.Location = new System.Drawing.Point(330, 230);
            this.txtCalle.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtCalle.Name = "txtCalle";
            this.txtCalle.Size = new System.Drawing.Size(222, 31);
            this.txtCalle.TabIndex = 3;
            this.txtCalle.Text = "Calle";
            // 
            // txtColonia
            // 
            this.txtColonia.Location = new System.Drawing.Point(44, 230);
            this.txtColonia.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtColonia.Name = "txtColonia";
            this.txtColonia.Size = new System.Drawing.Size(222, 31);
            this.txtColonia.TabIndex = 4;
            this.txtColonia.Text = "Colonia";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(44, 162);
            this.txtEstado.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(222, 31);
            this.txtEstado.TabIndex = 5;
            this.txtEstado.Text = "Estado";
            // 
            // txtCiudad
            // 
            this.txtCiudad.Location = new System.Drawing.Point(330, 162);
            this.txtCiudad.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtCiudad.Name = "txtCiudad";
            this.txtCiudad.Size = new System.Drawing.Size(222, 31);
            this.txtCiudad.TabIndex = 6;
            this.txtCiudad.Text = "Ciudad";
            // 
            // txtNControl
            // 
            this.txtNControl.Location = new System.Drawing.Point(44, 100);
            this.txtNControl.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtNControl.Name = "txtNControl";
            this.txtNControl.Size = new System.Drawing.Size(222, 31);
            this.txtNControl.TabIndex = 7;
            this.txtNControl.Text = "Matricula/DNI";
            // 
            // txtCorreo
            // 
            this.txtCorreo.Location = new System.Drawing.Point(620, 100);
            this.txtCorreo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtCorreo.Name = "txtCorreo";
            this.txtCorreo.Size = new System.Drawing.Size(266, 31);
            this.txtCorreo.TabIndex = 8;
            this.txtCorreo.Text = "Correo electronico";
            // 
            // ckEstatus
            // 
            this.ckEstatus.AutoSize = true;
            this.ckEstatus.Location = new System.Drawing.Point(795, 378);
            this.ckEstatus.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ckEstatus.Name = "ckEstatus";
            this.ckEstatus.Size = new System.Drawing.Size(179, 29);
            this.ckEstatus.TabIndex = 9;
            this.ckEstatus.Text = "Estatus activo";
            this.ckEstatus.UseVisualStyleBackColor = true;
            this.ckEstatus.CheckedChanged += new System.EventHandler(this.ckEstatus_CheckedChanged);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(140, 373);
            this.btnCancelar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(237, 36);
            this.btnCancelar.TabIndex = 10;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(490, 373);
            this.btnAceptar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(237, 36);
            this.btnAceptar.TabIndex = 11;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click);
            // 
            // textnum
            // 
            this.textnum.Location = new System.Drawing.Point(620, 230);
            this.textnum.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.textnum.Name = "textnum";
            this.textnum.Size = new System.Drawing.Size(266, 31);
            this.textnum.TabIndex = 12;
            this.textnum.Text = "Numero Telefono";
            // 
            // Expediente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(981, 489);
            this.ControlBox = false;
            this.Controls.Add(this.textnum);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.ckEstatus);
            this.Controls.Add(this.txtCorreo);
            this.Controls.Add(this.txtNControl);
            this.Controls.Add(this.txtCiudad);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtColonia);
            this.Controls.Add(this.txtCalle);
            this.Controls.Add(this.tctSangre);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.txtCP);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Expediente";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Expediente";
            this.Load += new System.EventHandler(this.Expediente_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtCP;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.TextBox tctSangre;
        private System.Windows.Forms.TextBox txtCalle;
        private System.Windows.Forms.TextBox txtColonia;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.TextBox txtCiudad;
        private System.Windows.Forms.TextBox txtNControl;
        private System.Windows.Forms.TextBox txtCorreo;
        private System.Windows.Forms.CheckBox ckEstatus;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.TextBox textnum;
    }
}