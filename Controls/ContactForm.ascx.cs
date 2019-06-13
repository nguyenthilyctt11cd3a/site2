using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;


public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
protected void SendButton_Click(object sender, EventArgs e)
    {
        string ins = "Insert into [Table](HoVaTen,Email,SDT,LoaiVe,ChuThich)values('" + Name.Text + "','" + EmailAddress.Text + "','" + PhoneHome.Text + "','" + TopicQuestions.Text + "','" + Comments.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        return;
        //if (Page.IsValid)
        //{
        //   string fileName = Server.MapPath("~/App_Data/Text.txt");
        //   string MessageBody = File.ReadAllText(fileName);
        //   MessageBody = MessageBody.Replace("##Name##", Name.Text);
        //   MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text);
        //   MessageBody = MessageBody.Replace("##PhoneHome##", PhoneHome.Text);
        //   MessageBody = MessageBody.Replace("##TopicQuestions##", TopicQuestions.Text);
        //   MessageBody = MessageBody.Replace("##Comments##", Comments.Text);
        //   Message.Visible = true;
        //   MessageSentPara.Visible = true;
        //   Message.Text = MessageBody;
        //   FormTable.Visible = false;
        //}
        //System.Threading.Thread.Sleep(1000);

    }
}