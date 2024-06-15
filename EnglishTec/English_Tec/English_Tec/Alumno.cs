using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace English_Tec
{
    public partial class Alumno : Form
    {// Instanciamiento de la clase DataEnglishTec para su uso
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creacion de un dato tipo string en formato privado
        private string Funcion;
        public Alumno(string Funcion)
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Evento click en el boton cancelar
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Evento click en el boton aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un IF para validar una situación
            if (Funcion == "Registrar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_InsertarAlumnos(Convert.ToInt32(cbNivel.Text), txtNombre.Text, txtApellidoP.Text, txtApellidoM.Text, txtNSS.Text, txtCURP.Text, Convert.ToDecimal(txtPago.Text));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            // Uso de un IF para validar una situación
            if (Funcion == "Modificar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_ActualizarAlumnos(Convert.ToInt32(txtNombre.Text), Convert.ToDecimal(txtPago.Text));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

        }
        // Metodo void que ejecutara un evento Load
        private void Alumno_Load(object sender, EventArgs e)
        {   // Uso de un IF para validar una situación
            if (this.Funcion == "Registrar")
            {
                cbNivel.Enabled = true;
                txtNombre.Enabled = true;
                txtApellidoP.Enabled = true;
                txtApellidoM.Enabled = true;
                txtNSS.Enabled = true;
                txtCURP.Enabled = true;
                txtPago.Enabled = true;
            }
            // Uso de un IF para validar una situación
            if (this.Funcion == "Modificar")
            {
                txtPago.Enabled = true;
                txtNombre.Text = "Identificador";
                cbNivel.Enabled = false;
                txtNombre.Enabled = true;
                txtApellidoP.Enabled = false;
                txtApellidoM.Enabled = false;
                txtNSS.Enabled = false;
                txtCURP.Enabled = false;

            }
        }
    }
}
