using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void citySelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCity.Text = citySelect.SelectedValue;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get selected checkboxes
            string selectedQualifications = String.Join(", ", 
                                            qualifications.Items.OfType<ListItem>()
                                            .Where(r => r.Selected).Select(r => r.Value));

            lblResult.Text = "Name: " + Name.Text + 
                             "<br/>&nbsp; Branch: " + lblCity.Text +
                             "<br/>&nbsp; Department: " + department.Text +
                             "<br/>&nbsp; Qualifications: " + selectedQualifications;





        }
    }
}