using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fullweb.admin
{
    public partial class signin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from admin_master where username='"+txt_email .Text+"' AND password='"+txt_pass .Text+"'";

            cmd = new SqlCommand(qry, cn);
            dr=cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                Response.Redirect("country.aspx");

            }
            else
            {

            }
            cn.Close();
        }
    }
}