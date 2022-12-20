using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cars
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarIMG.ImageUrl = "/images/default.jpg";
        }

        protected void selCars_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (selCars.SelectedIndex == 0)
            {
                CarIMG.ImageUrl = "/images/default.jpg";
            } 
            else if (selCars.SelectedIndex == 1)
            {
                CarIMG.ImageUrl = "/images/camero.jpg";
            }
            else if (selCars.SelectedIndex == 2)
            {
                CarIMG.ImageUrl = "/images/corvette.jpg";
            }
            else if (selCars.SelectedIndex == 3)
            {
                CarIMG.ImageUrl = "/images/mustang.jpg";
            }
            else if (selCars.SelectedIndex == 4)
            {
                CarIMG.ImageUrl = "/images/porsche.jpg";
            }
        }
    }
}