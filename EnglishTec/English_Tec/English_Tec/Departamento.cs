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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;

namespace English_Tec
{
    
    public partial class Departamento : Form
    {   // Creacion de una instancia para la clase DataEnglishTec en el Form Departamento
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        // Creacion de un dato de tipo string que sera privado
        private string Funcion;
        public Departamento(string Funcion)
        {
            InitializeComponent();
            this.Funcion = Funcion;
        }
        // Metodo VOID que permitira ejecutar un evento Load en el Form Departamento
        private void Departamento_Load(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Registrar
            if (this.Funcion=="Registrar")
            {
                txtHoraE.Enabled = true;
                txtHoraS.Enabled = true;
                txtNombre.Enabled = true;
            }
            // Uso de un IF para validar la operación Modificar
            if (this.Funcion == "Modificar")
            {
                MessageBox.Show("No se permiten modificaciones");
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }
        // Metodo VOID que permitira ejecutar un evento Click en el boton Cancelar
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Metodo VOID que permitira ejecutar un evento Click en el boton Aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un TRY and CATCH para evitar una excepción
            try
            {
              
               
                data.sp_InsertarDepartamento(txtNombre.Text,TimeSpan.Parse(txtHoraE.Text), TimeSpan.Parse(txtHoraS.Text));
                MessageBox.Show("Datos guardados", "SuperTec", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), "SuperTec", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
