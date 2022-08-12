CREATE DATABASE sekolah;

USE sekolah;

CREATE TABLE siswa (
    -> nis CHAR(10) PRIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tempat_lahir VARCHAR(50),
    -> tanggal_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT,
    -> jomblo BOOLEAN);

desc siswa;

INSERT INTO siswa VALUES (
    -> '12100018',
    -> 'ADNAN MAULANA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'CIGADUNG',
    -> '11-RPL-2',
    -> '81,32',
    -> 'Y');

SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.001 sec)

DESCRIBE siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(10)     | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jk            | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
| jomblo        | tinyint(1)   | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
9 rows in set (0.021 sec)

select *from siswa;
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
| nis      | nama          | jk   | tempat_lahir | tanggal_lahir | alamat   | kelas    | nilai | jomblo |
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
| 12100018 | ADNAN MAULANA | L    | SUBANG       | 2005-08-17    | CIGADUNG | 11-RPL-2 |    81 |      0 |
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
1 row in set (0.001 sec)

MariaDB [sekolah]> SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.001 sec)

DESCRIBE siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(10)     | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jk            | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
| jomblo        | tinyint(1)   | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
9 rows in set (0.020 sec)

INSERT INTO siswa VALUES (
    -> '12100272',
    -> 'Ferdinand Maulana Za Fauzi',
    -> 'L',
    -> 'Jakarta',
    -> '2006-07-28',
    -> 'Purwadadi',
    -> '11-RPL-2',
    -> '98,89',
    -> '1' );

SELECT *from siswa
    -> ;
+----------+----------------------------+------+--------------+---------------+-----------+----------+-------+--------+
| nis      | nama                       | jk   | tempat_lahir | tanggal_lahir | alamat    | kelas    | nilai | jomblo |
+----------+----------------------------+------+--------------+---------------+-----------+----------+-------+--------+
| 12100018 | ADNAN MAULANA              | L    | SUBANG       | 2005-08-17    | CIGADUNG  | 11-RPL-2 |    81 |      0 |
| 12100272 | Ferdinand Maulana Za Fauzi | L    | Jakarta      | 2006-07-28    | Purwadadi | 11-RPL-2 |    98 |      1 |
+----------+----------------------------+------+--------------+---------------+-----------+----------+-------+--------+


INSERT INTO siswa VALUES (
    -> '1210062',
    -> 'Rizki Ramdhani',
    -> 'L',
    -> 'Subang',
    -> '2005-10-24',
    -> 'Anggur Sari',
    -> '11-RPL-2',
    -> '70,16',
    -> '1');

MariaDB [sekolah]> INSERT INTO siswa VALUES (
    -> '12100461',
    -> 'Maruf Hartanto',
    -> 'L',
    -> 'Subang',
    -> '2005-06-07',
    -> 'Manyingsal',
    -> '11-RPL-2',
    -> '82,09',
    -> '1');

INSERT INTO siswa VALUES (
    -> '1210060',
    -> 'Andi Ahmad Yusup',
    -> 'L',
    -> 'Subang',
    -> '2005-01-17',
    -> 'Curugrendeng',
    -> '11-RPL-2',
    -> '99,08',
    -> '0');

INSERT INTO siswa VALUES (
    -> '12100029',
    -> 'Agung Aryanto',
    -> 'L',
    -> 'Subang',
    -> '2005-01-27',
    -> 'Tanjung Wangi',
    -> '11-RPL-2',
    -> '85,32',
    -> '1');

UPDATE siswa SET tempat_lahir = 'Bandung'
    -> WHERE nis = '12100018';

UPDATE siswa SET tanggal_lahir = "2005-05-05", kelas = "11-RPL-1"
    -> WHERE nis = "12100018";

UPDATE siswa SET alamat = 'Cigadung'
    -> WHERE nis = '12100018';

DELETE from siswa
    -> WHERE nis = "12100018";

select *from siswa;
+----------+----------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| nis      | nama                       | jk   | tempat_lahir | tanggal_lahir | alamat        | kelas    | nilai | jomblo |
+----------+----------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| 12100029 | Agung Aryanto              | L    | Subang       | 2005-01-27    | Tanjung Wangi | 11-RPL-2 |    85 |      1 |
| 12100272 | Ferdinand Maulana Za Fauzi | L    | Jakarta      | 2006-07-28    | Purwadadi     | 11-RPL-2 |    98 |      1 |
| 12100461 | Maruf Hartanto             | L    | Subang       | 2005-06-07    | Manyingsal    | 11-RPL-2 |    82 |      1 |
| 1210060  | Andi Ahmad Yusup           | L    | Subang       | 2005-01-17    | Curugrendeng  | 11-RPL-2 |    99 |      0 |
| 1210062  | Rizki Ramdhani             | L    | Subang       | 2005-10-24    | Anggur Sari   | 11-RPL-2 |    70 |      1 |
+----------+----------------------------+------+--------------+---------------+---------------+----------+-------+--------+
5 rows in set (0.001 sec)
