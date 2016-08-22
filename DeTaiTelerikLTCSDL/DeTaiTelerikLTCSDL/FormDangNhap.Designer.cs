namespace DeTaiTelerikLTCSDL
{
    partial class FormDangNhap
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
            this.txtPassword = new Telerik.WinControls.UI.RadTextBox();
            this.txtAccounnt = new Telerik.WinControls.UI.RadTextBox();
            this.btnLogin = new Telerik.WinControls.UI.RadButton();
            this.radLabel2 = new Telerik.WinControls.UI.RadLabel();
            this.radLabel1 = new Telerik.WinControls.UI.RadLabel();
            this.LbConnect = new Telerik.WinControls.UI.RadLabel();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassword)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAccounnt)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnLogin)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.LbConnect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            this.SuspendLayout();
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(142, 85);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.PasswordChar = '●';
            this.txtPassword.Size = new System.Drawing.Size(100, 20);
            this.txtPassword.TabIndex = 1;
            this.txtPassword.UseSystemPasswordChar = true;
            // 
            // txtAccounnt
            // 
            this.txtAccounnt.Location = new System.Drawing.Point(142, 47);
            this.txtAccounnt.Name = "txtAccounnt";
            this.txtAccounnt.Size = new System.Drawing.Size(100, 20);
            this.txtAccounnt.TabIndex = 0;
            // 
            // btnLogin
            // 
            this.btnLogin.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLogin.Image = global::DeTaiTelerikLTCSDL.Properties.Resources.Button_Turn_On_icon;
            this.btnLogin.ImageAlignment = System.Drawing.ContentAlignment.TopCenter;
            this.btnLogin.Location = new System.Drawing.Point(47, 150);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(81, 84);
            this.btnLogin.TabIndex = 2;
            this.btnLogin.Text = "Login";
            this.btnLogin.TextAlignment = System.Drawing.ContentAlignment.BottomCenter;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // radLabel2
            // 
            this.radLabel2.BackColor = System.Drawing.Color.Transparent;
            this.radLabel2.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radLabel2.Location = new System.Drawing.Point(47, 80);
            this.radLabel2.Name = "radLabel2";
            this.radLabel2.Size = new System.Drawing.Size(81, 25);
            this.radLabel2.TabIndex = 4;
            this.radLabel2.Text = "Password";
            // 
            // radLabel1
            // 
            this.radLabel1.BackColor = System.Drawing.Color.Transparent;
            this.radLabel1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radLabel1.Location = new System.Drawing.Point(47, 42);
            this.radLabel1.Name = "radLabel1";
            this.radLabel1.Size = new System.Drawing.Size(72, 25);
            this.radLabel1.TabIndex = 5;
            this.radLabel1.Text = "Account";
            // 
            // LbConnect
            // 
            this.LbConnect.BackColor = System.Drawing.Color.Transparent;
            this.LbConnect.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LbConnect.ForeColor = System.Drawing.Color.MidnightBlue;
            this.LbConnect.Location = new System.Drawing.Point(19, 123);
            this.LbConnect.Name = "LbConnect";
            this.LbConnect.Size = new System.Drawing.Size(2, 2);
            this.LbConnect.TabIndex = 4;
            // 
            // FormDangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::DeTaiTelerikLTCSDL.Properties.Resources._2;
            this.ClientSize = new System.Drawing.Size(289, 246);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtAccounnt);
            this.Controls.Add(this.btnLogin);
            this.Controls.Add(this.LbConnect);
            this.Controls.Add(this.radLabel2);
            this.Controls.Add(this.radLabel1);
            this.Name = "FormDangNhap";
            // 
            // 
            // 
            this.RootElement.ApplyShapeToControl = true;
            this.Text = "FormDangNhap";
            ((System.ComponentModel.ISupportInitialize)(this.txtPassword)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAccounnt)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnLogin)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.LbConnect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Telerik.WinControls.UI.RadTextBox txtPassword;
        private Telerik.WinControls.UI.RadTextBox txtAccounnt;
        private Telerik.WinControls.UI.RadButton btnLogin;
        private Telerik.WinControls.UI.RadLabel radLabel2;
        private Telerik.WinControls.UI.RadLabel radLabel1;
        private Telerik.WinControls.UI.RadLabel LbConnect;

    }
}
