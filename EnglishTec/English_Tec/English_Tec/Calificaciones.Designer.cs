namespace English_Tec
{
    partial class Calificaciones
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
            this.txtCalificacion = new System.Windows.Forms.TextBox();
            this.txtUnidad = new System.Windows.Forms.TextBox();
            this.txtMatricula = new System.Windows.Forms.TextBox();
            this.cbCurso = new System.Windows.Forms.ComboBox();
            this.ckModificar = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(622, 112);
            this.btnAceptar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(144, 36);
            this.btnAceptar.TabIndex = 29;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(452, 111);
            this.btnCancelar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(132, 36);
            this.btnCancelar.TabIndex = 28;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // txtCalificacion
            // 
            this.txtCalificacion.Location = new System.Drawing.Point(18, 112);
            this.txtCalificacion.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtCalificacion.Name = "txtCalificacion";
            this.txtCalificacion.Size = new System.Drawing.Size(205, 31);
            this.txtCalificacion.TabIndex = 27;
            this.txtCalificacion.Text = "Calificación";
            // 
            // txtUnidad
            // 
            this.txtUnidad.Location = new System.Drawing.Point(560, 27);
            this.txtUnidad.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtUnidad.Name = "txtUnidad";
            this.txtUnidad.Size = new System.Drawing.Size(205, 31);
            this.txtUnidad.TabIndex = 25;
            this.txtUnidad.Text = "Unidad";
            // 
            // txtMatricula
            // 
            this.txtMatricula.Location = new System.Drawing.Point(18, 27);
            this.txtMatricula.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtMatricula.Name = "txtMatricula";
            this.txtMatricula.Size = new System.Drawing.Size(205, 31);
            this.txtMatricula.TabIndex = 24;
            this.txtMatricula.Text = "Matricula";
            // 
            // cbCurso
            // 
            this.cbCurso.FormattingEnabled = true;
            this.cbCurso.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4"});
            this.cbCurso.Location = new System.Drawing.Point(285, 27);
            this.cbCurso.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cbCurso.Name = "cbCurso";
            this.cbCurso.Size = new System.Drawing.Size(205, 33);
            this.cbCurso.TabIndex = 30;
            this.cbCurso.Text = "Curso";
            // 
            // ckModificar
            // 
            this.ckModificar.AutoSize = true;
            this.ckModificar.Location = new System.Drawing.Point(285, 111);
            this.ckModificar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ckModificar.Name = "ckModificar";
            this.ckModificar.Size = new System.Drawing.Size(132, 29);
            this.ckModificar.TabIndex = 31;
            this.ckModificar.Text = "Modificar";
            this.ckModificar.UseVisualStyleBackColor = true;
            this.ckModificar.CheckedChanged += new System.EventHandler(this.ckModificar_CheckedChanged);
            // 
            // Calificaciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(783, 170);
            this.ControlBox = false;
            this.Controls.Add(this.ckModificar);
            this.Controls.Add(this.cbCurso);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.txtCalificacion);
            this.Controls.Add(this.txtUnidad);
            this.Controls.Add(this.txtMatricula);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Calificaciones";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Calificaciones";
            this.Load += new System.EventHandler(this.Calificaciones_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.TextBox txtCalificacion;
        private System.Windows.Forms.TextBox txtUnidad;
        private System.Windows.Forms.TextBox txtMatricula;
        private System.Windows.Forms.ComboBox cbCurso;
        private System.Windows.Forms.CheckBox ckModificar;
    }
}