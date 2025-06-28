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
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (username == "testuser" && password == "123456")
            {
                DashBoardForm dashboard = new DashBoardForm();
                dashboard.Show();
                this.Hide();
            }
            else
            {
                lblError.Text = "Invalid username or password";
                lblError.Visible = true;
            }
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
