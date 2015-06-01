using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1_Enterprise
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Variable Declaration
            int gameWon = 0,gameLost = 0,totalScored = 0,totalAllowed = 0,numOfSpectators = 0;

            // Fetching Radiobuttons 
            RadioButtonList game1Result = game1.FindControl("rblResult") as RadioButtonList;
            RadioButtonList game2Result = game2.FindControl("rblResult") as RadioButtonList;
            RadioButtonList game3Result = game3.FindControl("rblResult") as RadioButtonList;
            RadioButtonList game4Result = game4.FindControl("rblResult") as RadioButtonList;

            //Fetching Score TextBoxes
            TextBox game1Score = game1.FindControl("txtScored") as TextBox;
            TextBox game2Score = game2.FindControl("txtScored") as TextBox;
            TextBox game3Score = game3.FindControl("txtScored") as TextBox;
            TextBox game4Score = game4.FindControl("txtScored") as TextBox;

            // Fetching Allowed TextBoxes
            TextBox game1Allowed = game1.FindControl("txtAllowed") as TextBox;
            TextBox game2Allowed = game2.FindControl("txtAllowed") as TextBox;
            TextBox game3Allowed = game3.FindControl("txtAllowed") as TextBox;
            TextBox game4Allowed = game4.FindControl("txtAllowed") as TextBox;

            // Fetching Spectators TextBoxes
            TextBox game1Spectators = game1.FindControl("txtSpectators") as TextBox;
            TextBox game2Spectators = game2.FindControl("txtSpectators") as TextBox;
            TextBox game3Spectators = game3.FindControl("txtSpectators") as TextBox;
            TextBox game4Spectators = game4.FindControl("txtSpectators") as TextBox;

            // game1 Result Check .. 
            if(game1Result.SelectedIndex == 0)
            {
                gameWon++;
            
            }
            else
            {
                gameLost++;
            }

            // game2 Result Check .. 
            if (game2Result.SelectedIndex == 0)
            {
                gameWon++;

            }
            else
            {
                gameLost++;
            }

            // game3 Result Check .. 
            if (game3Result.SelectedIndex == 0)
            {
                gameWon++;

            }
            else
            {
                gameLost++;
            }

            // game4 Result Check .. 
            if (game4Result.SelectedIndex == 0)
            {
                gameWon++;

            }
            else
            {
                gameLost++;
            }

            // Set number of win label, num of loss and win percent 
            lblNumOfWin.Text = gameWon.ToString();
            lblNumOfLoss.Text = gameLost.ToString();
            lblWinPercent.Text = ((gameWon *100 / (gameWon + gameLost))).ToString(); 

            // set point scored label
            totalScored = int.Parse(game1Score.Text) + int.Parse(game2Score.Text) + int.Parse(game3Score.Text) + int.Parse(game4Score.Text);
            lblPointScored.Text = totalScored.ToString();

            // set total allowed label
            totalAllowed = int.Parse(game1Allowed.Text) + int.Parse(game2Allowed.Text) + int.Parse(game3Allowed.Text) + int.Parse(game4Allowed.Text);

            // set total point allowed
            lblPointAllowed.Text = totalAllowed.ToString();
            
            // set point difference label
            lblPointDifference.Text = (totalScored - totalAllowed).ToString();

            // set num of spectators label
            numOfSpectators = int.Parse(game1Spectators.Text) + int.Parse(game2Spectators.Text) + int.Parse(game3Spectators.Text) + int.Parse(game4Spectators.Text);
            lblTotalSpectator.Text = numOfSpectators.ToString();

            // set num of average spectators
            lblAverageSpectator.Text = (numOfSpectators / 4).ToString();
        }

    }
}