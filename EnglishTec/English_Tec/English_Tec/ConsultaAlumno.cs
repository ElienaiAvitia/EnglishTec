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
    public partial class ConsultaAlumno : Form
    {   // Creación de la instancia de la clase DataEnglishTec en el Form de ConsultaAlumno
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        public ConsultaAlumno()
        {
            InitializeComponent();
        }
        // Metodo VOID que permitira ejecutar un evento Click en el boton Cancelar
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        // Metodo VOID que permitira ejecutar un evento Click en el boton Aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Calificaciones
            if (cbSeleccionar.Text=="Calificaciones")
            {
                dataGridView1.DataSource = data.spMostrarCalificaciones(Convert.ToInt32(textBox1.Text));
            }
        }
        // Metodo VOID que permitira ejecutar un evento TextChanged en un TextBox
        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
        // Metodo VOID que permitira ejecutar un evento SelectedIndexChanged en un ComboBox
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        // Metodo VOID que permitira ejecutar un evento CellContentClick en un dataGridView
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
