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
    public partial class Nivel : Form
    {   // Instanciamiento de la clase DataEnglishTec
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creacion de un dato tipo string en formato Privado
        private string Funcion;
        public Nivel(string Funcion)
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Evento click en el boton cancelar que realizara una ejecución
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Evento Click en el boton Aceptar que realizara una ejecución
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un IF para hacer una validacion de una situacion
            if(Funcion == "Registrar")
            {
                try
                {
                    data.sp_InsertarNivel(txtNombre.Text, Convert.ToInt32(txtCosto.Text));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            // Uso de un IF para hacer una validacion de una situacion
            if (Funcion == "Modificar")
            {
                try
                {

                    data.sp_ActualizarNivel(Convert.ToInt32(txtNombre.Text), Convert.ToDecimal(txtCosto.Text));

                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        // Metodo void que permitira que se ejecute un evento Load
        private void Nivel_Load(object sender, EventArgs e)
        {   // Uso de un IF para hacer una validacion de una situación
            if (this.Funcion == "Registrar")
            {
                txtCosto.Enabled = true;
            }
            // Uso de un IF para hacer una validación de una situación
            if (this.Funcion == "Modificar")
            {
                txtCosto.Enabled = true;
                txtNombre.Text = "Identificador";
            }
        }
    }
}
