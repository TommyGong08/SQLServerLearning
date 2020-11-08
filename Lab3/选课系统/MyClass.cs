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
    public partial class MyClass : Form
    {
        public MyClass()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void MyClass_Load(object sender, EventArgs e)
        {
            MyClassTable();
        }
        public void MyClassTable()
        {
            dataGridView1.Rows.Clear();//清空旧数据
            pipe pip = new pipe();
            string sql = $"select * from SelectClassTB WHERE StuID = '{StuData.StuID}'";
            IDataReader dc = pip.read(sql);
            string a0, a1;
            while (dc.Read())
            {
                a0 = dc[1].ToString();//便于对数据进行处理
                a1 = dc[2].ToString();
                string[] table = { a0, a1};
                dataGridView1.Rows.Add(table);
            }
            dc.Close();
            pip.PipClose();
        }
    }
}
