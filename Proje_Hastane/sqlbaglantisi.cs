using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;


namespace Proje_Hastane
{
    internal class sqlbaglantisi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-OBVPPKV;Initial Catalog=HastaneProjeDB;Integrated Security=True");
            baglan.Open();
            return baglan;

        }
    }
}
