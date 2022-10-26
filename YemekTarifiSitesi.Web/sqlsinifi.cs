using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public class Sqlsinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-E9UTSVL;Initial Catalog=Yemek_Tarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}