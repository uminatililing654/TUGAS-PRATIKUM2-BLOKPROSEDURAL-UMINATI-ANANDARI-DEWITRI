-- =========================================
-- DATABASE (OPSIONAL)
-- =========================================
CREATE DATABASE IF NOT EXISTS db_kampus;
USE db_kampus;

-- =========================================
-- TABEL MAHASISWA
-- =========================================
CREATE TABLE mahasiswa (
    nim VARCHAR(20) PRIMARY KEY,
    nama VARCHAR(50),
    semester INT,
    prodi VARCHAR(50)
);

INSERT INTO mahasiswa VALUES
('IK2411011','Uminati',4,'Informatika'),
('IK2411032','Anandari Dewitri',4,'Informatika');

-- =========================================
-- TABEL AKADEMIK
-- =========================================
CREATE TABLE akademik (
    nim VARCHAR(20),
    sks INT,
    ipk DECIMAL(3,2),
    status_pembayaran VARCHAR(10)
);

INSERT INTO akademik VALUES
('IK2411011',18,3.40,'LUNAS'),
('IK2411032',20,3.60,'LUNAS');

-- =========================================
-- BAGIAN A
-- =========================================
DELIMITER //

DROP PROCEDURE IF EXISTS bagianA_tabel //

CREATE PROCEDURE bagianA_tabel()
BEGIN
    DECLARE kampus VARCHAR(100) DEFAULT 'Universitas Mega Buana Palopo';

    SELECT 
        CONCAT(
            'Mahasiswa ', nama, ' (', nim, ') dari Program Studi ', prodi,
            ' terdaftar di ', kampus, ' pada semester ', semester, '.'
        ) AS identitas_mahasiswa
    FROM mahasiswa;
END //

DELIMITER ;

-- =========================================
-- BAGIAN B
-- =========================================
DELIMITER //

DROP PROCEDURE IF EXISTS bagianB_tabel //

CREATE PROCEDURE bagianB_tabel()
BEGIN
    DECLARE v_nama VARCHAR(50);
    DECLARE v_sks INT;
    DECLARE v_ipk DECIMAL(3,2);
    DECLARE v_status VARCHAR(10);
    DECLARE v_semester INT;

    DECLARE status_data VARCHAR(20);
    DECLARE beban VARCHAR(20);
    DECLARE performa VARCHAR(30);

    SELECT m.nama, m.semester, a.sks, a.ipk, a.status_pembayaran
    INTO v_nama, v_semester, v_sks, v_ipk, v_status
    FROM mahasiswa m
    JOIN akademik a ON m.nim = a.nim
    WHERE m.nim = 'IK2411011';

    IF v_status = 'LUNAS' AND v_semester > 0 AND v_sks > 0 THEN
        SET status_data = 'Valid';
    ELSE
        SET status_data = 'Tidak Valid';
    END IF;

    IF v_sks BETWEEN 1 AND 12 THEN
        SET beban = 'Ringan';
    ELSEIF v_sks BETWEEN 13 AND 18 THEN
        SET beban = 'Sedang';
    ELSE
        SET beban = 'Padat';
    END IF;

    IF v_ipk >= 3.50 THEN
        SET performa = 'Sangat Baik';
    ELSEIF v_ipk >= 3.00 THEN
        SET performa = 'Baik';
    ELSEIF v_ipk >= 2.50 THEN
        SET performa = 'Cukup';
    ELSE
        SET performa = 'Perlu Pembinaan';
    END IF;

    SELECT 
        CONCAT('Status data: ', status_data) AS status_data,
        CONCAT('Beban studi: ', beban) AS beban_studi,
        CONCAT('Performa akademik: ', performa) AS performa;
END //

DELIMITER ;

-- =========================================
-- BAGIAN C
-- =========================================
DELIMITER //

DROP PROCEDURE IF EXISTS bagianC_tabel //

CREATE PROCEDURE bagianC_tabel()
BEGIN
    DECLARE v_nama VARCHAR(50);
    DECLARE v_nim VARCHAR(20);
    DECLARE v_semester INT;
    DECLARE v_prodi VARCHAR(50);
    DECLARE v_sks INT;
    DECLARE v_ipk DECIMAL(3,2);
    DECLARE v_status VARCHAR(10);

    DECLARE kelayakan VARCHAR(50);
    DECLARE beban VARCHAR(20);
    DECLARE performa VARCHAR(30);
    DECLARE alasan VARCHAR(100);

    DECLARE kampus VARCHAR(100) DEFAULT 'Universitas Mega Buana Palopo';

    SELECT m.nama, m.nim, m.semester, m.prodi,
           a.sks, a.ipk, a.status_pembayaran
    INTO v_nama, v_nim, v_semester, v_prodi,
         v_sks, v_ipk, v_status
    FROM mahasiswa m
    LEFT JOIN akademik a ON m.nim = a.nim
    WHERE m.nim = 'IK2411011'
    LIMIT 1;

    IF v_nama IS NULL THEN
        SELECT 'Data mahasiswa tidak ditemukan!' AS hasil;
    ELSE
        IF v_status = 'LUNAS' AND v_semester > 0 AND v_sks > 0 THEN
            SET kelayakan = 'layak mengambil KRS';
            SET alasan = 'karena pembayaran lunas dan SKS memenuhi syarat';
        ELSE
            SET kelayakan = 'tidak layak mengambil KRS';
            SET alasan = 'karena terdapat data yang tidak memenuhi syarat';
        END IF;

        IF v_sks BETWEEN 1 AND 12 THEN
            SET beban = 'Ringan';
        ELSEIF v_sks BETWEEN 13 AND 18 THEN
            SET beban = 'Sedang';
        ELSE
            SET beban = 'Padat';
        END IF;

        IF v_ipk >= 3.50 THEN
            SET performa = 'Sangat Baik';
        ELSEIF v_ipk >= 3.00 THEN
            SET performa = 'Baik';
        ELSEIF v_ipk >= 2.50 THEN
            SET performa = 'Cukup';
        ELSE
            SET performa = 'Perlu Pembinaan';
        END IF;

        SELECT CONCAT(
            'Mahasiswa ', v_nama, ' dengan NIM ', v_nim,
            ' dinyatakan ', kelayakan, '. ',
            'Beban studi berada pada kategori ', beban,
            ' dengan performa akademik ', performa,
            ' (', alasan, ').'
        ) AS hasil;
    END IF;
END //

DELIMITER ;

-- =========================================
-- BAGIAN D
-- =========================================
DELIMITER //

DROP PROCEDURE IF EXISTS bagianD_tabel //

CREATE PROCEDURE bagianD_tabel()
BEGIN
    DECLARE nama1 VARCHAR(50);
    DECLARE nim1 VARCHAR(20);
    DECLARE semester1 INT;
    DECLARE sks1 INT;
    DECLARE ipk1 DECIMAL(3,2);
    DECLARE status1 VARCHAR(10);

    DECLARE nama2 VARCHAR(50);
    DECLARE nim2 VARCHAR(20);
    DECLARE semester2 INT;
    DECLARE sks2 INT;
    DECLARE ipk2 DECIMAL(3,2);
    DECLARE status2 VARCHAR(10);

    DECLARE hasil VARCHAR(150);

    SELECT m.nama, m.nim, m.semester, a.sks, a.ipk, a.status_pembayaran
    INTO nama1, nim1, semester1, sks1, ipk1, status1
    FROM mahasiswa m
    JOIN akademik a ON m.nim = a.nim
    WHERE m.nim = 'IK2411011'
    LIMIT 1;

    SELECT m.nama, m.nim, m.semester, a.sks, a.ipk, a.status_pembayaran
    INTO nama2, nim2, semester2, sks2, ipk2, status2
    FROM mahasiswa m
    JOIN akademik a ON m.nim = a.nim
    WHERE m.nim = 'IK2411032'
    LIMIT 1;

    SELECT nama1, nim1, semester1, sks1, ipk1, status1;
    SELECT nama2, nim2, semester2, sks2, ipk2, status2;

    IF ipk1 > ipk2 THEN
        SET hasil = CONCAT(nama1, ' lebih baik dari ', nama2);
    ELSEIF ipk2 > ipk1 THEN
        SET hasil = CONCAT(nama2, ' lebih baik dari ', nama1);
    ELSE
        IF sks1 > sks2 THEN
            SET hasil = CONCAT(nama1, ' lebih baik karena SKS lebih tinggi');
        ELSEIF sks2 > sks1 THEN
            SET hasil = CONCAT(nama2, ' lebih baik karena SKS lebih tinggi');
        ELSE
            SET hasil = 'Keduanya memiliki performa yang sama';
        END IF;
    END IF;

    SELECT hasil AS kesimpulan;
END //

DELIMITER ;

-- =========================================
-- CARA MENJALANKAN
-- =========================================
CALL bagianA_tabel();
CALL bagianB_tabel();
CALL bagianC_tabel();
CALL bagianD_tabel();

-- =========================================
-- SKENARIO UJI
-- =========================================

-- Valid
UPDATE akademik 
SET sks = 18, ipk = 3.40, status_pembayaran = 'LUNAS'
WHERE nim = 'IK2411011';
CALL bagianC_tabel();

-- Tidak valid (belum lunas)
UPDATE akademik 
SET status_pembayaran = 'BELUM'
WHERE nim = 'IK2411011';
CALL bagianC_tabel();

-- Tidak valid (SKS 0)
UPDATE akademik 
SET sks = 0, status_pembayaran = 'LUNAS'
WHERE nim = 'IK2411011';
CALL bagianC_tabel();