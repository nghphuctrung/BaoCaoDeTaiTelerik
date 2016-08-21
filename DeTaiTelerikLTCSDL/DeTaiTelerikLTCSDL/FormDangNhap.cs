using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using System.Data.SqlClient;
using Telerik.WinControls.UI;

namespace DeTaiTelerikLTCSDL
{
    public partial class FormDangNhap : Telerik.WinControls.UI.RadForm
    {
        FormGiaoDienChinh Fgdc;
        SqlConnection cn;
        string cnStr = @"Server = .; Database = Login ; Integrated security = true";
        SqlCommand cmd;
        public FormDangNhap()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                cn = new SqlConnection(cnStr);
                cn.Open();
                string sql = "Select count(*) From [Login].[dbo].[TKLogin] Where TaiKhoan = @acc And MatKhau = @pass ";
                cmd = new SqlCommand(sql, cn);
                cmd.Parameters.Add(new SqlParameter("@acc", txtAccounnt.Text));
                cmd.Parameters.Add(new SqlParameter("@pass", txtPassword.Text));
                int x = (int)cmd.ExecuteScalar();
                if (x == 1)
                {
                    // MessageBox.Show("Đăng Nhập Thành Công !", "Nofitication");
                    Visible = false;
                    Fgdc = new FormGiaoDienChinh();
                    Fgdc.Activate();
                    Fgdc.Show();
                }
                else
                {
                    LbConnect.Text = "Tài Khoản hoặc mật khẩu không thể đăng nhập";
                    txtAccounnt.Text = "";
                    txtPassword.Text = "";
                    txtAccounnt.Focus();
                    txtPassword.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
