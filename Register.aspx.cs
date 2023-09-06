using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class email_Register : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblerror.Text = "";
        UDT = UAdapter.SelectForEmailCheck(txtuname.Text);

        if (txtfname.Text == "")
        {
            lblerror.Text = "Enter First Name ";
        }
        else if (txtsname.Text == "")
        {
            lblerror.Text = "Enter Last Name ";
        }
        else if (txtmo.Text == "")
        {
            lblerror.Text = "Enter Mobile No ";
        }
        else if (txtadd.Text == "")
        {
            lblerror.Text = "Enter Address ";
        }
        else if (txtcity.Text == "")
        {
            lblerror.Text = "Enter City ";
        }
        else if (txtpin.Text == "")
        {
            lblerror.Text = "Enter Pincode ";
        }
        else if (DrpDD.Text == "")
        {
            lblerror.Text = "Enter Date Of Birth ";
        }
        else if (txtuname.Text == "")
        {
            lblerror.Text = "Enter Email ID ";
        }
        else if (txtpass.Text == "")
        {

            lblerror.Text = "Enter Password";
        }
        else
        {

            if (UDT.Rows.Count == 1)
            {
                lblerror.Text = "Email already exist !!";

            }
            else
            {
                string img = "";
                if (RadioButton1.Checked == true)
                {
                    img = "~/img/boy.jpeg";

                }
                else
                {
                    img = "~/img/girl.jpeg";
                }


                if (txtpass.Text.Length > 8)
                {
                    if (UDT.Rows.Count > 0)
                    {
                        lblerror.Text = "UserName Already Exist!";

                    }
                    else
                    {
                        int inst = UAdapter.Insert(txtfname.Text, txtsname.Text, Convert.ToDateTime(DrpDD.Text), txtadd.Text, txtcity.Text, txtpin.Text, txtmo.Text, txtuname.Text, txtpass.Text, img);
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {
                    lblerror.Text = "Password more then 8 char";
                }
            }
        }
    }
}