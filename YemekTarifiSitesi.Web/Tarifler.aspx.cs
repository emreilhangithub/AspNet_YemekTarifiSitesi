using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class Tarifler : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Tarifler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}