using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_18_09_21
{
    public partial class Input : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            tieude.Text = "Tính lương nhân viên: ";
            lblemcode.Text = "Mã nhân viên: " + emcode.Text;
            lblname.Text = "Họ và tên: " + name.Text;
            lblgender.Text = "Giới tính: " + gender.Text;
            lblsalary.Text = "Bậc lương: " + salary.Text;
            
            lblposition.Text = "Chức vụ: " + position.Text;
            string s = "";
            string p1 = "";
            string reward = "";
            string sumSal = "";
            foreach (ListItem item in foreign.Items)
            {
                if (item.Selected)
                    s = s + item.Text + "-";
            }
            lblforeign.Text = "Ngoại ngữ: " + foreign.Text;
            if(day > 25)
            {
                int bonus = day - 25;
                string stringValue = "10";
                int intValue = int.Parse(stringValue);
                p1 = bonus * 200000;
            }
            lblday.Text = "Số ngày công: " + p1;

        }

         //protected void foreign_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
}