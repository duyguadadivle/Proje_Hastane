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
    public partial class FrmHastaKayit : Form
    {
        public FrmHastaKayit()
        {
            InitializeComponent();
        }

        private void FrmHastaKayit_Load(object sender, EventArgs e)
        {

        }

        sqlbaglantisi bgl = new sqlbaglantisi();

        private void BtnKayitYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Hastalar (HastaAd, HastaSoyad, HastaTC, HastaTelefon, HastaSifre, HastaCinsiyet) values (@HastaAd, @HastaSoyad, @HastaTC, @HastaTelefon, @HastaSifre, @HastaCinsiyet)", bgl.baglanti());
            komut.Parameters.AddWithValue("@HastaAd", TxtAd.Text);
            komut.Parameters.AddWithValue("@HastaSoyad", TxtSoyad.Text);
            komut.Parameters.AddWithValue("@HastaTC", MskTC.Text);
            komut.Parameters.AddWithValue("@HastaTelefon", MskTelefon.Text);
            komut.Parameters.AddWithValue("@HastaSifre", TxtSifre.Text);
            komut.Parameters.AddWithValue("@HastaCinsiyet", CmbCinsiyet.Text);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Kaydınız gerçekleşmiştir. Şifreniz: " + TxtSifre.Text, "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}
