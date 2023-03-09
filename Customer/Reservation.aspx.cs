using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=aspnet-Library-20230205104855;Integrated Security=True");
        double val = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string waiting = "Waiting";
            Session["UserName"] = System.Web.HttpContext.Current.User.Identity.Name;
            Session["CustomerId"] = User.Identity.GetUserId();
            Session["Confirm"] = waiting;
            AutoId();


            Label Label3 = FormView1.FindControl("UserNameLabel") as Label;
            Label3.Text = System.Web.HttpContext.Current.User.Identity.Name;
        }

        private void AutoId()
        {
            Label label1 = FormView1.FindControl("ResLabel") as Label;
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT TOP 1 (Res_Id) FROM[ReservationItem] ORDER BY Res_Id DESC", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            label1.Text = i.ToString();


        }
    }
}