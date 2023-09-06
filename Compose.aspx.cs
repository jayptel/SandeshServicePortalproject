using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Collections.Generic;
using System.Web.Script.Services;
using System.Web.Services;
using System.IO;

public partial class Compose : System.Web.UI.Page
{
    DS_Contact.Contactmst_selectDataTable CDT = new DS_Contact.Contactmst_selectDataTable();
    DS_ContactTableAdapters.Contactmst_selectTableAdapter CAdapter = new DS_ContactTableAdapters.Contactmst_selectTableAdapter();

    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {

        // MultiView1.ActiveViewIndex = -1;

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<string> GetCompanyName(string pre)
    {
        List<string> allCompanyName = new List<string>();
        using (MailServerEntities dc = new MailServerEntities())
        {
            allCompanyName = (from a in dc.UserMsts
                              where a.Email.StartsWith(pre)
                              select a.Email).ToList();
            /*allCompanyName = (from a in dc.UserMsts
                              where a.Email.Contains(pre)
                              select a.Email).ToList();*/
        }

        return allCompanyName;


    }


    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<string> GetMultipleName(string empName)
    {
        List<string> CompanyName = new List<string>();
        using (MailServerEntities dc = new MailServerEntities())
        {
            CompanyName = (from a in dc.UserMsts
                           where a.Email.StartsWith(empName)
                           select a.Email).ToList();
            /*allCompanyName = (from a in dc.UserMsts
                              where a.Email.Contains(pre)
                              select a.Email).ToList();*/
        }

        return CompanyName;


    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<string> GetOnlineName(string online)
    {
        List<string> allOnlineName = new List<string>();
        using (MailServerEntities dc = new MailServerEntities())
        {
            allOnlineName = (from a in dc.UserMsts
                              where a.Email.StartsWith(online)
                              select a.Email).ToList();
            /*allCompanyName = (from a in dc.UserMsts
                              where a.Email.Contains(pre)
                              select a.Email).ToList();*/
        }

        return allOnlineName;


    }


    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 0;
        lblerror1.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.selectbyemail(Session["email"].ToString());
            /* DropDownList1.DataSource = CDT;
             DropDownList1.DataTextField = "Toemail";
             DropDownList1.DataValueField = "cid";
             DropDownList1.DataBind();*/


        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 1;
        lblerror2.Text = "";

        CDT = CAdapter.selectbyemail(Session["email"].ToString());
        /* CheckBoxList1.DataSource = CDT;
         CheckBoxList1.DataTextField = "Toemail";
         CheckBoxList1.DataValueField = "cid";
       CheckBoxList1.DataBind();
     */

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        btnuploadsingle.Visible = true;
        FileUpload1.Visible = true;
        FileUpload2.Visible = true;
    }

    protected void btnuploadsingle_Click(object sender, EventArgs e)
    {
        att1.Text = "";
        att2.Text = "";
        if (FileUpload1.HasFile != false)
        {

            FileUpload1.SaveAs(Server.MapPath("~/att/" + Session["uid"].ToString() + "_" + FileUpload1.FileName.ToString()));
            att1.Text = FileUpload1.FileName.ToString();
        }
        if (FileUpload2.HasFile != false)
        {
            FileUpload2.SaveAs(Server.MapPath("~/att/" + Session["uid"].ToString() + "_" + FileUpload2.FileName.ToString()));
            att2.Text = FileUpload2.FileName.ToString();
        }
        FileUpload1.Visible = false;
        FileUpload2.Visible = false;
        btnuploadsingle.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        lblerror1.Text = "";

        if (txtselectEMail.Text == "")
        {

            lblerror1.Text = "Enter Valid Email Id";

        }
        else if (txtsubject.Text == "")
        {
            lblerror1.Text = "Enter Subject ";
        }
        else if (txtmessage.Text == "")
        {
            lblerror1.Text = "Enter Message";
        }
        else
        {
            if (att1.Text != "" && att2.Text != "")
            {
                int inst = MAdapter.Insert(Session["email"].ToString(), txtselectEMail.Text, txtsubject.Text, txtmessage.Text, "~/att/" + Session["uid"].ToString() + "_" + att1.Text, "~/att/" + Session["uid"].ToString() + "_" + att2.Text, 0);
                MultiView1.ActiveViewIndex = 2;
                lblsnd.Text = txtselectEMail.Text;
            }
            else if (att1.Text == "" && att2.Text != "")
            {
                int inst = MAdapter.Insert(Session["email"].ToString(), txtselectEMail.Text, txtsubject.Text, txtmessage.Text, "", "~/att/" + Session["uid"].ToString() + "_" + att2.Text, 0);
                MultiView1.ActiveViewIndex = 2;
                lblsnd.Text = txtselectEMail.Text;
            }
            else if (att1.Text != "" && att2.Text == "")
            {
                int inst = MAdapter.Insert(Session["email"].ToString(), txtselectEMail.Text, txtsubject.Text, txtmessage.Text, "~/att/" + Session["uid"].ToString() + "_" + att1.Text, "", 0);
                MultiView1.ActiveViewIndex = 2;
                lblsnd.Text = txtselectEMail.Text;
            }
            else
            {
                int inst = MAdapter.Insert(Session["email"].ToString(), txtselectEMail.Text, txtsubject.Text, txtmessage.Text, "", "", 0);
                MultiView1.ActiveViewIndex = 2;
                lblsnd.Text = txtselectEMail.Text;

            }
            txtselectEMail.Text = "";
            att1.Text = "";
            att2.Text = "";
            txtmessage.Text = "";
            txtsubject.Text = "";

        }






    }
    protected void txt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        lblerror2.Text = "";
        string var = Txt_toaddress.Text;
        string arrya = var.Substring(0, var.Length - 1);
        MultiView1.ActiveViewIndex = 1;
        if (Txt_toaddress.Text == "")
        {

            lblerror2.Text = "Enter More Then One Email ID separate by ,";
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtsubjectgroup.Text == "")
        {

            lblerror2.Text = "Enter Subject";
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtmessagegroup.Text == "")
        {

            lblerror2.Text = "Enter Message";
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            if (arrya.Contains(','))//checking for you are entered single value or multiple values  
            {
                string[] arryval = arrya.Split(',');//split values with ‘,’  
                int j = arryval.Length;
                for (int i = 0; i < j; i++)
                {



                    if (att3.Text != "" && att4.Text != "")
                    {
                        int inst = MAdapter.Insert(Session["email"].ToString(), arryval[i].ToString(), txtsubjectgroup.Text, txtmessagegroup.Text, "~/att/" + Session["uid"].ToString() + "_" + att3.Text, "~/att/" + Session["uid"].ToString() + "_" + att4.Text, 0);
                        // lblsnd0.Text = "Message Successfully Send To ALL ";
                        MultiView1.ActiveViewIndex = 2;
                        lblsnd.Text = "ALL";

                    }
                    else if (att3.Text == "" && att4.Text != "")
                    {
                        int inst = MAdapter.Insert(Session["email"].ToString(), arryval[i].ToString(), txtsubjectgroup.Text, txtmessagegroup.Text, "", "~/att/" + Session["uid"].ToString() + "_" + att4.Text, 0);
                        MultiView1.ActiveViewIndex = 2;
                        lblsnd.Text = "ALL";
                    }
                    else if (att3.Text != "" && att4.Text == "")
                    {
                        int inst = MAdapter.Insert(Session["email"].ToString(), arryval[i].ToString(), txtsubjectgroup.Text, txtmessagegroup.Text, "~/att/" + Session["uid"].ToString() + "_" + att3.Text, "", 0);
                        //lblsnd0.Text = "Message Successfully Send To ALL ";
                        MultiView1.ActiveViewIndex = 2;
                        lblsnd.Text = "ALL";
                    }
                    else
                    {
                        int inst = MAdapter.Insert(Session["email"].ToString(), arryval[i].ToString(), txtsubjectgroup.Text, txtmessagegroup.Text, "", "", 0);
                        // lblsnd0.Text = "Message Successfully Send To ALL ";
                        MultiView1.ActiveViewIndex = 2;
                        lblsnd.Text = "ALL";
                    }

                }

            }
            else {
                
                lblerror2.Text = "Enter More then one Email Id";
            }
            Txt_toaddress.Text = "";
            txtsubjectgroup.Text = "";
            txtmessagegroup.Text = "";
            att3.Text = "";
            att4.Text = "";
        }

    }

    protected void txtsubject_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnuploadsinglegroup_Click(object sender, EventArgs e)
    {
        att3.Text = "";
        att4.Text = "";
        if (FileUpload3.HasFile != false)
        {

            FileUpload3.SaveAs(Server.MapPath("~/att/" + Session["uid"].ToString() + "_" + FileUpload3.FileName.ToString()));
            att3.Text = FileUpload3.FileName.ToString();
        }
        if (FileUpload4.HasFile != false)
        {
            FileUpload4.SaveAs(Server.MapPath("~/att/" + Session["uid"].ToString() + "_" + FileUpload4.FileName.ToString()));
            att4.Text = FileUpload4.FileName.ToString();
        }
        FileUpload4.Visible = false;
        FileUpload3.Visible = false;
        btnuploadsinglegroup.Visible = false;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        btnuploadsinglegroup.Visible = true;
        FileUpload3.Visible = true;
        FileUpload4.Visible = true;

        MultiView1.ActiveViewIndex = 1;

    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsend_Web_Click(object sender, EventArgs e)
    {
        
        lblerror3.Text = "";
        MultiView1.ActiveViewIndex = 3;
        if (txtemaill.Text == "")
        {
            lblerror3.Text = "Enter valid Only One Email ID";
            MultiView1.ActiveViewIndex = 3;
        }
        else if (txtsubject0.Text == "")
        {
            lblerror3.Text = "Enter Subject";
            MultiView1.ActiveViewIndex = 3;
        }
        else if (txtmessage0.Text == "")
        {
            lblerror3.Text = "Enter Message";
            MultiView1.ActiveViewIndex = 3;
        }
        else
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(txtemaill.Text);

            mail.From = new MailAddress("jimilp0000@gmail.com");
            mail.Subject = txtsubject0.Text;

            string Body = txtmessage0.Text;
            mail.Body = Body;
            // string strdir = "C:\\temp\\";
            
  string strdir = "C:\\temp\\";
            string strfilename = Path.GetFileName(FileUpload5.PostedFile.FileName);
            FileUpload5.PostedFile.SaveAs(strdir + strfilename);
           
            mail.Attachments.Add(new Attachment(strdir + strfilename));

        //    mail.Attachments.Add(new Attachment(att5.Text));
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential
                 ("jimilp0000@gmail.com", "9871234560");

            smtp.EnableSsl = true;
            smtp.Send(mail);
            txtemaill.Text = "";
            txtsubject0.Text = "";
            txtmessage0.Text = "";
            MultiView1.ActiveViewIndex = 2;
            lblsnd.Text = txtemaill.Text;
            
        }



    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        lblerror3.Text = "";

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
        FileUpload5.Visible = true;
    

        MultiView1.ActiveViewIndex = 3;
    }

    
}