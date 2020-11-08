using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace 选课系统
{
    class pipe
    {
        SqlConnection src;
        public SqlConnection connect()
        {
            string str = @"Data Source=GHL的HUAWEI;Initial Catalog=选课管理;Integrated Security=True";
            src = new SqlConnection(str);
            src.Open();
            return src;
        }
        public SqlCommand command(string sql)
        {
            SqlCommand cmd = new SqlCommand(sql, connect());
            return cmd;
        }
        public int Execute(string sql)
        {
            return command(sql).ExecuteNonQuery();//插入、更新、删除操作
        }
        public SqlDataReader read(string sql)
        {
            return command(sql).ExecuteReader();//读取操作
        }
        public void PipClose()
        {
            src.Close();//关闭数据库
        }
    }
}
