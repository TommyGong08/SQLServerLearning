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
    public partial class selectClass : Form
    {
        public selectClass()
        {
            InitializeComponent();
        }

        private void selectCalss_Load(object sender, EventArgs e)
        {
            ClassInfoTB();
            SelectClassTB();
            label9.Text = StuData.StuID;
            label7.Text = StuData.StuName;
            LeadinStuInfo();
            
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        public void ClassInfoTB()//从数据库读取数据显示在可选表格中
        {
            dataGridView2.Rows.Clear();//清空就数据
            pipe pip = new pipe();
            string sql = "select * from ClassInfoTB";
            IDataReader dc = pip.read(sql);
            string a0, a1, a2, a3;
            while (dc.Read())
            {
                a0 = dc[0].ToString();//便于对数据进行处理
                a1 = dc[2].ToString();
                a2 = dc[1].ToString();
                a3 = dc[3].ToString();
                string[] table = { a0, a1, a2, a3 };
                dataGridView2.Rows.Add(table);
            }
            dc.Close();
            pip.PipClose();
        }
        public void SelectClassTB()
        {
            dataGridView1.Rows.Clear();//清空就数据
            pipe pip = new pipe();
            string sql = $"select * from TempSelectClassTB where StuID = '{StuData.StuID}'";
            IDataReader dc = pip.read(sql);
            string a0, a1;
            int classnum = 0;
            int credit = 0;
            while (dc.Read())
            {
                a0 = dc[1].ToString();//便于对数据进行处理
                a1 = dc[2].ToString();
                string[] table = { a0, a1};
                dataGridView1.Rows.Add(table);
                classnum++;
                credit += int.Parse(a1);
            }

            dc.Close();
            pip.PipClose();
        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            label13.Text = dataGridView2.SelectedRows[0].Cells[0].Value.ToString();
            label14.Text = dataGridView2.SelectedRows[0].Cells[1].Value.ToString();
        }

        private void AddClass_Click(object sender, EventArgs e)
        {
            try
            {
                string classname = dataGridView2.SelectedRows[0].Cells[0].Value.ToString();
                string teacher = dataGridView2.SelectedRows[0].Cells[1].Value.ToString();
                string credit = dataGridView2.SelectedRows[0].Cells[2].Value.ToString();
                label13.Text = classname;
                label14.Text = teacher;
                DialogResult dr = MessageBox.Show("确认选这门课吗？","信息提示",MessageBoxButtons.OKCancel,MessageBoxIcon.Question);
                if (dr == DialogResult.OK)
                {
                        string sql = $"insert into TempSelectClassTB values ('{StuData.StuID}','{classname}',{credit})";
                        pipe pip = new pipe();
                        if (pip.Execute(sql) > 0)
                        {
                            MessageBox.Show("添加成功");
                            SelectClassTB();
                        }
                        else
                        {
                            MessageBox.Show("添加失败" + sql);
                        }
                        pip.PipClose();       
                }
            }
            catch
            {
                MessageBox.Show("请选择课程！","信息提示",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }
        public void LeadinStuInfo()
        {
            pipe pip = new pipe();
            string sql = $"select * from StuInfoTB where StuID='{StuData.StuID}'";
            IDataReader dc = pip.read(sql);
            if (dc.Read())
            {
                string name = dc[1].ToString();
                string classnum = dc[3].ToString();
                string credit = dc[2].ToString();
                label6.Text = classnum;
                label5.Text = credit;
            }
            else
            {
                MessageBox.Show("读取学生信息失败");
            }
        }

        private void flash_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)//提交选课按钮
        {
            try
            {
                string classname = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
                string credit = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();
                
                DialogResult dr = MessageBox.Show("确认提交这门课吗？", "信息提示", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (dr == DialogResult.OK)
                {   
                    if(JudgeClass(credit)==0)//符合规则
                    {
                        string sql1 = $"insert into SelectClassTB values ('{StuData.StuID}','{classname}',{credit})";
                        pipe pip = new pipe();
                        if (pip.Execute(sql1) > 0)
                        {
                            MessageBox.Show("添加成功");
                            SelectClassTB();
                        }
                        else
                        {
                            MessageBox.Show("添加失败" + sql1);
                        }

                        //插入学分到学生信息表
                        ClassData.credit = int.Parse(label5.Text) + int.Parse(credit);//已选学分
                        ClassData.classnum = int.Parse(label6.Text) + 1;
                        string sql2 = $"UPDATE StuInfoTB SET StuCredit = {ClassData.credit},ClassNum = {ClassData.classnum} WHERE StuID = '{StuData.StuID}'";               
                        if (pip.Execute(sql2) > 0)
                        {
                            label6.Text = ClassData.classnum.ToString();
                            label5.Text = ClassData.credit.ToString();
                            MessageBox.Show("更改成功！");
                        }
                        else
                        {
                            MessageBox.Show("更改失败" + sql2);
                        }
                        pip.PipClose();
                    }
                    else//不符合规则
                    {
                        MessageBox.Show("不符合选课规则");
                    } 
                }
                
            }
            catch
            {
                MessageBox.Show("请选择课程！", "信息提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void MyClass_Click(object sender, EventArgs e)
        {
            MyClass myclass = new MyClass();
            myclass.ShowDialog();
        }

        public int JudgeClass(string c)
        {
            int tempclassnum = ClassData.classnum+1;
            int tempcredit = int.Parse(label5.Text) + int.Parse(c);
            if (tempclassnum >= 5 || tempcredit > 12)
            {
                return -1;
            }
            else return 0;
        }

        private void DeleteClass_Click(object sender, EventArgs e)
        {
            string classname = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
            string credit = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();

            DialogResult dr = MessageBox.Show("确认删除这门课吗？", "信息提示", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (dr == DialogResult.OK)
            {
                string sql = $"delete from TempSelectClassTB where ClassName = '{classname}'";
                pipe pip = new pipe();
                if (pip.Execute(sql) > 0)
                {
                    MessageBox.Show("删除成功");
                    SelectClassTB();
                }
                else
                {
                    MessageBox.Show("删除失败" + sql);
                }
                pip.PipClose();
            }
        }
    }
}
