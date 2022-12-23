using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Journals
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtStart.Text = "";
            txtEnd.Text = "";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (txtStart.Text == "")
            {
                txtStart.Text = Calendar1.SelectedDate.ToString();
            }
            else
            {
                txtEnd.Text = Calendar1.SelectedDate.ToString();
            }
        }
    }
}