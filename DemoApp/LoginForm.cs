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
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                DashBoardForm dashboard = new DashBoardForm();
                dashboard.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Please enter a username.", "Login Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}
