-- Tabel Dosen
CREATE TABLE Dosen (
    id_dosen VARCHAR(25) PRIMARY KEY,
    nama_dosen VARCHAR(255) NOT NULL,
    alamat_dosen VARCHAR(255) NOT NULL
);

-- Tabel Fakultas
CREATE TABLE Fakultas (
    id_fakultas VARCHAR(25) PRIMARY KEY,
    nama_fakultas VARCHAR(255) NOT NULL
);

-- Tabel Program Studi
CREATE TABLE Program_Studi (
    id_program_studi VARCHAR(25) PRIMARY KEY,
    nama_program_studi VARCHAR(255) NOT NULL,
    id_fakultas VARCHAR(25),
    FOREIGN KEY (id_fakultas) REFERENCES Fakultas(id_fakultas)
);

-- Tabel Mata Kuliah
CREATE TABLE Mata_Kuliah (
    id_mata_kuliah VARCHAR(25) PRIMARY KEY,
    nama_mata_kuliah VARCHAR(255) NOT NULL,
    id_program_studi VARCHAR(25),
    semester INT NOT NULL,
    tahun INT NOT NULL,
    UNIQUE (nama_mata_kuliah),
    FOREIGN KEY (id_program_studi) REFERENCES Program_Studi(id_program_studi)
);

-- Tabel Dosen_Mengajar
CREATE TABLE Dosen_Mengajar (
    id_dosen VARCHAR(25),
    id_mata_kuliah VARCHAR(255),
    PRIMARY KEY (id_dosen, id_mata_kuliah),
    FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen),
    FOREIGN KEY (id_mata_kuliah) REFERENCES Mata_Kuliah(id_mata_kuliah)
);

-- Tabel Mahasiswa
CREATE TABLE Mahasiswa (
    id_mahasiswa VARCHAR(25) PRIMARY KEY,
    nama_mahasiswa VARCHAR(255) NOT NULL,
    id_program_studi VARCHAR(25),
    FOREIGN KEY (id_program_studi) REFERENCES Program_Studi(id_program_studi)
);


-- Tabel Jadwal Kuliah
CREATE TABLE Jadwal_Kuliah (
    jadwal_kuliah VARCHAR(255) PRIMARY KEY,
    id_mata_kuliah VARCHAR(25),
    id_dosen VARCHAR(25),
    ruangan VARCHAR(50) NOT NULL,
    hari VARCHAR(15) NOT NULL,
    jam_mulai TIME NOT NULL,
    jam_selesai TIME NOT NULL,
    FOREIGN KEY (id_mata_kuliah) REFERENCES Mata_Kuliah(id_mata_kuliah),
    FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen)
);

-- Tabel Nilai
CREATE TABLE Nilai (
    id_mahasiswa VARCHAR(25),
    id_mata_kuliah VARCHAR(25),
    id_dosen VARCHAR(25),
    nilai INT,
    PRIMARY KEY (id_mahasiswa, id_mata_kuliah, id_dosen),
    FOREIGN KEY (id_mahasiswa) REFERENCES Mahasiswa(id_mahasiswa),
    FOREIGN KEY (id_mata_kuliah) REFERENCES Mata_Kuliah(id_mata_kuliah),
    FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen)
);


-- Tabel Dosen
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D1', 'Budi Santoso', 'Jl. Merpati 12');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D2', 'Eka Wahyu', 'Jl. Anggrek 3');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D3', 'Fajar I.', 'Jl. Kenanga 21');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D6', 'Maya K.', 'Jl. Durian 7');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D7', 'Anton H.', 'Jl. Mawar 22');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D8', 'Rudi B.', 'Jl. Melati 1');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D9', 'Susi Q.', 'Jl. Dahlia 43');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D10', 'Lukman M.', 'Jl. Tulip 5');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D11', 'Nina W.', 'Jl. Cempaka 33');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D12', 'Bambang P.', 'Jl. Lotus 14');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D13', 'Rita S.', 'Jl. Apel 9');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D14', 'Joni K.', 'Jl. Jeruk 11');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D15', 'Dewi P.', 'Jl. Mangga 20');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D16', 'Ahmad R.', 'Jl. Nanas 5');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D17', 'Sari M.', 'Jl. Kiwi 8');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D18', 'Bambang S.', 'Jl. Durian 2');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D19', 'Lisa Y.', 'Jl. Melon 15');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D20', 'Tono J.', 'Jl. Anggur 16');
INSERT INTO Dosen (id_dosen, nama_dosen, alamat_dosen) VALUES ('D21', 'Hendra T.', 'Jl. Pepaya 18');

-- Tabel Fakultas
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F1', 'Teknik');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F2', 'MIPA');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F3', 'Sains & Teknologi');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F4', 'Humaniora');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F5', 'Ekonomi & Bisnis');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F6', 'Humaniora');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F7', 'Hukum');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F8', 'Seni & Desain');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F9', 'Ilmu Sosial');
INSERT INTO Fakultas (id_fakultas, nama_fakultas) VALUES ('F10', 'Arsitektur');

-- Tabel Program Studi
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS1', 'Teknik Informatika', 'F1');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS2', 'Sistem Informasi', 'F1');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS3', 'Matematika', 'F2');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS6', 'Biologi', 'F3');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS7', 'Kimia', 'F3');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS8', 'Fisika', 'F3');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS9', 'Sastra Inggris', 'F4');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS10', 'Ekonomi', 'F5');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS11', 'Psikologi Klinis', 'F6');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS12', 'Hukum', 'F7');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS13', 'Seni', 'F8');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS14', 'Ilmu Komunikasi', 'F9');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS15', 'Arsitektur', 'F10');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS16', 'Psikologi Sosial', 'F6');
INSERT INTO Program_Studi (id_program_studi, nama_program_studi, id_fakultas) VALUES ('PS17', 'Ekonomi Syariah', 'F5');

-- Tabel Mata Kuliah
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK1', 'Algoritma', 'PS1', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK2', 'Struktur Data', 'PS1', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK3', 'Basis Data', 'PS2', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK4', 'Kalkulus', 'PS3', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK5', 'Algoritma SI', 'PS2', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK11', 'Genetika', 'PS6', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK12', 'Kimia Organik', 'PS7', 3, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK13', 'Biologi Sel', 'PS6', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK14', 'Termodinamika', 'PS8', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK15', 'Shakespeare', 'PS9', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK16', 'Mikroekonomi', 'PS10', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK17', 'Makroekonomi', 'PS10', 3, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK18', 'Analitik Kimia', 'PS7', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK19', 'Psikologi Klinis', 'PS11', 4, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK20', 'Hukum Internasional', 'PS12', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK21', 'Seni Rupa', 'PS13', 3, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK22', 'Fotografi', 'PS13', 3, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK23', 'Jurnalistik', 'PS14', 4, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK24', 'Public Relations', 'PS14', 4, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK25', 'Desain Arsitektur', 'PS15', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK26', 'Teknik Bangunan', 'PS15', 2, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK27', 'Psikologi Sosial', 'PS16', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK28', 'Psikologi Perkembangan', 'PS11', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK29', 'Akuntansi', 'PS17', 1, 2023);
INSERT INTO Mata_Kuliah (id_mata_kuliah, nama_mata_kuliah, id_program_studi, semester, tahun) VALUES ('MK30', 'Manajemen Keuangan', 'PS17', 1, 2023);

--Tabel Dosen Mengajar
INSERT INTO Dosen_Mengajar (id_dosen, id_mata_kuliah) VALUES
('D1', 'MK1'),
('D1', 'MK2'),
('D2', 'MK3'),
('D2', 'MK1'),
('D3', 'MK4'),
('D6', 'MK11'),
('D6', 'MK13'),
('D7', 'MK12'),
('D7', 'MK18'),
('D8', 'MK14'),
('D9', 'MK15'),
('D10', 'MK16'),
('D10', 'MK17'),
('D11', 'MK19'),
('D11', 'MK28'),
('D12', 'MK20'),
('D13', 'MK21'),
('D14', 'MK22'),
('D15', 'MK23'),
('D16', 'MK24'),
('D17', 'MK25'),
('D18', 'MK26'),
('D19', 'MK27'),
('D20', 'MK29'),
('D21', 'MK30');

INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (1, 'Aisyah', 'PS1');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (2, 'Bagus', 'PS1');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (3, 'Cinta', 'PS2');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (4, 'Dodi', 'PS3');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (5, 'Eka', 'PS2');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (6, 'Andre', 'PS6');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (7, 'Bunga', 'PS7');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (8, 'Charlie', 'PS6');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (9, 'Dina', 'PS8');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (10, 'Elisa', 'PS9');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (11, 'Farhan', 'PS10');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (12, 'Gina', 'PS10');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (13, 'Hana', 'PS7');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (14, 'Indra', 'PS11');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (15, 'Joko', 'PS12');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (16, 'Kevin', 'PS13');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (17, 'Lina', 'PS14');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (18, 'Mario', 'PS15');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (19, 'Nina', 'PS16');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (20, 'Oka', 'PS17');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (21, 'Vina','PS3');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (22, 'Wulan', 'PS1');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (23, 'Yudi', 'PS2');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (24, 'Zara', 'PS1');
INSERT INTO Mahasiswa (id_mahasiswa, nama_mahasiswa, id_program_studi) VALUES (25, 'Andi', 'PS2');

INSERT INTO Jadwal_Kuliah (jadwal_kuliah, id_mata_kuliah, id_dosen, ruangan, hari, jam_mulai, jam_selesai) VALUES
('JK1', 'MK1', 'D1', 'R101', 'Senin', '08:00', '10:00'),
('JK2', 'MK1', 'D2', 'R105', 'Jumat', '10:00', '12:00'),
('JK3', 'MK1', 'D1', 'R138', 'Kamis', '13:00', '15:00'),
('JK4', 'MK1', 'D1', 'R139', 'Jumat', '10:00', '12:00'),
('JK5', 'MK2', 'D1', 'R102', 'Selasa', '13:00', '15:00'),
('JK6', 'MK3', 'D2', 'R103', 'Rabu', '09:00', '11:00'),
('JK7', 'MK4', 'D3', 'R104', 'Kamis', '13:00', '15:00'),
('JK8', 'MK11', 'D6', 'R110', 'Senin', '08:00', '10:00'),
('JK9', 'MK12', 'D7', 'R111', 'Selasa', '11:00', '13:00'),
('JK10', 'MK13', 'D6', 'R112', 'Rabu', '09:00', '11:00'),
('JK11', 'MK14', 'D8', 'R113', 'Kamis', '13:00', '15:00'),
('JK12', 'MK15', 'D9', 'R114', 'Jumat', '10:00', '12:00'),
('JK13', 'MK16', 'D10', 'R115', 'Senin', '14:00', '16:00'),
('JK14', 'MK17', 'D10', 'R116', 'Selasa', '08:00', '10:00'),
('JK15', 'MK18', 'D7', 'R117', 'Rabu', '10:00', '12:00'),
('JK16', 'MK19', 'D11', 'R118', 'Kamis', '09:00', '11:00'),
('JK17', 'MK20', 'D12', 'R119', 'Jumat', '11:00', '13:00'),
('JK18', 'MK21', 'D13', 'R120', 'Senin', '08:00', '10:00'),
('JK19', 'MK22', 'D14', 'R121', 'Selasa', '11:00', '13:00'),
('JK20', 'MK23', 'D15', 'R122', 'Rabu', '09:00', '11:00'),
('JK21', 'MK24', 'D16', 'R123', 'Kamis', '13:00', '15:00'),
('JK22', 'MK25', 'D17', 'R124', 'Jumat', '10:00', '12:00'),
('JK23', 'MK26', 'D18', 'R125', 'Senin', '14:00', '16:00'),
('JK24', 'MK27', 'D19', 'R126', 'Selasa', '08:00', '10:00'),
('JK25', 'MK28', 'D11', 'R127', 'Rabu', '10:00', '12:00'),
('JK26', 'MK29', 'D20', 'R128', 'Kamis', '09:00', '11:00'),
('JK27', 'MK30', 'D21', 'R129', 'Jumat', '13:00', '15:00'),
('JK28', 'MK4', 'D3', 'R135', 'Senin', '08:00', '10:00'),
('JK29', 'MK4', 'D3', 'R136', 'Selasa', '11:00', '13:00'),
('JK30', 'MK4', 'D3', 'R137', 'Rabu', '09:00', '11:00');

INSERT INTO Nilai (id_mahasiswa, id_mata_kuliah, id_dosen, nilai) VALUES
('1', 'MK1', 'D1', 85),
('2', 'MK2', 'D1', 90),
('3', 'MK3', 'D2', 88),
('4', 'MK4', 'D3', 92),
('5', 'MK1', 'D2', 87),
('6', 'MK11', 'D6', 91),
('7', 'MK12', 'D7', 89),
('8', 'MK13', 'D6', 85),
('9', 'MK14', 'D8', 92),
('10', 'MK15', 'D9', 87),
('11', 'MK16', 'D10', 90),
('12', 'MK17', 'D10', 93),
('13', 'MK18', 'D7', 88),
('14', 'MK19', 'D11', 86),
('15', 'MK20', 'D12', 89),
('16', 'MK21', 'D13', 86),
('16', 'MK22', 'D14', 90),
('17', 'MK23', 'D15', 88),
('17', 'MK24', 'D16', 85),
('18', 'MK25', 'D17', 92),
('18', 'MK26', 'D18', 91),
('19', 'MK27', 'D19', 93),
('19', 'MK28', 'D11', 90),
('20', 'MK29', 'D20', 85),
('20', 'MK30', 'D21', 88),
('21', 'MK4', 'D3', 88),
('22', 'MK4', 'D3', 92),
('23', 'MK4', 'D3', 85),
('24', 'MK1', 'D1', 91),
('25', 'MK1', 'D2', 89);



-- Nomer 1 bagian 3
SELECT
    id_mahasiswa,
    nama_mahasiswa,
    id_mata_kuliah,
    id_dosen,
    nilai
FROM (
    SELECT
        Mahasiswa.id_mahasiswa,
        Mahasiswa.nama_mahasiswa,
        Nilai.id_mata_kuliah,
        Nilai.id_dosen,
        Nilai.nilai,
        RANK() OVER (PARTITION BY Nilai.id_mata_kuliah ORDER BY Nilai.nilai DESC) AS ranking
    FROM Nilai
    JOIN Mahasiswa ON Nilai.id_mahasiswa = Mahasiswa.id_mahasiswa
    WHERE Nilai.id_mata_kuliah = 'MK1'
) AS ranked_data
WHERE ranking = 1;


-- no 2 bagian 3
WITH JumlahMengajar AS (
    SELECT
        DM.id_dosen,
        COUNT(DISTINCT DM.id_mata_kuliah) AS jumlah_mata_kuliah
    FROM Dosen_Mengajar DM
    GROUP BY DM.id_dosen
)
SELECT
    D.id_dosen,
    D.nama_dosen,
    JM.jumlah_mata_kuliah
FROM Dosen D
JOIN JumlahMengajar JM ON D.id_dosen = JM.id_dosen
WHERE JM.jumlah_mata_kuliah = (
    SELECT MAX(jumlah_mata_kuliah) FROM JumlahMengajar
);

-- no3 bagian 3
SELECT
    PS.nama_program_studi,
    AVG(N.nilai) AS rata_rata_nilai
FROM Program_Studi PS
JOIN Mahasiswa M ON PS.id_program_studi = M.id_program_studi
JOIN Nilai N ON M.id_mahasiswa = N.id_mahasiswa
GROUP BY PS.nama_program_studi;

-- no4 bagian 3
SELECT
    F.nama_fakultas,
    AVG(N.nilai) AS rata_rata_nilai
FROM Fakultas F
JOIN Program_Studi PS ON F.id_fakultas = PS.id_fakultas
JOIN Mahasiswa M ON PS.id_program_studi = M.id_program_studi
JOIN Nilai N ON M.id_mahasiswa = N.id_mahasiswa
GROUP BY F.nama_fakultas;

-- no5 bagian 3
SELECT
    D.nama_dosen,
    MK.nama_mata_kuliah,
    AVG(N.nilai) AS rata_rata_nilai
FROM Dosen D
JOIN Dosen_Mengajar DM ON D.id_dosen = DM.id_dosen
JOIN Mata_Kuliah MK ON DM.id_mata_kuliah = MK.id_mata_kuliah
JOIN Nilai N ON DM.id_mata_kuliah = N.id_mata_kuliah AND DM.id_dosen = N.id_dosen
GROUP BY D.nama_dosen, MK.nama_mata_kuliah;












