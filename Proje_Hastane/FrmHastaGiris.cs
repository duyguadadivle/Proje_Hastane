﻿using System;
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
    public partial class FrmHastaGiris : Form
    {
        public FrmHastaGiris()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void LnkUyeOl_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FrmHastaKayit fr = new FrmHastaKayit();
            fr.Show();

        }

        sqlbaglantisi bgl = new sqlbaglantisi();

        private void BtnGirisYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Hastalar where HastaTC = @HastaTC and Hastasifre = @HastaSifre", bgl.baglanti());
            komut.Parameters.AddWithValue("@HastaTC", MskTC.Text);
            komut.Parameters.AddWithValue("@HastaSifre", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            
            if(dr.Read())
            {
                FrmHastaDetay fr = new FrmHastaDetay();
                fr.tc = MskTC.Text;
                fr.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Hatalı TC ya da şifre");
            }
            bgl.baglanti().Close();

        }

        private void TxtSifre_TextChanged(object sender, EventArgs e)
        {

        }

        private void MskTC_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void FrmHastaGiris_Load(object sender, EventArgs e)
        {

        }
    }
}
