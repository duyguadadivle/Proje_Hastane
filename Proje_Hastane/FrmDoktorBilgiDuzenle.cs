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
    public partial class FrmDoktorBilgiDuzenle : Form
    {
        public FrmDoktorBilgiDuzenle()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();
        public string tc;


        private void FrmDoktorBilgiDuzenle_Load(object sender, EventArgs e)
        {
            MskTC.Text = tc;

            SqlCommand komut = new SqlCommand("select * from Tbl_Doktorlar where DoktorTC = @DoktorTC", bgl.baglanti());
            komut.Parameters.AddWithValue("@DoktorTC", MskTC.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[1].ToString();
                TxtSoyad.Text = dr[2].ToString();
                CmbBrans.Text = dr[3].ToString();
                TxtSifre.Text = dr[5].ToString();
            }
            bgl.baglanti().Close();
        }

        private void BtnBilgileriGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Doktorlar set DoktorAd = @DoktorAd, DoktorSoyad = @DoktorSoyad, DoktorSifre = @DoktorSifre where DoktorTC = @DoktorTC", bgl.baglanti());
            komut.Parameters.AddWithValue("@DoktorAd", TxtAd.Text);
            komut.Parameters.AddWithValue("@DoktorSoyad", TxtSoyad.Text);
            komut.Parameters.AddWithValue("@DoktorBrans", CmbBrans.Text);
            komut.Parameters.AddWithValue("@DoktorSifre", TxtSifre.Text);
            komut.Parameters.AddWithValue("@DoktorTC", MskTC.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Kayıt güncellendi.");

        }
    }
}
