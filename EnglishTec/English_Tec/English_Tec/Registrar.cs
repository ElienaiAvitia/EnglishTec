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
    public partial class Registrar : Form
    {
        public static string Funcion;
        public Registrar()
        {
            InitializeComponent();
        }
        /// Metodo VOID que ejecutara un evento Click
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            Funcion = "Registrar";
            // Uso de un IF para validar la operación Departamento
            if (cbRegistrar.Text == "Departamento")
            {
                Departamento departamento = new Departamento(Funcion);
                this.Hide();
                DialogResult dialogResult = departamento.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Alumno
            if (cbRegistrar.Text == "Alumno")
            {
                Alumno Cambiar = new Alumno(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Empleado
            if (cbRegistrar.Text == "Empleado")
            {
                Empleado Cambiar = new Empleado(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Expedientes
            if (cbRegistrar.Text == "Expedientes")
            {
                Expediente Cambiar = new Expediente(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Material
            if (cbRegistrar.Text == "Material")
            {
                Material Cambiar = new Material(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Nivel
            if (cbRegistrar.Text == "Nivel")
            {
                Nivel Cambiar = new Nivel(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Curso
            if (cbRegistrar.Text == "Curso")
            {
                Curso Cambiar = new Curso(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
        }
        // Metodo VOID que ejecutara un evento Click en el boton Modificar
        private void btnModificar_Click(object sender, EventArgs e)
        {
            Funcion = "Modificar";
            // Uso de un IF para validar la operación Departamento
            if (cbRegistrar.Text == "Departamento")
            {
                Departamento departamento = new Departamento(Funcion);
                this.Hide();
                DialogResult dialogResult = departamento.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            //// Uso de un IF para validar la operación Alumno
            if (cbRegistrar.Text == "Alumno")
            {
                Alumno Cambiar = new Alumno(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Empleado
            if (cbRegistrar.Text == "Empleado")
            {
                Empleado Cambiar = new Empleado(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Expedientes
            if (cbRegistrar.Text == "Expedientes")
            {
                Expediente Cambiar = new Expediente(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Material
            if (cbRegistrar.Text == "Material")
            {
                Material Cambiar = new Material(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Nivel
            if (cbRegistrar.Text == "Nivel")
            {
                Nivel Cambiar = new Nivel(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Curso
            if (cbRegistrar.Text == "Curso")
            {
                Curso Cambiar = new Curso(Funcion);
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
        }
    }
}
