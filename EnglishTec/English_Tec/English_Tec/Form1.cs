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
   /* 
	Nombre de la práctica: Sistema de base de datos (EnglishTec)
	Tema de referencia: Lenguaje de manipulación de datos (DML)
	Objetivo de la práctica: Desarrollar un sistema de base de datos, 
	el cual implemente normas de integridad de datos, así como 
	establecer de forma correcta y completa técnicas de manipulación de datos. 
	Materia: Taller de Bases De Datos.
	Alumnos:
		Isabel Esmeralda Carrillo Rodríguez
		Elienai Azucena Avitia Muñiz
		Héctor Adair Jiménez Ibarra
		Yohel Ceniceros Cabrera.			
*/

    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        // Metodo VOID que ejecutara un evento Load
        private void Form1_Load(object sender, EventArgs e)
        {
            ckMostrar.Enabled = false;
        }
        // Metodo VOID que ejecutara un evento Load en el boton Aceptar
        private void btnAceptar_Click(object sender, EventArgs e)
        {   // Uso de un IF para validar la operación Administrador
            if (cbTipoUsuario.Text=="Administrador")
            {   // Uso de un IF para validar la operación Administrador
                if (cbTipoUsuario.Text == "Administrador" && ckMostrar.Checked == true)
                {
                    Visualizar Cambiar = new Visualizar();
                    this.Hide();
                    DialogResult dialogResult = Cambiar.ShowDialog();
                    // Uso de un IF para validar la operación DialogResult
                    if (dialogResult == DialogResult.OK)
                    {
                        this.Show();
                    }
                }
                // Uso de un ELSE para validar otra operación
                else
                {
                    Registrar Cambiar = new Registrar();
                    this.Hide();
                    DialogResult dialogResult = Cambiar.ShowDialog();
                    // Uso de un IF para validar la operación DialogResult
                    if (dialogResult == DialogResult.OK)
                    {
                        this.Show();
                    }
                }
               
            }
            // Uso de un IF para validar la operación Empleado
            if (cbTipoUsuario.Text == "Empleado")
            {
                Calificaciones Cambiar = new Calificaciones();
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            // Uso de un IF para validar la operación Alumno
            if (cbTipoUsuario.Text == "Alumno")
            {
                ConsultaAlumno Cambiar = new ConsultaAlumno();
                this.Hide();
                DialogResult dialogResult = Cambiar.ShowDialog();
                // Uso de un IF para validar la operación DialogResult
                if (dialogResult == DialogResult.OK)
                {
                    this.Show();
                }
            }
            
        }
        // Metodo VOID para ejecutar un evento Click
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        // Metodo VOID para ejecutar un evento SelectedIndexChanged
        private void cbTipoUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {    // Uso de un IF para validar la operación Administrador
            if (cbTipoUsuario.Text == "Administrador")
            {
                ckMostrar.Enabled = true;
            }
            else
            {
                ckMostrar.Enabled = false;
                ckMostrar.Checked = false;
            }
        }
    }
}
