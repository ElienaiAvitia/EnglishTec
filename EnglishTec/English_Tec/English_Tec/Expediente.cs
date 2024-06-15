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
    public partial class Expediente : Form
    {
        // Creación de la instancia hacia la clase DataEnglishTec en el Form Expediente
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creación de un dato tipo string que sera Private
        private string Funcion;
        // Creación de un dato tipo INT que sera Public
        int departamento = 0;
        // Creación de un dato tipo INT que sera Public
        int check = 0;
        public Expediente(string Funcion)
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Metodo VOID que ejecutara un evento Load
        private void Expediente_Load(object sender, EventArgs e)
        {

            

        }
        // Metodo VOID que ejecutara un evento Click en el boton Cancelar
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Metodo VOID que ejecutara un evento Click en el boton Aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {    // Uso de un IF para validar la operación Registrar
            if (Funcion == "Registrar")
            {
                if (departamento == 1)
                {    // Uso de un TRY and CATCH para evitar una excepción
                    try
                    {
                        data.sp_ExpedienteAlumnoInsertar(Convert.ToInt32(txtNControl.Text), Convert.ToDateTime(DateTime.Now), txtCP.Text, Convert.ToString(tctSangre.Text), textnum.Text, txtEstado.Text, txtCiudad.Text, txtColonia.Text, txtCalle.Text, Convert.ToBoolean(ckEstatus.Checked), txtCorreo.Text);
                        MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                // Uso de un IF para validar la operación departamento
                if (departamento == 2)
                {   //// Uso de un TRY and CATCH para evitar una excepción
                    try
                    {
                        data.sp_InsertarExpedienteEmpleado(Convert.ToInt32(txtNControl.Text), Convert.ToDateTime(DateTime.Now), txtCP.Text, Convert.ToString(tctSangre.Text), textnum.Text, txtEstado.Text, txtCiudad.Text, txtColonia.Text, txtCalle.Text, Convert.ToBoolean(ckEstatus.Checked));
                        MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            // Uso de un IF para validar la operación Modificar
            if (Funcion == "Modificar")
            {    // Uso de un IF para validar la operación departamento
                if (departamento == 1)
                {   //// Uso de un TRY and CATCH para evitar una excepción
                    try
                    {
                        data.sp_ActualizarExpedienteAlumno(Convert.ToInt32(txtNControl.Text), txtCP.Text, textnum.Text, txtEstado.Text, txtCiudad.Text, txtColonia.Text, txtCalle.Text, Convert.ToBoolean(ckEstatus.Checked));
                        //data.sp_ActualizarEmpleado(Convert.ToInt32(txtNombre.Text), cbPuesto.Text, Convert.ToDecimal(txtSueldo.Text));
                        MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                // Uso de un IF para validar la operación departamento
                if (departamento == 2)
                {
                    try
                    {
                        data.sp_ActualizarExpedienteEmpleado(Convert.ToInt32(txtNControl.Text), txtCP.Text, textnum.Text, txtEstado.Text, txtCiudad.Text, txtColonia.Text, txtCalle.Text, Convert.ToBoolean(ckEstatus.Checked));
                        MessageBox.Show("Datos guardados", "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString(), "EnglishTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }
        // Metodo VOID que ejecutara un evento SelectedIndexChanged
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Estudiantes
            if (comboBox1.Text == "Estudiantes")
            {
                departamento = 1;
            }
            // Uso de un IF para validar la operación Empleados
            if (comboBox1.Text == "Empleados")
            {
                departamento = 2;
            }
            // Uso de un IF para validar la operación departamento
            if (departamento == 1)
            {   // Uso de un IF para validar la operación Registrar
                if (this.Funcion == "Registrar")
                {
                    txtNControl.Enabled = true;
                    tctSangre.Enabled = true;
                    txtCorreo.Enabled = true;
                    txtEstado.Enabled = true;
                    txtCiudad.Enabled = true;
                    txtCP.Enabled = true;
                    txtColonia.Enabled = true;
                    txtCalle.Enabled = true;
                    textnum.Enabled = true;
                    ckEstatus.Enabled = true;

                }
                // Uso de un IF para validar la operación Modificar
                if (this.Funcion == "Modificar")
                {
                    textnum.Text = "Identificador";
                    txtEstado.Enabled = true;
                    txtCiudad.Enabled = true;
                    txtCP.Enabled = true;
                    txtColonia.Enabled = true;
                    txtCalle.Enabled = true;
                    ckEstatus.Enabled = true;
                    tctSangre.Enabled = false;
                    txtCorreo.Enabled = false;
                }
            }
            // Uso de un IF para validar la operación departamento
            if (departamento == 2)
            {   // Uso de un IF para validar la operación Registrar
                if (this.Funcion == "Registrar")
                {
                    txtNControl.Enabled = true;
                    tctSangre.Enabled = true;
                    txtCorreo.Enabled = false;
                    txtEstado.Enabled = true;
                    txtCiudad.Enabled = true;
                    txtCP.Enabled = true;
                    txtColonia.Enabled = true;
                    txtCalle.Enabled = true;
                    textnum.Enabled = true;
                    ckEstatus.Enabled = true;
                }
                // Uso de un IF para validar la operación Modificar
                if (this.Funcion == "Modificar")
                {
                    txtEstado.Enabled = true;
                    txtCiudad.Enabled = true;
                    txtCP.Enabled = true;
                    txtColonia.Enabled = true;
                    txtCalle.Enabled = true;
                    textnum.Text = "Identificador";
                    ckEstatus.Enabled = true;
                    tctSangre.Enabled = false;
                    txtCorreo.Enabled = false;
                }
            }
        }

        private void ckEstatus_CheckedChanged(object sender, EventArgs e)
        {
         
            
        }
    }
}
