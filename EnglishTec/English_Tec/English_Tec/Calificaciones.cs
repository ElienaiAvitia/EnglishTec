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
    public partial class Calificaciones : Form
    {   // Creacion de la instancia de la clase DataEnglishTec que no toma ningun parametro
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creacion de un dato de tipo string que se encontrara privado
        private string Funcion;
        public Calificaciones()
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Metodo Void que ejecutara un evento Click
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Metodo Void que ejecutara un evento Click
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un IF para validar una situación
            if (Funcion == "Registrar")
            {   // Uso del TRY and CATCH que permitira evitar excepciónes
                try
                {
                    data.sp_InsertarCalificaciones(Convert.ToInt16(txtMatricula.Text), Convert.ToInt16(cbCurso.Text), Convert.ToInt16(txtCalificacion.Text), Convert.ToInt16(txtUnidad.Text));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            // Uso de un IF para validar una situación
            if (Funcion == "Modificar")
            {   // Uso de un TRY and CATCH que permitira evitar excepciónes
                try
                {
                    data.sp_ActualizarCalificacion(Convert.ToInt32(txtMatricula.Text), Convert.ToDecimal(txtCalificacion));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        // Metodo VOID que realizara un evento Checked en un CheckBox
        private void ckModificar_CheckedChanged(object sender, EventArgs e)
        {

        }
        // Metodo VOID que realizara un evento Load en el Form de Calificaciones
        private void Calificaciones_Load(object sender, EventArgs e)
        {   // Uso de un IF que validara la situación Registrar
            if (this.Funcion == "Registrar")
            {
                txtMatricula.Enabled = true;
                txtCalificacion.Enabled = true;
                txtUnidad.Enabled = true;
            }
            // Uso de un IF que validara la operación Modificar
            if (this.Funcion == "Modificar")
            {
                txtMatricula.Enabled = true;
                txtCalificacion.Enabled = false;
                txtUnidad.Enabled = true;

            }
        }
    }
    
}
