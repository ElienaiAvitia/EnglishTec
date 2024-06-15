namespace English_Tec
{
    partial class Empleado
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
            this.btnAceptar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.cbPuesto = new System.Windows.Forms.ComboBox();
            this.txtApellidoP = new System.Windows.Forms.TextBox();
            this.txtApellidoM = new System.Windows.Forms.TextBox();
            this.txtSueldo = new System.Windows.Forms.TextBox();
            this.txtNSS = new System.Windows.Forms.TextBox();
            this.txtCURP = new System.Windows.Forms.TextBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.txtEspecialidad = new System.Windows.Forms.TextBox();
            this.cbDepartamento = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(303, 272);
            this.btnAceptar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(207, 36);
            this.btnAceptar.TabIndex = 17;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(578, 272);
            this.btnCancelar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(207, 36);
            this.btnCancelar.TabIndex = 16;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // cbPuesto
            // 
            this.cbPuesto.FormattingEnabled = true;
            this.cbPuesto.Items.AddRange(new object[] {
            "Director",
            "Docente",
            "Secretaria",
            "Contador"});
            this.cbPuesto.Location = new System.Drawing.Point(36, 111);
            this.cbPuesto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cbPuesto.Name = "cbPuesto";
            this.cbPuesto.Size = new System.Drawing.Size(205, 33);
            this.cbPuesto.TabIndex = 15;
            this.cbPuesto.Text = "Puesto";
            // 
            // txtApellidoP
            // 
            this.txtApellidoP.Location = new System.Drawing.Point(303, 39);
            this.txtApellidoP.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtApellidoP.Name = "txtApellidoP";
            this.txtApellidoP.Size = new System.Drawing.Size(205, 31);
            this.txtApellidoP.TabIndex = 14;
            this.txtApellidoP.Text = "Apellido Paterno";
            // 
            // txtApellidoM
            // 
            this.txtApellidoM.Location = new System.Drawing.Point(578, 39);
            this.txtApellidoM.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtApellidoM.Name = "txtApellidoM";
            this.txtApellidoM.Size = new System.Drawing.Size(205, 31);
            this.txtApellidoM.TabIndex = 13;
            this.txtApellidoM.Text = "Apellido Materno";
            // 
            // txtSueldo
            // 
            this.txtSueldo.Location = new System.Drawing.Point(36, 200);
            this.txtSueldo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtSueldo.Name = "txtSueldo";
            this.txtSueldo.Size = new System.Drawing.Size(205, 31);
            this.txtSueldo.TabIndex = 12;
            this.txtSueldo.Text = "Sueldo";
            // 
            // txtNSS
            // 
            this.txtNSS.Location = new System.Drawing.Point(303, 114);
            this.txtNSS.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtNSS.Name = "txtNSS";
            this.txtNSS.Size = new System.Drawing.Size(205, 31);
            this.txtNSS.TabIndex = 11;
            this.txtNSS.Text = "NSS";
            // 
            // txtCURP
            // 
            this.txtCURP.Location = new System.Drawing.Point(578, 114);
            this.txtCURP.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtCURP.Name = "txtCURP";
            this.txtCURP.Size = new System.Drawing.Size(205, 31);
            this.txtCURP.TabIndex = 10;
            this.txtCURP.Text = "CURP";
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(36, 39);
            this.txtNombre.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(205, 31);
            this.txtNombre.TabIndex = 9;
            this.txtNombre.Text = "Nombre";
            // 
            // txtEspecialidad
            // 
            this.txtEspecialidad.Location = new System.Drawing.Point(303, 200);
            this.txtEspecialidad.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtEspecialidad.Name = "txtEspecialidad";
            this.txtEspecialidad.Size = new System.Drawing.Size(205, 31);
            this.txtEspecialidad.TabIndex = 18;
            this.txtEspecialidad.Text = "Especialidad";
            // 
            // cbDepartamento
            // 
            this.cbDepartamento.FormattingEnabled = true;
            this.cbDepartamento.Items.AddRange(new object[] {
            "Teacher",
            "Directivos",
            "Finanzas",
            "Escolares"});
            this.cbDepartamento.Location = new System.Drawing.Point(578, 200);
            this.cbDepartamento.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cbDepartamento.Name = "cbDepartamento";
            this.cbDepartamento.Size = new System.Drawing.Size(205, 33);
            this.cbDepartamento.TabIndex = 19;
            this.cbDepartamento.Text = "Departamento";
            this.cbDepartamento.SelectedIndexChanged += new System.EventHandler(this.cbDepartamento_SelectedIndexChanged);
            // 
            // Empleado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(820, 330);
            this.ControlBox = false;
            this.Controls.Add(this.cbDepartamento);
            this.Controls.Add(this.txtEspecialidad);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.cbPuesto);
            this.Controls.Add(this.txtApellidoP);
            this.Controls.Add(this.txtApellidoM);
            this.Controls.Add(this.txtSueldo);
            this.Controls.Add(this.txtNSS);
            this.Controls.Add(this.txtCURP);
            this.Controls.Add(this.txtNombre);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Empleado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Empleado";
            this.Load += new System.EventHandler(this.Empleado_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.ComboBox cbPuesto;
        private System.Windows.Forms.TextBox txtApellidoP;
        private System.Windows.Forms.TextBox txtApellidoM;
        private System.Windows.Forms.TextBox txtSueldo;
        private System.Windows.Forms.TextBox txtNSS;
        private System.Windows.Forms.TextBox txtCURP;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtEspecialidad;
        private System.Windows.Forms.ComboBox cbDepartamento;
    }
}