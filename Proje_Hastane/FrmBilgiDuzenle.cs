using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data. Sql;
using System.Data.SqlClient;

namespace Proje_Hastane
{
    public partial class FrmBilgiDuzenle : Form
    {
        public FrmBilgiDuzenle()
        {
            InitializeComponent();
        }
        public string tcNo;

        sqlbaglantisi bgl = new sqlbaglantisi();

        private void FrmBilgiDuzenle_Load(object sender, EventArgs e)
        {
            MskTC.Text = tcNo;

            SqlCommand komut = new SqlCommand("select * from Tbl_Hastalar where HastaTc = @HastaTc", bgl.baglanti());
            komut.Parameters.AddWithValue("@HastaTC", MskTC.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[1].ToString();
                TxtSoyad.Text = dr[2].ToString();
                MskTelefon.Text = dr[4].ToString();
                TxtSifre.Text = dr[5].ToString();
                CmbCinsiyet.Text = dr[6].ToString();

            }
            bgl.baglanti().Close();

        }

        private void BtnBilgileriGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_Hastalar set HastaAd = @HastaAd, HastaSoyad = @HastaSoyad, HastaTelefon = @HastaTelefon, HastaSifre = @HastaSifre, HastaCinsiyet = @HastaCinsiyet where HastaTC = @HastaTC", bgl.baglanti());
            komut2.Parameters.AddWithValue("@HastaAd", TxtAd.Text);
            komut2.Parameters.AddWithValue("@HastaSoyad", TxtSoyad.Text);
            komut2.Parameters.AddWithValue("@HastaTelefon", MskTelefon.Text);
            komut2.Parameters.AddWithValue("@HastaSifre", TxtSifre.Text);
            komut2.Parameters.AddWithValue("@HastaCinsiyet", CmbCinsiyet.Text);
            komut2.Parameters.AddWithValue("@HastaTC", MskTC.Text);
            komut2.ExecuteNonQuery();

            bgl.baglanti().Close();
            MessageBox.Show("Bilgileriniz güncellendi.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);


        }
    }
}
