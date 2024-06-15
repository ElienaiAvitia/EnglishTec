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
    public partial class Empleado : Form
    {   // Creación de la instancia hacia la clase DataEnglishTec en el Form Empleado

        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creacion de un dato tipo string que sera private
        private string Funcion;
        // Creacion de un dato tipo INT que sera Public
        int departamento;
        public Empleado(string Funcion)
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
        {   // Uso de un IF que permitira validar la operación Registrar
            if (Funcion == "Registrar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_InsertarEmpleado(departamento, txtEspecialidad.Text, txtNombre.Text, txtApellidoP.Text, txtApellidoM.Text, cbPuesto.Text, Convert.ToDecimal(txtSueldo.Text), txtNSS.Text, txtCURP.Text);
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            // Uso de un IF que permitira validar la operación Modificar
            if (Funcion == "Modificar")
            {   // Uso de un TRY and CATCH para evitar una excepción
                try
                {
                    data.sp_ActualizarEmpleado(Convert.ToInt32(txtNombre.Text), cbPuesto.Text, Convert.ToDecimal(txtSueldo.Text));
                    MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
           
        }
        // Metodo VOID que ejecutara un evento SelectedIndexChanged
        private void cbDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Teacher
            if (cbDepartamento.Text == "Teacher")
            {
                departamento = 1;
            }
            // Uso de un IF para validar la operación Directivos
            if (cbDepartamento.Text == "Directivos")
            {
                departamento = 2;
            }
            // Uso de un IF para validar la operación Finanzas
            if (cbDepartamento.Text == "Finanzas")
            {
                departamento = 3;
            }
            // Uso de un IF para validar la operación Escolares
            if (cbDepartamento.Text == "Escolares")
            {
                departamento = 4;
            }
        }
        // Metodo VOID que ejecutara un evento Load
        private void Empleado_Load(object sender, EventArgs e)
        {    // Uso de un IF para validar la operación Registrar
            if (this.Funcion == "Registrar")
            {
                txtNombre.Enabled = true;
                txtApellidoP.Enabled = true;
                txtApellidoM.Enabled = true;
                cbPuesto.Enabled = true;
                txtNSS.Enabled = true;
                txtCURP.Enabled = true;
                txtSueldo.Enabled = true;
                txtEspecialidad.Enabled = true;
                cbDepartamento.Enabled = true;
            }
            // Uso de un IF para validar la operación Modificar
            if (this.Funcion == "Modificar")
            {
                txtNombre.Text = "Identificador";
                cbPuesto.Enabled = true;
                txtSueldo.Enabled = true;
                txtApellidoP.Enabled = false;
                txtApellidoM.Enabled = false;
                txtNSS.Enabled = false;
                txtCURP.Enabled = false;
                txtEspecialidad.Enabled = false;
                cbDepartamento.Enabled = false;

            }
        }
    }
}
