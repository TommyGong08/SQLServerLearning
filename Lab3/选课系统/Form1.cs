using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace 选课系统
{
    public partial class quit : Form
    {
        public quit()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }


        private void choseClass_Click(object sender, EventArgs e)
        {
            if(tbStuID.Text!="")
            {
                StuData.StuID = tbStuID.Text;
                StuData.StuName = label4.Text;
                selectClass selectclass = new selectClass();
                selectclass.ShowDialog();
            }
            else
            {
                MessageBox.Show("请输入学号！");
            }
        }

        private void logout_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void tbStuID_TextChanged(object sender, EventArgs e)
        {
            if(tbStuID.Text.Length == 10)
            {
                //查询学号
                pipe pip = new pipe();
                string sql = $"select * from StuInfoTB where StuID='{tbStuID.Text}'";
                IDataReader dc = pip.read(sql);
                if (dc.Read())
                {
                    string name = dc[1].ToString();
                    label4.Text = name;
                    StuData.StuName = name;
                }
                else
                {
                    MessageBox.Show("查询失败");
                }
                pip.PipClose();
            }
        }

        private void quit_Load(object sender, EventArgs e)
        {

        }
    }
}
