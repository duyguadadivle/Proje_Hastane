namespace Proje_Hastane
{
    partial class FrmHastaDetay
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmHastaDetay));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.LblAdSoyad = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.LblTC = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.Txtid = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.LnkBilgiDuzenle = new System.Windows.Forms.LinkLabel();
            this.BtnRandevuAl = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.RchSikayet = new System.Windows.Forms.RichTextBox();
            this.CmbDoktor = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.CmbBrans = new System.Windows.Forms.ComboBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.randevuidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.randevuTarihDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.randevuSaatDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.randevuBransDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.randevuDoktorDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.randevuDurumDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.hastaTCDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tblRandevularBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.hastaneProjeDBDataSet1 = new Proje_Hastane.HastaneProjeDBDataSet1();
            this.tbl_RandevularTableAdapter = new Proje_Hastane.HastaneProjeDBDataSet1TableAdapters.Tbl_RandevularTableAdapter();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblRandevularBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hastaneProjeDBDataSet1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.LblAdSoyad);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.LblTC);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(326, 125);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Kişi Bilgi";
            // 
            // LblAdSoyad
            // 
            this.LblAdSoyad.AutoSize = true;
            this.LblAdSoyad.Location = new System.Drawing.Point(119, 93);
            this.LblAdSoyad.Name = "LblAdSoyad";
            this.LblAdSoyad.Size = new System.Drawing.Size(108, 27);
            this.LblAdSoyad.TabIndex = 2;
            this.LblAdSoyad.Text = "Null Null";
            this.LblAdSoyad.Click += new System.EventHandler(this.label4_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 93);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(114, 27);
            this.label3.TabIndex = 3;
            this.label3.Text = "Ad Soyad:";
            // 
            // LblTC
            // 
            this.LblTC.AutoSize = true;
            this.LblTC.Location = new System.Drawing.Point(119, 44);
            this.LblTC.Name = "LblTC";
            this.LblTC.Size = new System.Drawing.Size(166, 27);
            this.LblTC.TabIndex = 1;
            this.LblTC.Text = "00000000000";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 44);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 27);
            this.label1.TabIndex = 1;
            this.label1.Text = "TC No:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.Txtid);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.LnkBilgiDuzenle);
            this.groupBox2.Controls.Add(this.BtnRandevuAl);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.RchSikayet);
            this.groupBox2.Controls.Add(this.CmbDoktor);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.CmbBrans);
            this.groupBox2.Location = new System.Drawing.Point(12, 158);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(326, 463);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Randevu Paneli:";
            // 
            // Txtid
            // 
            this.Txtid.Enabled = false;
            this.Txtid.Location = new System.Drawing.Point(101, 55);
            this.Txtid.Name = "Txtid";
            this.Txtid.Size = new System.Drawing.Size(206, 34);
            this.Txtid.TabIndex = 1;
            this.Txtid.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(51, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(39, 27);
            this.label2.TabIndex = 8;
            this.label2.Text = "id:";
            // 
            // LnkBilgiDuzenle
            // 
            this.LnkBilgiDuzenle.AutoSize = true;
            this.LnkBilgiDuzenle.Location = new System.Drawing.Point(2, 379);
            this.LnkBilgiDuzenle.Name = "LnkBilgiDuzenle";
            this.LnkBilgiDuzenle.Size = new System.Drawing.Size(149, 27);
            this.LnkBilgiDuzenle.TabIndex = 6;
            this.LnkBilgiDuzenle.TabStop = true;
            this.LnkBilgiDuzenle.Text = "Bilgi Düzenle";
            this.LnkBilgiDuzenle.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkBilgiDuzenle_LinkClicked);
            // 
            // BtnRandevuAl
            // 
            this.BtnRandevuAl.Location = new System.Drawing.Point(124, 339);
            this.BtnRandevuAl.Name = "BtnRandevuAl";
            this.BtnRandevuAl.Size = new System.Drawing.Size(143, 37);
            this.BtnRandevuAl.TabIndex = 5;
            this.BtnRandevuAl.Text = "Randevu Al";
            this.BtnRandevuAl.UseVisualStyleBackColor = true;
            this.BtnRandevuAl.Click += new System.EventHandler(this.BtnRandevuAl_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(2, 178);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(93, 27);
            this.label7.TabIndex = 6;
            this.label7.Text = "Şikayet:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 136);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 27);
            this.label6.TabIndex = 5;
            this.label6.Text = "Doktor:";
            // 
            // RchSikayet
            // 
            this.RchSikayet.Location = new System.Drawing.Point(101, 178);
            this.RchSikayet.Name = "RchSikayet";
            this.RchSikayet.Size = new System.Drawing.Size(206, 155);
            this.RchSikayet.TabIndex = 4;
            this.RchSikayet.Text = "";
            // 
            // CmbDoktor
            // 
            this.CmbDoktor.FormattingEnabled = true;
            this.CmbDoktor.Location = new System.Drawing.Point(101, 136);
            this.CmbDoktor.Name = "CmbDoktor";
            this.CmbDoktor.Size = new System.Drawing.Size(206, 35);
            this.CmbDoktor.TabIndex = 3;
            this.CmbDoktor.SelectedIndexChanged += new System.EventHandler(this.CmbDoktor_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 98);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(79, 27);
            this.label5.TabIndex = 3;
            this.label5.Text = "Branş:";
            // 
            // CmbBrans
            // 
            this.CmbBrans.FormattingEnabled = true;
            this.CmbBrans.Location = new System.Drawing.Point(101, 95);
            this.CmbBrans.Name = "CmbBrans";
            this.CmbBrans.Size = new System.Drawing.Size(206, 35);
            this.CmbBrans.TabIndex = 2;
            this.CmbBrans.SelectedIndexChanged += new System.EventHandler(this.CmbBrans_SelectedIndexChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.groupBox3.Controls.Add(this.dataGridView1);
            this.groupBox3.Location = new System.Drawing.Point(359, 23);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(1295, 240);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Randevu Geçmişi";
            this.groupBox3.Enter += new System.EventHandler(this.groupBox3_Enter);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(3, 30);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1289, 207);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.dataGridView2);
            this.groupBox4.Location = new System.Drawing.Point(359, 278);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(1295, 343);
            this.groupBox4.TabIndex = 3;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Aktif Randevular";
            this.groupBox4.Enter += new System.EventHandler(this.groupBox4_Enter);
            // 
            // dataGridView2
            // 
            this.dataGridView2.AutoGenerateColumns = false;
            this.dataGridView2.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.randevuidDataGridViewTextBoxColumn,
            this.randevuTarihDataGridViewTextBoxColumn,
            this.randevuSaatDataGridViewTextBoxColumn,
            this.randevuBransDataGridViewTextBoxColumn,
            this.randevuDoktorDataGridViewTextBoxColumn,
            this.randevuDurumDataGridViewCheckBoxColumn,
            this.hastaTCDataGridViewTextBoxColumn});
            this.dataGridView2.DataSource = this.tblRandevularBindingSource;
            this.dataGridView2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView2.Location = new System.Drawing.Point(3, 30);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 51;
            this.dataGridView2.RowTemplate.Height = 24;
            this.dataGridView2.Size = new System.Drawing.Size(1289, 310);
            this.dataGridView2.TabIndex = 0;
            this.dataGridView2.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView2_CellClick);
            // 
            // randevuidDataGridViewTextBoxColumn
            // 
            this.randevuidDataGridViewTextBoxColumn.DataPropertyName = "Randevuid";
            this.randevuidDataGridViewTextBoxColumn.HeaderText = "Randevuid";
            this.randevuidDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.randevuidDataGridViewTextBoxColumn.Name = "randevuidDataGridViewTextBoxColumn";
            this.randevuidDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // randevuTarihDataGridViewTextBoxColumn
            // 
            this.randevuTarihDataGridViewTextBoxColumn.DataPropertyName = "RandevuTarih";
            this.randevuTarihDataGridViewTextBoxColumn.HeaderText = "RandevuTarih";
            this.randevuTarihDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.randevuTarihDataGridViewTextBoxColumn.Name = "randevuTarihDataGridViewTextBoxColumn";
            // 
            // randevuSaatDataGridViewTextBoxColumn
            // 
            this.randevuSaatDataGridViewTextBoxColumn.DataPropertyName = "RandevuSaat";
            this.randevuSaatDataGridViewTextBoxColumn.HeaderText = "RandevuSaat";
            this.randevuSaatDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.randevuSaatDataGridViewTextBoxColumn.Name = "randevuSaatDataGridViewTextBoxColumn";
            // 
            // randevuBransDataGridViewTextBoxColumn
            // 
            this.randevuBransDataGridViewTextBoxColumn.DataPropertyName = "RandevuBrans";
            this.randevuBransDataGridViewTextBoxColumn.HeaderText = "RandevuBrans";
            this.randevuBransDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.randevuBransDataGridViewTextBoxColumn.Name = "randevuBransDataGridViewTextBoxColumn";
            // 
            // randevuDoktorDataGridViewTextBoxColumn
            // 
            this.randevuDoktorDataGridViewTextBoxColumn.DataPropertyName = "RandevuDoktor";
            this.randevuDoktorDataGridViewTextBoxColumn.HeaderText = "RandevuDoktor";
            this.randevuDoktorDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.randevuDoktorDataGridViewTextBoxColumn.Name = "randevuDoktorDataGridViewTextBoxColumn";
            // 
            // randevuDurumDataGridViewCheckBoxColumn
            // 
            this.randevuDurumDataGridViewCheckBoxColumn.DataPropertyName = "RandevuDurum";
            this.randevuDurumDataGridViewCheckBoxColumn.HeaderText = "RandevuDurum";
            this.randevuDurumDataGridViewCheckBoxColumn.MinimumWidth = 6;
            this.randevuDurumDataGridViewCheckBoxColumn.Name = "randevuDurumDataGridViewCheckBoxColumn";
            // 
            // hastaTCDataGridViewTextBoxColumn
            // 
            this.hastaTCDataGridViewTextBoxColumn.DataPropertyName = "HastaTC";
            this.hastaTCDataGridViewTextBoxColumn.HeaderText = "HastaTC";
            this.hastaTCDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.hastaTCDataGridViewTextBoxColumn.Name = "hastaTCDataGridViewTextBoxColumn";
            // 
            // tblRandevularBindingSource
            // 
            this.tblRandevularBindingSource.DataMember = "Tbl_Randevular";
            this.tblRandevularBindingSource.DataSource = this.hastaneProjeDBDataSet1;
            // 
            // hastaneProjeDBDataSet1
            // 
            this.hastaneProjeDBDataSet1.DataSetName = "HastaneProjeDBDataSet1";
            this.hastaneProjeDBDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tbl_RandevularTableAdapter
            // 
            this.tbl_RandevularTableAdapter.ClearBeforeFill = true;
            // 
            // FrmHastaDetay
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(14F, 27F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.CadetBlue;
            this.ClientSize = new System.Drawing.Size(1924, 651);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("Georgia", 13.8F);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(5);
            this.Name = "FrmHastaDetay";
            this.Text = "HastaDetay";
            this.Load += new System.EventHandler(this.FrmHastaDetay_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblRandevularBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hastaneProjeDBDataSet1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label LblAdSoyad;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label LblTC;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox CmbBrans;
        private System.Windows.Forms.RichTextBox RchSikayet;
        private System.Windows.Forms.Button BtnRandevuAl;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox CmbDoktor;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.LinkLabel LnkBilgiDuzenle;
        private System.Windows.Forms.TextBox Txtid;
        private System.Windows.Forms.Label label2;
        private HastaneProjeDBDataSet1 hastaneProjeDBDataSet1;
        private System.Windows.Forms.BindingSource tblRandevularBindingSource;
        private HastaneProjeDBDataSet1TableAdapters.Tbl_RandevularTableAdapter tbl_RandevularTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn randevuidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn randevuTarihDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn randevuSaatDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn randevuBransDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn randevuDoktorDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn randevuDurumDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn hastaTCDataGridViewTextBoxColumn;
    }
}