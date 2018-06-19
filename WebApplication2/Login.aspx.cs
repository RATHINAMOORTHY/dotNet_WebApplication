using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var login = new Models.Login(){
                UserName = TextBox1.Text,
                PassWord = TextBox2.Text
            };           
            if(Repository.LoginRepository.GetLoginInfo(login) > 0)
            {
                Response.Redirect("Contact.aspx");
            }
            else
            {
                txtErrorMessage.Visible = true;
                txtErrorMessage.Text = "In Valid User Name and Password";                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }
    }
}