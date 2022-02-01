using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Proje_Hastane
{
    public partial class FrmHastaDetay : Form
    {
        public FrmHastaDetay()
        {
            InitializeComponent();
        }

        public string tc;

        sqlbaglantisi bgl = new sqlbaglantisi();

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }

        private void FrmHastaDetay_Load(object sender, EventArgs e)
        {
            LblTC.Text = tc;


            //Ad Soyad veri çek
            SqlCommand komut = new SqlCommand("select HastaAd, HastaSoyad from Tbl_Hastalar where HastaTC = @HastaTC", bgl.baglanti());
            komut.Parameters.AddWithValue("@HastaTC", LblTC.Text);
            SqlDataReader dr = komut.ExecuteReader();

            while(dr.Read())
            {
                LblAdSoyad.Text = dr[0] + " " + dr[1];
            }
            bgl.baglanti().Close();

            //Randevu geçmişi

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Randevular where HastaTC = " + tc, bgl.baglanti());
            da.Fill(dt);
            dataGridView1.DataSource = dt;

        }
    }
}
