using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        decimal totale = 0;
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedItem.Value;
            Image1.ImageUrl = $"~/Content/NewFolder1/{selectedValue}";
            string priceAttribute = ( DropDownList1.SelectedItem.Attributes["Data-Price"]);
           
            if (decimal.TryParse(priceAttribute, out decimal prezzo))
            {
               
                p1.InnerText = $"Prezzo: {prezzo:C}";

               
               
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
         

        }

        protected void CalcolaTotale_Click(object sender, EventArgs e)
        {
            

            
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    
                    if (decimal.TryParse(item.Attributes["Data-Price"], out decimal prezzo))
                    {
                        totale += prezzo;
                        Label1.Text = $"Costo Optional: {totale:C}";
                    }
                }
            }
              string priceAttribute = DropDownList1.SelectedItem.Attributes["Data-Price"];
            if (decimal.TryParse(priceAttribute, out decimal prezzoAuto))
            {
                totale += prezzoAuto;
            }

            string yearPrice = DropDownList2.SelectedItem.Attributes["Data-Price"];
            if (decimal.TryParse(yearPrice, out decimal year))
            {
                totale += year;
                Label2.Text = $"Costo Garanzia: {year:C}";
            }
            Label3.Text = $"Costo Totale: {totale:C}";

        }

       
        


    }
}