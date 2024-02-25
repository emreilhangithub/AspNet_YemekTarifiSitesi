using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNet_YemekTarifiSitesi.Web
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        private string YorumId = "";
        private string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // Onaylı Yorumlar Listesi
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YorumOnay = 1", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Onaysız Yorumlar Listesi
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YorumOnay = 0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

            YorumId = Request.QueryString["YorumId"];
            islem = Request.QueryString["islem"];
            //Silme işlemi
            if (Page.IsPostBack == false)
            {
                if (islem == "sil")
                {
                    SqlCommand komutSil = new SqlCommand("DELETE FROM Tbl_Yorumlar WHERE YorumId = @YorumId",
                        bgl.baglanti());
                    komutSil.Parameters.AddWithValue("@YorumId", YorumId);
                    komutSil.ExecuteNonQuery();
                    bgl.baglanti().Close();
                }
            }


            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}