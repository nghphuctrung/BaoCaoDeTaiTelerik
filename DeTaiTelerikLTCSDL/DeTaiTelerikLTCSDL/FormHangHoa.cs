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
    public partial class FormHangHoa : Telerik.WinControls.UI.RadForm
    {
        //static string cnStr;
        //SqlConnection cn;
        static string cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
        SqlConnection cn = new SqlConnection(cnStr);
        public FormHangHoa()
        {
            InitializeComponent();
        }

        private void FormHangHoa_Load(object sender, EventArgs e)
        {
            radGridView1.MasterTemplate.Columns.Add("MaLoai", "Mã Loại", "MaLoaiHH");
            radGridView1.MasterTemplate.Columns.Add("TenLoai", "Tên Loại", "TenLoaiHH");
            radGridView1.MasterTemplate.Columns["MaLoai"].IsVisible = false;
            radGridView1.MasterTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            radGridView1.MasterTemplate.DataSource = loadMaLoai();
            radGridView1.EnableFiltering = true;
            //gridViewTemplate1.DataSource = loadHangHoa();
            //gridViewTemplate2.DataSource = Chitiet();
            GridViewTemplate firstChildtemplate = new GridViewTemplate();
            

            firstChildtemplate.Columns.Add("Mahanghoa", "Mã Hàng Hóa", "MaHH");
            firstChildtemplate.Columns.Add("tenhanghoa", "Tên Hàng Hóa", "TenHH");
            firstChildtemplate.Columns.Add("giabanhh", "Giá Bán", "GiaBan");
            firstChildtemplate.Columns.Add("dvt", "Đơn Vị Tính", "DonViTinh");
            firstChildtemplate.Columns.Add("MaLoai", "Mã Loại", "MaLoaiHH");
            firstChildtemplate.Columns["MaLoai"].IsVisible = false;
            firstChildtemplate.DataSource = loadHangHoa();
            radGridView1.MasterTemplate.Templates.Add(firstChildtemplate);
            firstChildtemplate.EnableFiltering = true;
            firstChildtemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            GridViewRelation relation = new GridViewRelation(radGridView1.MasterTemplate);
            relation.ChildTemplate = firstChildtemplate;
            relation.RelationName = "111";
            relation.ParentColumnNames.Add("MaLoai");
            relation.ChildColumnNames.Add("MaLoai");
            radGridView1.Relations.Add(relation);

            GridViewTemplate secondChildtemplate = new GridViewTemplate();

            secondChildtemplate.Columns.Add("MaHoaDon", "Mã Hóa Đơn", "MaHD");
            secondChildtemplate.Columns.Add("MaHangHoa", "Mã Hàng Hóa", "MaHH");
            secondChildtemplate.Columns.Add("Dongia", "Đơn Giá", "DonGia");
            secondChildtemplate.Columns.Add("SL", "Số Lượng", "SoLuong");
            secondChildtemplate.Columns.Add("TT", "Thành Tiền", "ThanhTien");

            secondChildtemplate.DataSource = Chitiet();
            firstChildtemplate.Templates.Add(secondChildtemplate);
            secondChildtemplate.EnableFiltering = true;
            secondChildtemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            GridViewRelation relation2 = new GridViewRelation(firstChildtemplate);
            relation2.ChildTemplate = secondChildtemplate;
            relation2.RelationName = "222";
            relation2.ParentColumnNames.Add("Mahanghoa");
            relation2.ChildColumnNames.Add("MaHangHoa");
            radGridView1.Relations.Add(relation2);

            
        }

        private DataTable GetData(string sql)
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cmd.Dispose();
                return dt;
            }
            catch (Exception )
            {

                throw;
            }
            finally
            {
                cn.Close();
            }
        }
        public DataTable loadMaLoai()
        {
            string sql = "SELECT * FROM Loai_HH";
            DataTable dt = GetData(sql);
            return dt;
        }
        public DataTable loadHangHoa()
        {
            string sql = "SELECT * FROM HangHoa";
            DataTable dt = GetData(sql);
            return dt;
        }
        public DataTable Chitiet()
        {
            string sql = "SELECT * From ChiTietHoaDon";
            DataTable dt = GetData(sql);
            return dt;
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
