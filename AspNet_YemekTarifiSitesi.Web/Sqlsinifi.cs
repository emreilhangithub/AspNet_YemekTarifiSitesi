using System.Data.SqlClient;

namespace AspNet_YemekTarifiSitesi.Web
{
    public class Sqlsinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-I1U4DR9;Initial Catalog=Yemek_Tarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}