1. SELECT * FROM `tb_obat` WHERE satuan = "botol";

2. SELECT * FROM `tb_obat` WHERE jenis BETWEEN 'Obat Keras' AND 'Obat Terbatas';
	
3. SELECT * FROM `tb_obat` WHERE stok < 50;
	
4. SELECT * FROM `tb_obat` WHERE NOT satuan = 'tablet';

5. SELECT * FROM tb_obat ORDER BY harga_jual; 

6. SELECT * FROM tb_obat WHERE harga_beli BETWEEN 10000 AND 100000 AND satuan = 'Botol';

7. SELECT * FROM tb_obat WHERE jenis='Obat Bebas' AND stok >= 50;

8. SELECT * FROM tb_obat WHERE nama_obat LIKE 'B%';

9. SELECT * FROM tb_obat WHERE nama_obat LIKE '%OM%';

10. SELECT satuan, SUM(stok) AS stok_total FROM tb_obat GROUP BY satuan;

11. SELECT jenis, SUM(harga_jual) AS total_harga_jual FROM tb_obat GROUP BY jenis;

12. SELECT * FROM tb_obat WHERE kode_obat = 'K001' OR kode_obat= 'K003' OR kode_obat ='K005' OR kode_obat='K007';

13. SELECT nama_obat, stok, harga_beli, harga_jual, (harga_beli * stok) AS total_harga_beli, SUM(harga_jual * stok) AS total_harga_jual FROM `tb_obat`;

14. SELECT satuan, AVG(harga_jual) AS Rata_rata_harga_jual FROM `tb_obat` WHERE NOT satuan ='Lembar' GROUP BY satuan

15. SELECT MIN(harga_beli), MAX(harga_beli) FROM tb_obat;