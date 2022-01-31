using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fullweb.admin
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int cat_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["cat_id"] = Convert.ToInt32(Request.QueryString.Get("cat_id"));
            cat_id = Convert.ToInt32(ViewState["cat_id"].ToString());

            cn.Open();

            qry = "delete from category_master where Id="+cat_id ;

            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("categoryview.aspx");
            cn.Close();
           
        }
    }
}