using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace fullweb.admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String qry;
        int cid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["cid"] = Convert.ToInt32(Request.QueryString.Get("cid"));
                cid = Convert.ToInt32(ViewState["cid"].ToString());
                cn.Open();

                qry = "select * from country_master where Id="+cid;

                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();

                if (dr.HasRows )
                {
                    dr.Read();
                    txt_cname.Text = dr["name"].ToString();

                }
                cn.Close();
            }
        }
 
        protected void btn_update_Click(object sender, EventArgs e)
        {
            cid = Convert.ToInt32(ViewState["cid"].ToString());
            cn.Open();

            qry = "update country_master set name='"+txt_cname.Text +"' where Id="+cid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            Response.Redirect("veiw.aspx");
            
            cn.Close();

            Response.Redirect("view.aspx");
        }
    }
}