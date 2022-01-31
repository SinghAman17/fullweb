using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace fullweb.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            cn.Open();

            qry = "insert into country_master values('"+txt_name .Text+"')";

            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}