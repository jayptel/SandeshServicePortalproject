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
public partial class ForgotPassword : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {


            UDT = UAdapter.USERMST_SELECTBYID(Convert.ToInt32(Session["UID"].ToString()));
            txtpass.Text = UDT.Rows[0]["Password"].ToString();
            
          
            


            



        }
    }

    protected void txtoldpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnpass_Click(object sender, EventArgs e)
    {
        lblerror.Text = "";
        if (Session["password"].ToString() == txtpass.Text)
        {
            if (txtnewpass.Text.Length >= 8)
            {
                UAdapter.USERMST_UPDATEPASSWORD(Convert.ToInt32(Session["uid"].ToString()), txtnewpass.Text);
                // UAdapter.SELECT_UPDATEPASSWORD(Convert.ToInt32(Session["uid"]ToString()), txtnewpass.Text);

                lblerror.Text = "Your Password Successfully Changed.";
                txtnewpass.Text = "";
                txtconfirmpass.Text = "";
            }
            else
            {
                lblerror.Text = "New Password have At Least 8 Character";
                
            }
        }
        else
        {

            lblerror.Text = "Password Is Not Match! Try Again.";

        }
        //if (txtpass.Text.Length > 8)
        //       {
        //          // int inst = UAdapter.Insert(txtfname.Text, txtsname.Text, Convert.ToDateTime(DrpDD.SelectedItem.Text + " " + Drpmm.SelectedItem.Text + " " + Drpyyy.SelectedItem.Text), txtadd.Text, txtcity.Text, txtpin.Text, txtmo.Text, txtuname.Text, txtpass.Text, img);
        //           Response.Redirect("Default.aspx");
        //       }
        //       else
        //       {
        //          // lblerror.Text = "Password more then 8 char";
        //       }

    }
}