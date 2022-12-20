using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstASPWebApp
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            string fName = txtFirst.Text;
            string lName = txtLast.Text;
            string result = "Hello there " + char.ToUpper(fName[0]) + fName.Substring(1) + " " + char.ToUpper(lName[0]) + lName.Substring(1) + ".";

            string req = "Please enter a name.";

            if (fName == "" && lName == "")
            {
                lblResult.Text = req;
            }
            else
            {
                lblResult.Text = result;
            }
        }
    }
}