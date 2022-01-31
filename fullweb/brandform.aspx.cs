using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fullweb.admin
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security=True");
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();

            qry = "insert into brand_master values('"+ddl_cat .Text +"','"+txt_bname .Text +"','"+txt_bdesc .Text +"','"+;

            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}