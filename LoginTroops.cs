using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VolunteerTroops
{
    public partial class frmLoginTroops : Form
    {
        public frmLoginTroops()
        {
            InitializeComponent();
        }

        private void oRGANISATIONBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.oRGANISATIONBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.volunteerTroopsOfflineDatabaseDataSet);

        }

        private void LoginTroops_Load(object sender, EventArgs e)
        {
          
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
        string username, password;
        public void CheckDetails()
        {
     username = uSERNAMETextBox.Text;
        password = pASSWORDTextBox.Text;

            // TODO: This line of code loads data into the 'volunteerTroopsOfflineDatabaseDataSet.ORGANISATION' table. You can move, or remove it, as needed.
            this.oRGANISATIONTableAdapter.Fill(this.volunteerTroopsOfflineDatabaseDataSet.ORGANISATION);
            oRGANISATIONBindingSource.Filter = "USERNAME = '"+username+ "' AND PASSWORD = '" + password + "'";
            
        }
        public void openDashboard()
        {
            frmDashboardTroops dashboard = new frmDashboardTroops();
            dashboard.Show();
            this.Hide();
        }
        public void openAccount()
        {
            AccountTroops account = new AccountTroops();
            account.Show();
            this.Hide();
        }

        private void btnloginAcc_Click(object sender, EventArgs e)
        {
            CheckDetails();
            if (uSERNAMETextBox.Text == username && pASSWORDTextBox.Text == password)
            {
                openAccount();

            }
        }

        private void btnloginDash_Click(object sender, EventArgs e)
        {
            CheckDetails();
            if (uSERNAMETextBox.Text == username && pASSWORDTextBox.Text == password)
            {
                openDashboard();

            }
        }
    }
}
