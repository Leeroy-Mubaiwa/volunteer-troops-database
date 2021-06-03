namespace VolunteerTroops
{
    partial class frmLoginTroops
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label pASSWORDLabel;
            System.Windows.Forms.Label uSERNAMELabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmLoginTroops));
            this.volunteerTroopsOfflineDatabaseDataSet = new VolunteerTroops.VolunteerTroopsOfflineDatabaseDataSet();
            this.oRGANISATIONBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.oRGANISATIONTableAdapter = new VolunteerTroops.VolunteerTroopsOfflineDatabaseDataSetTableAdapters.ORGANISATIONTableAdapter();
            this.tableAdapterManager = new VolunteerTroops.VolunteerTroopsOfflineDatabaseDataSetTableAdapters.TableAdapterManager();
            this.btnloginAcc = new System.Windows.Forms.Button();
            this.uSERNAMETextBox = new System.Windows.Forms.TextBox();
            this.btnloginDash = new System.Windows.Forms.Button();
            this.pASSWORDTextBox = new System.Windows.Forms.TextBox();
            pASSWORDLabel = new System.Windows.Forms.Label();
            uSERNAMELabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.volunteerTroopsOfflineDatabaseDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.oRGANISATIONBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // pASSWORDLabel
            // 
            pASSWORDLabel.Anchor = System.Windows.Forms.AnchorStyles.None;
            pASSWORDLabel.AutoSize = true;
            pASSWORDLabel.Location = new System.Drawing.Point(310, 264);
            pASSWORDLabel.Name = "pASSWORDLabel";
            pASSWORDLabel.Size = new System.Drawing.Size(67, 15);
            pASSWORDLabel.TabIndex = 10;
            pASSWORDLabel.Text = "Password";
            // 
            // uSERNAMELabel
            // 
            uSERNAMELabel.Anchor = System.Windows.Forms.AnchorStyles.None;
            uSERNAMELabel.AutoSize = true;
            uSERNAMELabel.Location = new System.Drawing.Point(310, 210);
            uSERNAMELabel.Name = "uSERNAMELabel";
            uSERNAMELabel.Size = new System.Drawing.Size(43, 15);
            uSERNAMELabel.TabIndex = 8;
            uSERNAMELabel.Text = "Name";
            // 
            // volunteerTroopsOfflineDatabaseDataSet
            // 
            this.volunteerTroopsOfflineDatabaseDataSet.DataSetName = "VolunteerTroopsOfflineDatabaseDataSet";
            this.volunteerTroopsOfflineDatabaseDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // oRGANISATIONBindingSource
            // 
            this.oRGANISATIONBindingSource.DataMember = "ORGANISATION";
            this.oRGANISATIONBindingSource.DataSource = this.volunteerTroopsOfflineDatabaseDataSet;
            // 
            // oRGANISATIONTableAdapter
            // 
            this.oRGANISATIONTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.EMPLOYMENT_STATUSTableAdapter = null;
            this.tableAdapterManager.FIELDSTableAdapter = null;
            this.tableAdapterManager.InstitutionTableAdapter = null;
            this.tableAdapterManager.MEMBERSTableAdapter = null;
            this.tableAdapterManager.MEMBERSTATESTableAdapter = null;
            this.tableAdapterManager.ORGANISATIONTableAdapter = this.oRGANISATIONTableAdapter;
            this.tableAdapterManager.PROFESSIONSTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = VolunteerTroops.VolunteerTroopsOfflineDatabaseDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // btnloginAcc
            // 
            this.btnloginAcc.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnloginAcc.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnloginAcc.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(21)))), ((int)(((byte)(21)))));
            this.btnloginAcc.Location = new System.Drawing.Point(313, 359);
            this.btnloginAcc.Name = "btnloginAcc";
            this.btnloginAcc.Size = new System.Drawing.Size(278, 32);
            this.btnloginAcc.TabIndex = 12;
            this.btnloginAcc.Text = "Manage Account";
            this.btnloginAcc.UseVisualStyleBackColor = false;
            this.btnloginAcc.Click += new System.EventHandler(this.btnloginAcc_Click);
            // 
            // uSERNAMETextBox
            // 
            this.uSERNAMETextBox.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.uSERNAMETextBox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(248)))), ((int)(((byte)(255)))));
            this.uSERNAMETextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.oRGANISATIONBindingSource, "USERNAME", true));
            this.uSERNAMETextBox.Location = new System.Drawing.Point(313, 229);
            this.uSERNAMETextBox.Multiline = true;
            this.uSERNAMETextBox.Name = "uSERNAMETextBox";
            this.uSERNAMETextBox.Size = new System.Drawing.Size(278, 32);
            this.uSERNAMETextBox.TabIndex = 9;
            // 
            // btnloginDash
            // 
            this.btnloginDash.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnloginDash.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(106)))), ((int)(((byte)(100)))), ((int)(((byte)(217)))));
            this.btnloginDash.FlatAppearance.BorderSize = 0;
            this.btnloginDash.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnloginDash.ForeColor = System.Drawing.Color.White;
            this.btnloginDash.Location = new System.Drawing.Point(313, 321);
            this.btnloginDash.Name = "btnloginDash";
            this.btnloginDash.Size = new System.Drawing.Size(278, 32);
            this.btnloginDash.TabIndex = 7;
            this.btnloginDash.Text = "Login to Dashboard";
            this.btnloginDash.UseVisualStyleBackColor = false;
            this.btnloginDash.Click += new System.EventHandler(this.btnloginDash_Click);
            // 
            // pASSWORDTextBox
            // 
            this.pASSWORDTextBox.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pASSWORDTextBox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(248)))), ((int)(((byte)(255)))));
            this.pASSWORDTextBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pASSWORDTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.oRGANISATIONBindingSource, "PASSWORD", true));
            this.pASSWORDTextBox.Font = new System.Drawing.Font("Georgia", 16F);
            this.pASSWORDTextBox.Location = new System.Drawing.Point(313, 283);
            this.pASSWORDTextBox.Name = "pASSWORDTextBox";
            this.pASSWORDTextBox.Size = new System.Drawing.Size(278, 32);
            this.pASSWORDTextBox.TabIndex = 11;
            this.pASSWORDTextBox.UseSystemPasswordChar = true;
            // 
            // frmLoginTroops
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(248)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(900, 600);
            this.Controls.Add(this.btnloginAcc);
            this.Controls.Add(this.uSERNAMETextBox);
            this.Controls.Add(pASSWORDLabel);
            this.Controls.Add(this.btnloginDash);
            this.Controls.Add(this.pASSWORDTextBox);
            this.Controls.Add(uSERNAMELabel);
            this.Font = new System.Drawing.Font("ABeeZee", 9.749999F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(93)))), ((int)(((byte)(93)))), ((int)(((byte)(93)))));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximumSize = new System.Drawing.Size(916, 639);
            this.MinimumSize = new System.Drawing.Size(916, 639);
            this.Name = "frmLoginTroops";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "LoginTroops";
            this.Load += new System.EventHandler(this.LoginTroops_Load);
            ((System.ComponentModel.ISupportInitialize)(this.volunteerTroopsOfflineDatabaseDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.oRGANISATIONBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private VolunteerTroopsOfflineDatabaseDataSet volunteerTroopsOfflineDatabaseDataSet;
        private System.Windows.Forms.BindingSource oRGANISATIONBindingSource;
        private VolunteerTroopsOfflineDatabaseDataSetTableAdapters.ORGANISATIONTableAdapter oRGANISATIONTableAdapter;
        private VolunteerTroopsOfflineDatabaseDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.Button btnloginAcc;
        private System.Windows.Forms.TextBox uSERNAMETextBox;
        private System.Windows.Forms.Button btnloginDash;
        private System.Windows.Forms.TextBox pASSWORDTextBox;
    }
}