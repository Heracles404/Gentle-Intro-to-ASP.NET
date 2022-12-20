using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasinoSlots
{
    public partial class index : System.Web.UI.Page
    {
        string[] images = new string[] { "cherry", "shamrock", "horseshoe" };
        //this creates images[0]="cherry"
        //             images[1]="shamrock"
        //             images[2]="horseshoe"

        Random r = new Random();    // creates instance of the Random class
                                    // so we can generate random numbers below

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPull_Click(object sender, EventArgs e)
        {
            int bet = 0;
            
            if (!int.TryParse(txtBet.Text, out bet))
            {
                lblResult.Text = "Only integer bets please";
            }

            lblResult.Text = "";
            lblMoney.Text = "";
            txtBet.Text = "";

            play(bet);

        }

        private void play(int bet)
        {
            // pick numbers between 0 and 2
            int slot1 = r.Next(0, 3);
            int slot2 = r.Next(0, 3);
            int slot3 = r.Next(0, 3);


            // display the actual matching images on the page
            img1.ImageUrl = "./images/" + images[slot1] + ".png";
            img2.ImageUrl = "./images/" + images[slot2] + ".png";
            img3.ImageUrl = "./images/" + images[slot3] + ".png";

            winningValue(slot1, slot2, slot3, bet); // pass along the random numbers & bet
        }

        private void winningValue(int s1, int s2, int s3, int bet)
        {
            int w = 0;

            if(s1 == 0 && s2 == 0 && s3 == 0)
            {
                w = bet * 4;
                lblResult.Text = "Three Cherries";
            }
            else if ((s1 == 0 && s2 == 0) ||
                     (s1 == 0 && s3 == 0) ||
                     (s2 == 0 && s3 == 0))
            {
                w = bet * 3;
                lblResult.Text = "Two Cherries";
            }
            else if ((s1 == 0 && (s2 != 0 && s3 != 0)) ||
                     (s2 == 0 && (s1 != 0 && s3 != 0)) ||
                     (s3 == 0 && (s1 != 0 && s2 != 0)))
            {
                w = bet * 2;
                lblResult.Text = "One Cherry";
            }
            else if (s1 == 2 && s2 == 2 && s3 == 2)
            {
                w = bet * 100;
                lblResult.Text = "Three Horseshoes!!!";
            }

            lblMoney.Text = "You bet " + bet.ToString() + " and won " + w.ToString();
        }
    }
}