using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace English_Tec
{
    public partial class Curso : Form
    {   // Creación de una instancia hacia la clase DataEnglishTec en el Form de Curso
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creacion de un dato tipo string que sera privado
        private string Funcion;
        public Curso(string Funcion)
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Metodo VOID que permitira ejecutar un evento Click en el boton Cancelar
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Metodo VOID que permitira ejecutar un evento Click en el boton Aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {    // Uso de un IF para validar la operación Registrar
            if (Funcion == "Registrar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_InsertarCursoGrupo(txtDNIDocente.Text,Convert.ToInt16(txtNivel.Text), txtHorario.Text);
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            // Uso de un IF para validar la operación Modificar
            if (Funcion == "Modificar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_ActualizarCursoGrupo(Convert.ToInt32(txtDNIDocente.Text), txtHorario.Text);
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        // Metodo VOID que permitira ejecutar un evento Load en el Form Curso
        private void Curso_Load(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Registrar
            if (this.Funcion == "Registrar")
            {
                txtDNIDocente.Enabled = true;
                txtNivel.Enabled = true;
                txtHorario.Enabled = true;
            }
            // Uso de un IF para validar la operación Modificar
            if (this.Funcion == "Modificar")
            {
                txtDNIDocente.Text = "Identificador";
                txtNivel.Enabled = false;
                txtHorario.Enabled = true;

            }
        }
    }
}
