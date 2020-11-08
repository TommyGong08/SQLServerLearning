namespace 选课系统
{
    partial class quit
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tbStuID = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.choseClass = new System.Windows.Forms.Button();
            this.logout = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("华文中宋", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(208, 109);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(353, 47);
            this.label1.TabIndex = 0;
            this.label1.Text = "欢迎来到学生选课系统";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(186, 188);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 21);
            this.label2.TabIndex = 1;
            this.label2.Text = "学号：";
            // 
            // tbStuID
            // 
            this.tbStuID.Location = new System.Drawing.Point(265, 188);
            this.tbStuID.Name = "tbStuID";
            this.tbStuID.Size = new System.Drawing.Size(216, 28);
            this.tbStuID.TabIndex = 2;
            this.tbStuID.TextChanged += new System.EventHandler(this.tbStuID_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.Location = new System.Drawing.Point(186, 248);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(73, 21);
            this.label3.TabIndex = 3;
            this.label3.Text = "姓名：";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("宋体", 10.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label4.Location = new System.Drawing.Point(265, 248);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(54, 21);
            this.label4.TabIndex = 4;
            this.label4.Text = "NULL";
            // 
            // choseClass
            // 
            this.choseClass.Location = new System.Drawing.Point(214, 307);
            this.choseClass.Name = "choseClass";
            this.choseClass.Size = new System.Drawing.Size(116, 51);
            this.choseClass.TabIndex = 6;
            this.choseClass.Text = "开始选课";
            this.choseClass.UseVisualStyleBackColor = true;
            this.choseClass.Click += new System.EventHandler(this.choseClass_Click);
            // 
            // logout
            // 
            this.logout.Location = new System.Drawing.Point(424, 307);
            this.logout.Name = "logout";
            this.logout.Size = new System.Drawing.Size(126, 51);
            this.logout.TabIndex = 7;
            this.logout.Text = "退出";
            this.logout.UseVisualStyleBackColor = true;
            this.logout.Click += new System.EventHandler(this.logout_Click);
            // 
            // quit
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.logout);
            this.Controls.Add(this.choseClass);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbStuID);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "quit";
            this.Text = "查询界面";
            this.Load += new System.EventHandler(this.quit_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbStuID;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button choseClass;
        private System.Windows.Forms.Button logout;
    }
}

