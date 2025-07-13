using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DemoApp
{
    public partial class DashBoardForm : Form
    {
        public DashBoardForm(string username)
        {
            InitializeComponent();
            lblWelcome.Text = $"Welcome, {username}!";
        }


        private void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = $"Hello {txtName.Text}, you entered: {txtInput.Text}";
            MessageBox.Show(message, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        private void DashboardForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

    }
}
