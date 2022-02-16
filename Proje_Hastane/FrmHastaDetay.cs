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
            /*
            // TODO: This line of code loads data into the 'hastaneProjeDBDataSet1.Tbl_Randevular' table. You can move, or remove it, as needed.
            this.tbl_RandevularTableAdapter.Fill(this.hastaneProjeDBDataSet1.Tbl_Randevular);
            LblTC.Text = tc;
            */
            ////////seçilen doktor ve branşa göre datagridviewe listeleme yapmak lazım

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

            //DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Randevular where HastaTC = " + tc, bgl.baglanti());
            //da.Fill(dt);
            //dataGridView1.DataSource = dt;
            
            ///// Radevu geçmişi error fixed
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Randevular where HastaTC = '" + LblTC.Text + "'", bgl.baglanti());
            da.Fill(dt);
            dataGridView1.DataSource = dt;

            //Branşları çekme
            SqlCommand komut2 = new SqlCommand("select BransAd from Tbl_Branslar", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            while (dr2.Read()){
                CmbBrans.Items.Add(dr2[0]);
            }
            bgl.baglanti().Close();

        }

        private void CmbBrans_SelectedIndexChanged(object sender, EventArgs e)
        {
            CmbDoktor.Items.Clear();
            SqlCommand komut3 = new SqlCommand("select DoktorAd, DoktorSoyad from Tbl_Doktorlar where DoktorBrans = @DoktorBrans", bgl.baglanti());
            komut3.Parameters.AddWithValue("@DoktorBrans", CmbBrans.Text);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                CmbDoktor.Items.Add(dr3[0] + " " + dr3[1]);
            }
            bgl.baglanti().Close();
        }

        private void CmbDoktor_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Randevular where RandevuBrans = ' "+ CmbBrans.Text + "' ", bgl.baglanti());
            da.Fill(dt);
            dataGridView2.DataSource = dt;*/

            DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Randevular where RandevuBrans = '" + CmbBrans.Text + "'" + " and RandevuDoktor = '" + CmbDoktor.Text + "'", bgl.baglanti());
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Randevular where RandevuBrans = '" + CmbBrans.Text + "'" + " and RandevuDoktor = '" + CmbDoktor.Text + "' and RandevuDurum = 0", bgl.baglanti());
            da.Fill(dt);
            dataGridView2.DataSource = dt;



        }

        private void BtnRandevuAl_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Randevular set RandevuDurum = 1, HastaTC = @HastaTC, HastaSikayet = @HastaSikayet where Randevuid = @Randevuid", bgl.baglanti());
            komut.Parameters.AddWithValue("@HastaTC", LblTC.Text);
            komut.Parameters.AddWithValue("@HastaSikayet", RchSikayet.Text);
            komut.Parameters.AddWithValue("@Randevuid", Txtid.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Randevu alındı", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
          
        }

        private void LnkBilgiDuzenle_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FrmHastaBilgiDuzenle fr = new FrmHastaBilgiDuzenle();
            fr.tcNo = LblTC.Text;
            fr.Show();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int secilen = dataGridView2.SelectedCells[0].RowIndex;
            Txtid.Text = dataGridView2.Rows[secilen].Cells[0].Value.ToString();

        }
    }
}
