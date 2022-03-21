using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
          //ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
          //DeleteCommand="DELETE FROM [users_info] WHERE [id] = @id" 
          //InsertCommand="INSERT INTO [users_info] ([fullname], [email], [password]) VALUES (@fullname, @email, @password)" 
          //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
          //SelectCommand="SELECT [id], [fullname], [email], [password] FROM [users_info]" 
          //UpdateCommand="UPDATE [users_info] SET [fullname] = @fullname, [email] = @email, [password] = @password WHERE [id] = @id">
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/Default.aspx");
        try
        {

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [users_info] WHERE [email] = @email AND [password] = @password", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
            con.Open();
            int s = (int)cmd.ExecuteScalar();
            if (s == 1)
            {
                Session["email"] = TextBox1.Text;
                Response.Redirect("~/Default.aspx");
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Literal1.Text = "Email and Password are invalid!";
            }
        }
        catch (SqlException ex)
        {
            Response.Write("<script>alert(Error Message = '" + ex.Message + "')</script>");
        }
        con.Close();
    }
}