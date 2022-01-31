using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fullweb.admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security=True");
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            cn.Open();

            qry = "insert into category_master values('"+txt_cname.Text  +"','"+txt_cdesc.Text  +"','"+ddl_cat .SelectedValue+"')";

            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            cn.Close();
        }
    }
}