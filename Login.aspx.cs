using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class email_Login : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        lblerror.Text = "";

        UDT = UAdapter.SelectForLOGIN(txtuname.Text, txtupass.Text);

        if (UDT.Rows.Count > 0)
        {
            Session["uid"] = UDT.Rows[0]["uid"].ToString();
            Session["email"] = UDT.Rows[0]["email"].ToString();
            Session["password"] = UDT.Rows[0]["password"].ToString();
            Session["name"] = UDT.Rows[0]["fname"].ToString();
            Session["img"] = UDT.Rows[0]["image"].ToString();
            Response.Redirect("index.aspx");

        }
        else
        {
            lblerror.Text = "Invalid email or password";

        }
    }
}