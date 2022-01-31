using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace fullweb.admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int cid;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            ViewState["cid"] = Convert.ToInt32(Request.QueryString.Get("c" +
                "id"));
            cid = Convert.ToInt32(ViewState["cid"].ToString());
            cn.Open();

            qry = "delete from country_master where Id=" + cid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("veiw.aspx");
            cn.Close();
                
            
        }
    }
}