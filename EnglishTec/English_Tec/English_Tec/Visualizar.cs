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
    public partial class Visualizar : Form
    {   // Creación de la instacia hacia la clase DataEnglishTec para el FORM Visualizar
        DataEnglishTecDataContext data = new DataEnglishTecDataContext();
        public Visualizar()
        {
            InitializeComponent();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            // Uso de un IF para validar la operación Cantidad material
            if (cbSeleccionar.Text== "Cantidad de material")
            {
                dataGridView1.DataSource = data.spCantidadMaterial();
            }
            // Uso de un IF para validar la operación Horario de trabajo por departamento
            if (cbSeleccionar.Text == "Horario de trabajo por departamento")
            {
                dataGridView1.DataSource = data.spHorarioTrabajadorxDepartamento();
            }
            // Uso de un IF para validar la operación Horas cubiertas por empleado
            if (cbSeleccionar.Text == "Horas cubiertas por empleado")
            {
                dataGridView1.DataSource = data.spHorasCubietasxDia();
            }
            // Uso de un IF para validar la operación Material por categoria
            if (cbSeleccionar.Text == "Material por categoria")
            {
                dataGridView1.DataSource = data.spMaterialCategoría();
            }
            // Uso de un IF para validar la operación Reportes de adeudo
            if (cbSeleccionar.Text == "Reportes de adeudo")
            {
                dataGridView1.DataSource = data.spReportesdeAdeudo();
            }
            // Uso de un IF para validar la operación Retardos generales
            if (cbSeleccionar.Text == "Retardos generales")
            {
                dataGridView1.DataSource = data.spRetardosGenerales();
            }
        }
    }
}
