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
    public partial class Material : Form
    {   // Creación de la instancia hacia la clase DataEnglishTec en el Form Material
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        private string Funcion;
        public Material(string Funcion)
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Metodo VOID que ejecutara un evento Click en el boton Cancelar
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Metodo VOID que ejecutara un evento Click en el boton Aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Registrar
            if (Funcion == "Registrar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_InsertarMaterial(txtNombre.Text, Convert.ToInt16(txtNivel.Text), Convert.ToDecimal(txtCosto.Text), txtAutor.Text, txtTipo.Text, Convert.ToInt16(txtCantidad.Text));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            // Uso de un IF para validar la operación Modificar
            if (Funcion == "Modificar")
            {
                try
                {
                    data.sp_ActualizarMaterial(Convert.ToInt32(txtNombre.Text), Convert.ToInt32(txtCosto.Text), Convert.ToInt32(txtCantidad.Text), txtTipo.Text);
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
           
        }
        // Metodo VOID que ejecutara un evento Load en el FORM
        private void Material_Load(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Registrar
            if (this.Funcion == "Registrar")
            {
                txtNombre.Enabled = true;
                txtNivel.Enabled = true;
                txtCosto.Enabled = true;
                txtAutor.Enabled = true;
                txtCantidad.Enabled = true;
                txtTipo.Enabled = true;
            }
            // Uso de un IF para validar la operación Modificar
            if (this.Funcion == "Modificar")
            {
                txtNombre.Text = "Identificador";
                txtNivel.Enabled = false;
                txtCosto.Enabled = true;
                txtAutor.Enabled = false;
                txtCantidad.Enabled = true;
                txtTipo.Enabled = true;

            }
        }
    }
}
