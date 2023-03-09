using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=aspnet-Library-20230205104855;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void DropDownConfirm_SelectedIndexChanged1(object sender, EventArgs e)
        {
            DropDownList dropDownList1 = null;
            TextBox bookId = null;
            foreach (GridViewRow gr in GridView1.Rows)
            {
                if (dropDownList1 == null)
                {
                    dropDownList1 = gr.FindControl("DropDownConfirm") as DropDownList;
                    bookId = gr.FindControl("TextBox1") as TextBox;

                }

                if (dropDownList1 != null && bookId != null)
                {
                    break;
                }

            }


            if (dropDownList1.SelectedItem.Text == "Issue")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update item set item_quantity = item_quantity - 1 where Id = '" + bookId.Text + "'";
                cmd.ExecuteNonQuery();
            } else if (dropDownList1.SelectedItem.Text == "Return")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update item set item_quantity = item_quantity + 1 where Id = '" + bookId.Text + "'";
                cmd.CommandText = "delete from ReservationItem where BookId = '" + bookId.Text + "'";
                cmd.ExecuteNonQuery();
            }
            else if (dropDownList1.SelectedItem.Text == "Decline")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "delete from ReservationItem where BookId = '" + bookId.Text + "'";
                cmd.ExecuteNonQuery();
            }
        }
    }
}