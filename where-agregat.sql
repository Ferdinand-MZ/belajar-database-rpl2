SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' OR tempat_lahir = 'Ciamis';

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' OR jk = 'L';

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' OR jk = 'L' OR alamat = 'Subang';

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' AND jk = 'L';

SELECT * FROM `siswa`
WHERE alamat = 'Subang' AND jk = 'L';

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Subang' ORDER BY nilai DESC;

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Subang' ORDER BY nilai ASC;

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' ORDER BY nilai ASC;

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' ORDER BY nama ASC;

SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' ORDER BY nama DESC;

SELECT * FROM `siswa`
ORDER BY tanggal_lahir DESC;

SELECT * FROM `siswa`
ORDER BY tanggal_lahir ASC;

SELECT * FROM `siswa`
WHERE nama LIKE 'A%';

SELECT * FROM `siswa`
WHERE nama LIKE '%O';

SELECT * FROM `siswa`
WHERE nama LIKE '%A';

SELECT * FROM `siswa`
WHERE nama LIKE '%AI%';

SELECT * FROM `siswa`
WHERE nama LIKE '%PUT%';

SELECT * FROM `siswa`
WHERE alamat LIKE 'C%';

SELECT * FROM `siswa`
WHERE alamat LIKE '%NG';

SELECT tempat_lahir FROM `siswa` GROUP BY tempat_lahir;

SELECT jk FROM `siswa` GROUP BY jk;

SELECT alamat FROM `siswa` GROUP BY alamat;

SELECT * tempat_lahir FROM `siswa`
WHERE nilai BETWEEN 60 AND 80;

SELECT * FROM `siswa`
WHERE tanggal_lahir BETWEEN "2005-03-1" AND "2005-06-30";

SELECT * FROM `siswa`
WHERE nama BETWEEN "A%" AND "E%";

SELECT * FROM `siswa`
WHERE nama BETWEEN "M" AND "T";

SELECT nama, kelas, nilai AS nilai_lebih_kkm FROM `siswa`
WHERE nilai >= 78;

SELECT nama, kelas, tempat_lahir, nilai AS nilai_lebih_kkm FROM `siswa`
WHERE tempat_lahir = "Subang" AND nilai >= 78 ORDER BY nilai DESC;

SELECT nama, kelas, jk, nilai AS nilai_50_80 FROM `siswa`
WHERE nilai BETWEEN 50 AND 80 AND jk ='L' ORDER BY nilai_50_80 DESC;

SELECT tempat_lahir, COUNT(tempat_lahir) AS jumlah_orang FROM siswa GROUP BY tempat_lahir;

SELECT jk,
	AVG(nilai) AS rerata,
	MAX(nilai) AS nilai_tertinggi, 
	MIN(nilai) AS nilai_terendah,
	SUM(nilai) AS jumlah_nilai
FROM siswa GROUP BY jk;