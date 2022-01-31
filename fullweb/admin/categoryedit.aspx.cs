using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fullweb.admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project practice\practice project\fullweb\fullweb\App_Data\Database1.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String qry;
        int cat_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["cat_id"] = Convert.ToInt32(Request.QueryString.Get("cat_id"));
                cat_id = Convert.ToInt32(ViewState["cat_id"].ToString());
                cn.Open();

                qry = "select * from category_master where Id=" + cat_id;

                cmd = new SqlCommand(qry, cn);
                dr=cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    txt_cat_name.Text = dr["cat_name"].ToString();
                    txt_cat_desp.Text = dr["cat_desp"].ToString();
                    ddl_isactive.SelectedItem.Text = dr["cat_isactive"].ToString();

                }
                cn.Close();
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            cn.Open();

            
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

        }
    }
}