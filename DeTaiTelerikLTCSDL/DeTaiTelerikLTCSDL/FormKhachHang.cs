using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using System.Data.SqlClient;
using System.Configuration;
using Telerik.WinControls.UI;

namespace DeTaiTelerikLTCSDL
{
    public partial class FormKhachHang : Telerik.WinControls.UI.RadForm
    {
        static string cnStr;
        SqlConnection cn;
        DataTable dt;
        public FormKhachHang()
        {
            InitializeComponent();
        }

        private void FormKhachHang_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            loadgrid();
        }
        private void loadgrid()
        {
            this.radGridView1.DataSource = GetCustomerTable();
        }
        private DataTable GetCustomerTable()
        {
            string sql = "Select * from KhachHang";
            dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            da.Fill(dt);
            return dt;
        }
        private void Connect()
        {
            try
            {
                if (cn != null && cn.State != ConnectionState.Open)
                {
                    cn.Open();
                }

            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
        private void Disconnect()
        {
            if (cn != null && cn.State != ConnectionState.Closed)
            {
                cn.Close();
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtmakh.Text == "")
            {

                errorProvider1.SetError(txtmakh, "Bạn chưa nhập mã");

            }
            if (txthokh.Text == "")
            {

                errorProvider1.SetError(txthokh, "Bạn chưa nhập Họ Khách Hàng");

            }
            if (txttenkh.Text == "")
            {

                errorProvider1.SetError(txttenkh, "Bạn chưa nhập Tên Khách Hàng");

            }
            if (txtmakh.Text != "" && txthokh.Text != "" && txttenkh.Text != "")
            {
                string sql = @"Insert into KhachHang(MaKH, HoKH, TenKH, SoDienThoai, SoDiem) Values('" + txtmakh.Text + "',N'" + txthokh.Text + "',N'" + txttenkh.Text + "','" + txtsdt.Text + "','" + txtsodiem.Text + "')";
                Connect();
                try
                {
                    SqlCommand cmd = new SqlCommand(sql, cn);
                    cmd.CommandType = CommandType.Text;
                    int count = cmd.ExecuteNonQuery();
                    MessageBox.Show("So dong da them : " + count.ToString());
                    loadgrid();
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                finally
                {
                    Disconnect();
                }

            }
        }


        private void radGridView1_DoubleClick(object sender, EventArgs e)
        {
            txtmakh.Text = this.radGridView1.CurrentRow.Cells[0].Value.ToString();
            txthokh.Text = this.radGridView1.CurrentRow.Cells[1].Value.ToString();
            txttenkh.Text = this.radGridView1.CurrentRow.Cells[2].Value.ToString();
            txtsdt.Text = this.radGridView1.CurrentRow.Cells[3].Value.ToString();
            txtsodiem.Text = this.radGridView1.CurrentRow.Cells[4].Value.ToString();
        }


        private void btnSua_Click(object sender, EventArgs e)
        {
            if (txtmakh.Text == "")
            {

                errorProvider1.SetError(txtmakh, "Bạn chưa nhập mã");

            }
            if (txthokh.Text == "")
            {

                errorProvider1.SetError(txthokh, "Bạn chưa nhập mã");

            }
            if (txttenkh.Text == "")
            {

                errorProvider1.SetError(txttenkh, "Bạn chưa nhập mã");

            }
            if (txtmakh.Text != "" && txthokh.Text != "" && txttenkh.Text != "")
            {
                string sql = @" Update KhachHang set MaKH = '" + txtmakh.Text + "', HoKH = N'" + txthokh.Text + "', TenKH=N'" + txttenkh.Text + "',SoDienThoai='" + txtsdt.Text + "',SoDiem='" + txtsodiem.Text + "' Where MaKH = '" + txtmakh.Text + "'";
                Connect();
                try
                {
                    SqlCommand cmd = new SqlCommand(sql, cn);
                    cmd.CommandType = CommandType.Text;
                    int count = cmd.ExecuteNonQuery();
                    MessageBox.Show("Bạn đã sửa thành công. ");
                    loadgrid();
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                finally
                {
                    Disconnect();
                }
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult = MessageBox.Show("Bạn có chắc muốn xóa!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            if (DialogResult == DialogResult.OK)
            {
                string sql = @"delete from KhachHang where MaKH = '" + txtmakh.Text + "'";
                Connect();
                try
                {
                    SqlCommand cmd = new SqlCommand(sql, cn);
                    cmd.CommandType = CommandType.Text;
                    int count = cmd.ExecuteNonQuery();
                    MessageBox.Show("Bạn đã xóa thành công. ");
                    loadgrid();
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                finally
                {
                    Disconnect();
                }

            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult = MessageBox.Show("Bạn có chắc muốn Thoát!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            if (DialogResult == DialogResult.OK)
            {
                this.Close();
                FormGiaoDienChinh f = new FormGiaoDienChinh();
                f.Show();
            }
            else
            {
                return;
            }
        }
    }
}
