using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;

namespace DeTaiTelerikLTCSDL
{
    public partial class FormGiaoDienChinh : Telerik.WinControls.UI.RadForm
    {
        public FormGiaoDienChinh()
        {
            InitializeComponent();
        }

        private void radButton1_Click(object sender, EventArgs e)
        {
            if (DialogResult.Yes == MessageBox.Show("Bạn có chắc chắn muốn thoát ?", "Bảng thông báo người dùng", MessageBoxButtons.YesNo, MessageBoxIcon.Question))
            {
                Application.Exit();
            }
        }
    }
}
