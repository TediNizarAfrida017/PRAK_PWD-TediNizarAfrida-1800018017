-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Okt 2021 pada 16.37
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text,
  `tgllhr` date DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jkel`, `alamat`, `tgllhr`, `prodi`) VALUES
('MHS01', 'SITI AMINAH', 'P', 'SOLO', '1995-10-01', NULL),
('MHS02', 'RITA', 'P', 'SOLO', '1995-01-01', NULL),
('MHS03', 'AMIRUDIN', 'L', 'SEMARANG', '1998-08-11', NULL),
('MHS04', 'SITI MARYAM', 'P', 'JAKARTA', '1995-04-15', NULL),
('MHS10', 'Tedi Nizar Afrida', 'L', 'Jabar', '2000-11-15', 'Teknik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
--
-- Database: `akun`
--
CREATE DATABASE IF NOT EXISTS `akun` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akun`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelolaakun`
--

CREATE TABLE `kelolaakun` (
  `id_pelanggan` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelolaakun`
--

INSERT INTO `kelolaakun` (`id_pelanggan`, `username`, `password`) VALUES
(100, '1800018017', 'namasaya'),
(101, 'namakamu', 'namakamu'),
(102, 'namadia', 'namadia'),
(103, 'kosanku', 'kosanku'),
(104, 'kosandia', 'kosandia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelolaakun`
--
ALTER TABLE `kelolaakun`
  ADD PRIMARY KEY (`id_pelanggan`);
--
-- Database: `databaselogin`
--
CREATE DATABASE IF NOT EXISTS `databaselogin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `databaselogin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `srt`
--

CREATE TABLE `srt` (
  `id` int(10) NOT NULL,
  `jenis_templet` varchar(100) NOT NULL,
  `nama_template` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama_lengkap`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'aulcantik', '$2y$10$rM2n6945r77BlrkNaS.8mODRUX699XMtRODNRYOukjV.V9g9OxRLW', 'aulia', 'user', '2021-06-11 13:16:27', '2021-06-11 06:16:27'),
(2, 'tedinizarafrida', '$2y$10$NCo6.PkOuLqR4alQnJbTNuIORcKrwmiNABqUAjb/TvLK1bjPkgovO', 'tedinizarafrida', 'user', '2021-06-12 13:39:26', '2021-06-12 06:39:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `srt`
--
ALTER TABLE `srt`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `srt`
--
ALTER TABLE `srt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ots_surat`
--
CREATE DATABASE IF NOT EXISTS `ots_surat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ots_surat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `srt`
--

CREATE TABLE `srt` (
  `id` int(11) NOT NULL,
  `jenis_templet` varchar(255) NOT NULL,
  `nama_template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `srt`
--

INSERT INTO `srt` (`id`, `jenis_templet`, `nama_template`, `slug`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Surat Peminjaman', 'surat peminjaman ruangan', 'surat-peminjaman', 'surat peminjaman ruangan kampus IV Bifas Lantai 2', NULL, NULL),
(2, 'Surat Izin', 'Surat izin sakit', 'surat-izin', 'Surat izin sakit mahasiswa uad', NULL, NULL),
(10, 'Dokument Pernikahan', 'Surat Pernikahan', 'dokument-pernikahan', 'sskowskowskwoskow', '2021-06-05 10:45:54', '2021-06-05 10:54:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `srt`
--
ALTER TABLE `srt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `srt`
--
ALTER TABLE `srt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'akademik-tedi', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"mahasiswa\",\"table_structure[]\":\"mahasiswa\",\"table_data[]\":\"mahasiswa\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"akademik\",\"table\":\"mahasiswa\"},{\"db\":\"velg\",\"table\":\"data_barang\"},{\"db\":\"velg\",\"table\":\"data_pembelian\"},{\"db\":\"velg\",\"table\":\"data_pembeli\"},{\"db\":\"velg\",\"table\":\"data_karyawan\"},{\"db\":\"databaselogin\",\"table\":\"user\"},{\"db\":\"databaselogin\",\"table\":\"srt\"},{\"db\":\"postestujuh\",\"table\":\"surat\"},{\"db\":\"tujuh\",\"table\":\"srt\"},{\"db\":\"akun\",\"table\":\"kelolaakun\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-10-15 14:37:00', '{\"lang\":\"id\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `postestujuh`
--
CREATE DATABASE IF NOT EXISTS `postestujuh` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `postestujuh`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `Id_surat` varchar(100) NOT NULL,
  `jenis_templatesurat` varchar(100) NOT NULL,
  `nama_tempaltesurat` varchar(100) NOT NULL,
  `slug_surat` varchar(100) NOT NULL,
  `keterangan_surat` varchar(500) NOT NULL,
  `create_surat` datetime DEFAULT NULL,
  `update_surat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`Id_surat`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `velg`
--
CREATE DATABASE IF NOT EXISTS `velg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `velg`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `diameter_velg` varchar(20) NOT NULL,
  `merk_velg` varchar(20) NOT NULL,
  `warna_velg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `nama_barang`, `harga_barang`, `keterangan`, `diameter_velg`, `merk_velg`, `warna_velg`) VALUES
('1010', 'Velg Baja', '100000', 'komplit', '16', 'OZ Racing', 'Silver'),
('1111', 'tarisan', '800000', 'mantap', '14', 'BBS', 'Pilih'),
('2222', 'tarsono', '800000', 'mantap', '13', 'BBS', 'Emas'),
('B-001', 'Velg Baja', '1000000', 'racing', '13', 'BBS', 'Emas'),
('B-002', 'Velg Alumunium', '2000000', 'jari-jari', '14', 'HRE', 'Silver'),
('B-003', 'Velg Magnesium', '1500000', 'Racing', '15', 'OZ Racing', 'Merah'),
('B-004', 'Velg Biasa', '2000000', 'Racing', '16', 'Volk Rays', 'Biru'),
('B-005', 'Velg Carbon', '2500000', 'jari-jari', '17', 'Borbet', 'Orange'),
('B-006', 'Velg Casting', '3000000', 'Racing', '19', 'Vossen', 'Silver'),
('B-007', 'Velg Flow Forwing', '3500000', 'jari-jari', '17', 'OZ Racing', 'Emas'),
('B-008', 'Velg Forging', '4000000', 'Biasa', '18', 'Auto Speed', 'Merah'),
('B-009', 'Velg One Piece', '5000000', 'Racing', '17', 'Volk Rays', 'Orange'),
('B-010', 'Velg Carbon', '5500000', 'jari-jari', '17', 'HRE', 'Orange'),
('B-011', 'Velg Flow Forwing', '1000000', 'jari-jari', '15', 'Zen', 'Silver'),
('B-012', 'Velg Flow Forwing', '1000000', 'jari-jari', '16', 'Zen', 'Silver'),
('B-013', 'Velg Flow Forwing', '1000000', 'jari-jari', '16', 'Honda', 'Emas'),
('B-015', 'Velg Flow Forwing', '5000000', 'racing', '14', 'OZ Racing', 'Emas'),
('B-020', 'Velg Flow Forwing', '5000000', 'jari-jari', '17', 'Honda', 'Emas'),
('B-100', 'Velg Flow Forwing', '100000000000', 'Racing', '21', 'Woodbell', 'Orange');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id_karyawan` varchar(10) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`id_karyawan`, `nama_karyawan`, `jenis_kelamin`, `no_hp`, `alamat`, `jabatan`) VALUES
('K-001', 'jamal', 'la', '082331564778', 'Riau', 'kasir'),
('K-002', 'jamal', 'la', '082334445667', 'Kalimantan', 'supir'),
('K-003', 'kabur', 'la', '087232663987', 'Jogja', 'supir'),
('K-004', 'jamal', 'la', '081223567881', 'Jambi', 'costumer service'),
('K-005', 'jamal', 'la', '086554887954', 'Sleman', 'kasir'),
('K-006', 'jamal', 'pe', '082555666777', 'Kalimantan', 'costumer service'),
('K-007', 'jamal', 'pe', '0819987567723', 'Sumatera', 'kasir'),
('K-008', 'jamal', 'pe', '083667987654', 'Majalengka', 'costumer service'),
('K-009', 'jamal', 'pe', '087727774778', 'Magelang', 'kasir'),
('K-010', 'jamal', 'pe', '087889965334', 'Cirebon', 'supir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembeli`
--

CREATE TABLE `data_pembeli` (
  `id_pembeli` varchar(10) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `id_karyawan` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pembeli`
--

INSERT INTO `data_pembeli` (`id_pembeli`, `nama_pembeli`, `alamat`, `no_hp`, `id_karyawan`, `username`, `password`) VALUES
('112', 'anang2', 'bongas', '76565876685', 'K-001', 'user1', '24c9e15e52afc47c225b757e7bee1f9d'),
('K012', 'aing', 'Bantul', '23535', 'K-008', 'aing', 'aing'),
('K013', 'ono', 'gk', '32211', 'K-001', 'user', 'user123'),
('P-001', 'Tedi', 'Jabar', '082315059772', 'K-001', '', ''),
('P-002', 'Bayu', 'GK', '081111777888', 'K-002', '', ''),
('P-003', 'Aldi', 'Sulawesi', '089776665443', 'K-003', '', ''),
('P-004', 'Muhammad Reza', 'Kalimantan', '082778995446', 'K-004', '', ''),
('P-005', 'Lugas', 'Karawang', '082665887912', 'K-005', '', ''),
('P-006', 'Dwiki', 'Sulawesi Tengah', '081567545688', 'K-006', '', ''),
('P-007', 'Kevin', 'Sumatera', '087552887994', 'K-007', '', ''),
('P-008', 'Burhan', 'Jogja', '083345678987', 'K-008', '', ''),
('P-009', 'Nanang', 'Bantul', '083656476887', 'K-009', '', ''),
('P-010', 'Tono', 'Wonosari', '083879665776', 'K-010', '', ''),
('Q1122', 'anang1', 'b', '3', 'K-001', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembelian`
--

CREATE TABLE `data_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_barang` varchar(11) NOT NULL,
  `jumlah_pembelian` int(50) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `metode_bayar` varchar(50) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pembelian`
--

INSERT INTO `data_pembelian` (`id_pembelian`, `id_barang`, `jumlah_pembelian`, `total_bayar`, `metode_bayar`, `id_pembeli`) VALUES
(19, 'B-002', 2, 1500000, 'Tunai', 'P-002'),
(22, 'B-003', 3, 1500000, 'Tunai', 'P-003'),
(23, 'B-004', 4, 2500000, 'Non-Tunai', 'P-004'),
(24, 'B-005', 5, 2500000, 'Non-Tunai', 'P-005'),
(26, 'B-007', 7, 7000000, 'Non-Tunai', 'P-007'),
(27, 'B-008', 8, 17000000, 'Non-Tunai', 'P-008'),
(28, 'B-009', 9, 25000000, 'Non-Tunai', 'P-009'),
(29, 'B-010', 10, 100000000, 'Non-Tunai', 'P-010'),
(30, 'B-010', 4, 100000000, 'Tunai', 'P-001'),
(31, 'B-001', 10, 1500000, 'Tunai', 'P-004'),
(33, 'B-003', 2, 6000000, 'Non-Tunai', 'P-002'),
(34, 'B-003', 2, 6000000, 'Non-Tunai', 'P-002'),
(35, 'B-003', 2, 6000000, 'Non-Tunai', 'P-002'),
(36, 'B-003', 2, 6000000, 'Non-Tunai', 'P-002'),
(37, 'B-003', 2, 3000000, 'Tunai', 'P-002'),
(51, 'B-015', 5, 25000000, 'Tunai', 'P-004'),
(52, 'B-020', 5, 25000000, 'Tunai', 'P-003'),
(53, 'B-001', 5, 5000000, 'Tunai', '112'),
(54, 'B-001', 5, 5000000, 'Tunai', '112'),
(55, 'B-001', 1, 1000000, 'Tunai', '112'),
(56, 'B-001', 2, 2000000, 'Tunai', '112'),
(60, '2222', 10, 0, 'Tunai', '112'),
(61, '2222', 2, 0, 'Tunai', '112'),
(62, '1010', 8, 0, 'Non-Tunai', '112');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indeks untuk tabel `data_pembelian`
--
ALTER TABLE `data_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pembelian`
--
ALTER TABLE `data_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD CONSTRAINT `data_pembeli_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `data_karyawan` (`id_karyawan`);

--
-- Ketidakleluasaan untuk tabel `data_pembelian`
--
ALTER TABLE `data_pembelian`
  ADD CONSTRAINT `data_pembelian_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `data_barang` (`id_barang`),
  ADD CONSTRAINT `data_pembelian_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `data_pembeli` (`id_pembeli`);
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-07-29 07:27:23', '2021-07-29 07:27:23', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress/wordpress', 'yes'),
(3, 'blogname', 'Portofoliotna', 'yes'),
(4, 'blogdescription', 'Moto situs Anda bisa diletakkan di sini', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'teddinizzar18@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"portfolio-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?rara_portfolio_categories=$matches[1]&feed=$matches[2]\";s:52:\"portfolio-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?rara_portfolio_categories=$matches[1]&feed=$matches[2]\";s:33:\"portfolio-category/(.+?)/embed/?$\";s:58:\"index.php?rara_portfolio_categories=$matches[1]&embed=true\";s:45:\"portfolio-category/(.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?rara_portfolio_categories=$matches[1]&paged=$matches[2]\";s:27:\"portfolio-category/(.+?)/?$\";s:47:\"index.php?rara_portfolio_categories=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:47:\"index.php?rara-portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:41:\"index.php?rara-portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?rara-portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?rara-portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?rara-portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=564&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:35:\"advanced-import/advanced-import.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";i:4;s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";i:5;s:43:\"raratheme-companion/raratheme-companion.php\";i:6;s:24:\"wp-whatsapp/whatsapp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'perfect-portfolio', 'yes'),
(41, 'stylesheet', 'perfect-portfolio', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:5:{i:1;a:4:{s:5:\"title\";s:8:\"About Me\";s:4:\"text\";s:108:\"I’m Francisco AdamsOver the last ten odd years I\'ve had the pleasure of working with some great companies,\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:2;a:4:{s:5:\"title\";s:17:\"What I Love Doing\";s:4:\"text\";s:89:\"Its hard to stay ahead of the game. I take every tasks seriously. Things I do flawlessly.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:8:\"About Us\";s:4:\"text\";s:125:\"I\'m Francisco Adams from Brooklyn, NY. Over the last ten odd years toe had the pleasure of working with some great companies.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Contact\";s:4:\"text\";s:48:\"example@gmail.com\r\n+321 555 0120, +6521 444 5210\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '565', 'yes'),
(82, 'page_on_front', '564', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1643095643', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'id_ID', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:157:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Pos-pos Terbaru</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Komentar Terbaru</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:143:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arsip</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategori</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:15:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"search-1\";i:6;s:14:\"recent-posts-1\";i:7;s:17:\"recent-comments-1\";i:8;s:10:\"archives-1\";i:9;s:12:\"categories-1\";i:10;s:6:\"meta-1\";i:11;s:6:\"text-1\";i:12;s:18:\"rtc_social_links-1\";i:13;s:32:\"raratheme_companion_cta_widget-2\";i:14;s:6:\"text-3\";}s:5:\"about\";a:1:{i:0;s:23:\"rrtc_icon_text_widget-1\";}s:3:\"cta\";a:1:{i:0;s:32:\"raratheme_companion_cta_widget-1\";}s:8:\"services\";a:7:{i:0;s:6:\"text-2\";i:1;s:23:\"rrtc_icon_text_widget-2\";i:2;s:23:\"rrtc_icon_text_widget-3\";i:3;s:23:\"rrtc_icon_text_widget-4\";i:4;s:23:\"rrtc_icon_text_widget-5\";i:5;s:23:\"rrtc_icon_text_widget-6\";i:6;s:23:\"rrtc_icon_text_widget-7\";}s:10:\"cta-footer\";a:1:{i:0;s:23:\"raratheme_recent_post-1\";}s:10:\"footer-one\";a:1:{i:0;s:6:\"text-4\";}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:5:{i:1633764443;a:6:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633764487;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633793837;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634282843;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:2:{i:1;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:2:{i:1;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:2:{i:1;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627544722;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"Gagal memverifikasi SSL.\";}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(158, 'current_theme', 'Perfect Portfolio', 'yes'),
(159, 'theme_mods_perfect-portfolio', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:7;}s:18:\"custom_css_post_id\";i:548;s:12:\"social_links\";a:5:{i:0;a:2:{s:4:\"font\";s:14:\"fa fa-facebook\";s:4:\"link\";s:36:\"https://www.facebook.com/rarathemehq\";}i:1;a:2:{s:4:\"font\";s:20:\"fa fa-youtube-square\";s:4:\"link\";s:24:\"https://www.youtube.com/\";}i:2;a:2:{s:4:\"font\";s:16:\"fab fa-pinterest\";s:4:\"link\";s:35:\"https://www.pinterest.com/raratheme\";}i:3;a:2:{s:4:\"font\";s:15:\"fa fa-instagram\";s:4:\"link\";s:35:\"https://www.instagram.com/raratheme\";}i:4;a:2:{s:4:\"font\";s:14:\"fa fa-linkedin\";s:4:\"link\";s:25:\"https://www.linkedin.com/\";}}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627659052;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:14:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"search-1\";i:6;s:14:\"recent-posts-1\";i:7;s:17:\"recent-comments-1\";i:8;s:10:\"archives-1\";i:9;s:12:\"categories-1\";i:10;s:6:\"meta-1\";i:11;s:6:\"text-1\";i:12;s:18:\"rtc_social_links-1\";i:13;s:32:\"raratheme_companion_cta_widget-2\";}s:5:\"about\";a:1:{i:0;s:23:\"rrtc_icon_text_widget-1\";}s:3:\"cta\";a:1:{i:0;s:32:\"raratheme_companion_cta_widget-1\";}s:8:\"services\";a:7:{i:0;s:6:\"text-2\";i:1;s:23:\"rrtc_icon_text_widget-2\";i:2;s:23:\"rrtc_icon_text_widget-3\";i:3;s:23:\"rrtc_icon_text_widget-4\";i:4;s:23:\"rrtc_icon_text_widget-5\";i:5;s:23:\"rrtc_icon_text_widget-6\";i:6;s:23:\"rrtc_icon_text_widget-7\";}s:10:\"cta-footer\";a:1:{i:0;s:6:\"text-3\";}s:10:\"footer-one\";a:1:{i:0;s:23:\"raratheme_recent_post-1\";}s:10:\"footer-two\";a:1:{i:0;s:6:\"text-4\";}s:12:\"footer-three\";a:0:{}}}s:11:\"header_text\";i:1;s:11:\"custom_logo\";i:116;s:16:\"blog_description\";s:175:\"I like to write about people, the places they live and the things with which they choose to surround themselves. Here are some of my favorite pieces that made it into Article.\";s:20:\"gallery_view_all_url\";s:55:\"http://rarathemesdemo.com/perfect-portfolio/portfolios/\";s:16:\"ed_shopping_cart\";b:1;s:15:\"ed_social_links\";b:1;s:10:\"ed_popular\";b:1;s:10:\"ed_related\";b:1;s:16:\"ed_header_search\";b:1;s:16:\"menu_description\";s:316:\"A portfolio is a grouping of financial assets such as stocks, bonds, commodities, currencies and cash equivalents, as well as their fund counterparts, including mutual, exchange-traded and closed funds. A portfolio can also consist of non-publicly tradable securities, like real estate, art, and private investments.\";}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(162, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1627544764;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(163, 'rtc_queue_flush_rewrite_rules', 'no', 'yes'),
(164, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'widget_raratheme_companion_cta_widget', 'a:3:{i:1;a:11:{s:5:\"title\";s:75:\"Start your journey right now! Build unique websites with our creative tool.\";s:7:\"content\";s:53:\"Grab your copy now, exclusively at RaraThemes.com\r\n\r\n\";s:13:\"button_number\";s:1:\"1\";s:16:\"button_alignment\";s:8:\"centered\";s:11:\"button1_url\";s:56:\"https://rarathemesdemo.com/perfect-portfolio/full-width/\";s:11:\"button2_url\";s:0:\"\";s:12:\"button1_text\";s:6:\"Button\";s:12:\"button2_text\";s:0:\"\";s:15:\"widget-bg-color\";s:7:\"#05d584\";s:15:\"widget-bg-image\";s:0:\"\";s:6:\"target\";s:0:\"\";}i:2;a:11:{s:5:\"title\";s:75:\"Start your journey right now! Build unique websites with our creative tool.\";s:7:\"content\";s:47:\"Grab your copy now, exclusively at ThemeForest.\";s:13:\"button_number\";s:1:\"1\";s:16:\"button_alignment\";s:8:\"centered\";s:11:\"button1_url\";s:53:\"https://rarathemesdemo.com/perfect-portfolio/contact/\";s:11:\"button2_url\";s:0:\"\";s:12:\"button1_text\";s:7:\"Buy Now\";s:12:\"button2_text\";s:0:\"\";s:15:\"widget-bg-color\";s:7:\"#05d584\";s:15:\"widget-bg-image\";s:0:\"\";s:6:\"target\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'widget_rtc_contact_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(167, 'widget_raratheme_featured_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(168, 'widget_rrtc_icon_text_widget', 'a:8:{i:1;a:7:{s:5:\"title\";s:23:\"I’m Tedi Nizar Afrida\";s:7:\"content\";s:181:\"Seorang Web developer yang berfokus dalam membuat tampilan website yang modern dan responsive. Selain itu saya seorang desainer logo, mocup, Ui game 2d, developer game 2d dan 3d. \r\n\";s:5:\"image\";s:3:\"567\";s:4:\"icon\";s:0:\"\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";s:6:\"target\";s:0:\"\";}i:2;a:6:{s:5:\"title\";s:26:\"Web Branding and Marketing\";s:7:\"content\";s:70:\"Building and creating brands that are digital and marketing ready.\r\n\r\n\";s:5:\"image\";s:0:\"\";s:4:\"icon\";s:14:\"fa fa-bullhorn\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}i:3;a:6:{s:5:\"title\";s:20:\"Web / User Interface\";s:7:\"content\";s:103:\"Responsive, interactive and clean websites and apps. Building and creating brands that are digital.\r\n\r\n\";s:5:\"image\";s:0:\"\";s:4:\"icon\";s:13:\"fa fa-desktop\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}i:4;a:6:{s:5:\"title\";s:20:\"Creative Photography\";s:7:\"content\";s:80:\"Take breathtaking stunning photographs and help clients achieve their goals.\r\n\r\n\";s:5:\"image\";s:0:\"\";s:4:\"icon\";s:12:\"fa fa-camera\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}i:5;a:6:{s:5:\"title\";s:14:\"Product Design\";s:7:\"content\";s:70:\"Building and creating brands that are digital and marketing ready.\r\n\r\n\";s:5:\"image\";s:0:\"\";s:4:\"icon\";s:18:\"fa fa-object-group\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}i:6;a:6:{s:5:\"title\";s:11:\"Web Hosting\";s:7:\"content\";s:56:\"Responsive, interactive and clean websites and apps.\r\n\r\n\";s:5:\"image\";s:0:\"\";s:4:\"icon\";s:10:\"fa fa-send\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}i:7;a:6:{s:5:\"title\";s:15:\"Awesome Support\";s:7:\"content\";s:80:\"Take breathtaking stunning photographs and help clients achieve their goals.\r\n\r\n\";s:5:\"image\";s:0:\"\";s:4:\"icon\";s:16:\"fa fa-headphones\";s:4:\"link\";s:0:\"\";s:9:\"more_text\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'widget_raratheme_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(170, 'widget_raratheme_companion_stat_counter_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(171, 'widget_raratheme_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_raratheme_recent_post', 'a:2:{i:1;a:4:{s:5:\"title\";s:12:\"Recent Posts\";s:8:\"num_post\";i:2;s:14:\"show_thumbnail\";i:1;s:13:\"show_postdate\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_rtc_social_links', 'a:2:{i:1;a:5:{s:5:\"title\";s:20:\"Subscribe and Follow\";s:6:\"target\";N;s:4:\"size\";N;s:6:\"social\";a:5:{i:1;s:32:\"https://facebook.com/rarathemeHQ\";i:2;s:31:\"https://twitter.com/rarathemeHQ\";i:3;s:31:\"https://pinterest.com/raratheme\";i:4;s:31:\"https://instagram.com/raratheme\";i:5;s:20:\"https://linkedin.com\";}s:14:\"social_profile\";a:5:{i:1;s:8:\"facebook\";i:2;s:7:\"twitter\";i:3;s:9:\"pinterest\";i:4;s:9:\"instagram\";i:5;s:8:\"linkedin\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_rrtc_testimonial_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_rrtc_description_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_raratheme_client_logo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_raratheme_companion_faqs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'widget_raratheme_featured_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'widget_rtc_pro_twitter_feeds_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'widget_rara_posts_category_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'widget_raratheme_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'widget_raratheme_author_bio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'widget_raratheme_custom_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(184, 'widget_raratheme_facebook_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(185, 'widget_raratheme_snapcode_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'widget_raratheme_pinterest_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(187, 'widget_raratheme_image_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'category_children', 'a:0:{}', 'yes'),
(191, 'rara_portfolio_categories_children', 'a:0:{}', 'yes'),
(192, 'widget_recent-posts', 'a:2:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_recent-comments', 'a:2:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'woocommerce_demo_store', 'no', 'yes'),
(195, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'yes'),
(196, 'woocommerce_shop_page_display', '', 'yes'),
(197, 'woocommerce_category_archive_display', '', 'yes'),
(198, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(199, 'woocommerce_catalog_columns', '4', 'yes'),
(200, 'woocommerce_catalog_rows', '4', 'yes'),
(201, 'woocommerce_single_image_width', '600', 'yes'),
(202, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(203, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(204, 'woocommerce_thumbnail_cropping_custom_width', '4', 'yes'),
(205, 'woocommerce_thumbnail_cropping_custom_height', '3', 'yes'),
(206, 'woocommerce_checkout_company_field', 'optional', 'yes'),
(207, 'woocommerce_checkout_address_2_field', 'optional', 'yes'),
(208, 'woocommerce_checkout_phone_field', 'required', 'yes'),
(209, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(210, 'woocommerce_checkout_terms_and_conditions_checkbox_text', 'I have read and agree to the website [terms]', 'yes'),
(211, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(212, 'woocommerce_terms_page_id', '', 'yes'),
(213, 'nav_menus_created_posts', 'a:0:{}', 'yes'),
(214, 'site_logo', '116', 'yes'),
(229, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(241, 'theme_mods_portfolio-web', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1627659124;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:23:\"rrtc_icon_text_widget-1\";i:1;s:32:\"raratheme_companion_cta_widget-1\";i:2;s:6:\"text-2\";i:3;s:23:\"rrtc_icon_text_widget-2\";i:4;s:23:\"rrtc_icon_text_widget-3\";i:5;s:23:\"rrtc_icon_text_widget-4\";i:6;s:23:\"rrtc_icon_text_widget-5\";i:7;s:23:\"rrtc_icon_text_widget-6\";i:8;s:23:\"rrtc_icon_text_widget-7\";}s:21:\"portfolio-web-sidebar\";a:14:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"search-1\";i:6;s:14:\"recent-posts-1\";i:7;s:17:\"recent-comments-1\";i:8;s:10:\"archives-1\";i:9;s:12:\"categories-1\";i:10;s:6:\"meta-1\";i:11;s:6:\"text-1\";i:12;s:18:\"rtc_social_links-1\";i:13;s:32:\"raratheme_companion_cta_widget-2\";}s:18:\"portfolio-web-home\";a:0:{}s:26:\"portfolio-web-sidebar-left\";a:0:{}s:14:\"footer-col-one\";a:1:{i:0;s:6:\"text-3\";}s:14:\"footer-col-two\";a:1:{i:0;s:23:\"raratheme_recent_post-1\";}s:16:\"footer-col-three\";a:1:{i:0;s:6:\"text-4\";}s:15:\"footer-col-four\";a:0:{}s:17:\"popup-widget-area\";a:0:{}}}}', 'yes'),
(243, 'widget_portfolio_web_about', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'widget_portfolio_web_posts_col', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_portfolio_web_contact', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_portfolio_web_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_portfolio_web_advanced_image_logo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_portfolio_web_feature', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_portfolio_web_service', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_portfolio_web_skills', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_portfolio_web_testimonial', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_portfolio_web_timeline', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'portfolio_web_admin_notice_welcome', '1', 'yes'),
(270, 'njt_wa_review', '1627745759', 'yes'),
(271, 'njt_wa_first_time_active', '1', 'yes'),
(272, 'njt_popup_filebird_cross', '1627745759', 'yes'),
(273, 'njt_notification_filebird_cross', '1627745759', 'yes'),
(274, 'njt_wa_version', '3.1.1', 'yes'),
(275, 'nta_wa_restored', '1', 'yes'),
(277, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'nta_wa_widget_styles', 'a:17:{s:5:\"title\";s:20:\"Start a Conversation\";s:12:\"responseText\";s:44:\"The team typically replies in a few minutes.\";s:11:\"description\";s:70:\"Hi! Click one of our member below to chat on <strong>WhatsApp</strong>\";s:15:\"backgroundColor\";s:7:\"#2db742\";s:9:\"textColor\";s:4:\"#fff\";s:12:\"scrollHeight\";s:3:\"500\";s:12:\"isShowScroll\";s:3:\"OFF\";s:18:\"isShowResponseText\";s:3:\"OFF\";s:8:\"btnLabel\";s:40:\"Need Help? <strong>Chat with us</strong>\";s:13:\"btnLabelWidth\";s:3:\"156\";s:11:\"btnPosition\";s:5:\"right\";s:15:\"btnLeftDistance\";s:2:\"30\";s:16:\"btnRightDistance\";s:2:\"30\";s:17:\"btnBottomDistance\";s:2:\"30\";s:14:\"isShowBtnLabel\";s:2:\"ON\";s:10:\"isShowGDPR\";s:3:\"OFF\";s:11:\"gdprContent\";s:115:\"Please accept our <a href=\"https://ninjateam.org/privacy-policy/\">privacy policy</a> first to start a conversation.\";}', 'yes'),
(288, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633761115;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(289, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633761118;s:7:\"checked\";a:5:{s:17:\"perfect-portfolio\";s:5:\"1.1.5\";s:13:\"portfolio-web\";s:5:\"3.0.2\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:17:\"perfect-portfolio\";a:6:{s:5:\"theme\";s:17:\"perfect-portfolio\";s:11:\"new_version\";s:5:\"1.1.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/perfect-portfolio/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/perfect-portfolio.1.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:13:\"portfolio-web\";a:6:{s:5:\"theme\";s:13:\"portfolio-web\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/portfolio-web/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/portfolio-web.3.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.7.2\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(291, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"teddinizzar18@gmail.com\";s:7:\"version\";s:5:\"5.8.1\";s:9:\"timestamp\";i:1632366608;}', 'no'),
(310, '_site_transient_timeout_theme_roots', '1633762917', 'no'),
(311, '_site_transient_theme_roots', 'a:5:{s:17:\"perfect-portfolio\";s:7:\"/themes\";s:13:\"portfolio-web\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(312, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633761120;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}s:24:\"wp-whatsapp/whatsapp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/wp-whatsapp\";s:4:\"slug\";s:11:\"wp-whatsapp\";s:6:\"plugin\";s:24:\"wp-whatsapp/whatsapp.php\";s:11:\"new_version\";s:5:\"3.1.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-whatsapp/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/wp-whatsapp.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-whatsapp/assets/icon-256x256.png?rev=2470082\";s:2:\"1x\";s:64:\"https://ps.w.org/wp-whatsapp/assets/icon-256x256.png?rev=2470082\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-whatsapp/assets/banner-1544x500.png?rev=2383895\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-whatsapp/assets/banner-772x250.png?rev=2383896\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:35:\"advanced-import/advanced-import.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/advanced-import\";s:4:\"slug\";s:15:\"advanced-import\";s:6:\"plugin\";s:35:\"advanced-import/advanced-import.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/advanced-import/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/advanced-import.1.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/advanced-import/assets/icon-256x256.png?rev=2163691\";s:2:\"1x\";s:68:\"https://ps.w.org/advanced-import/assets/icon-128x128.png?rev=2163691\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/advanced-import/assets/banner-1544x500.png?rev=2223454\";s:2:\"1x\";s:70:\"https://ps.w.org/advanced-import/assets/banner-772x250.png?rev=2223454\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/rara-one-click-demo-import\";s:4:\"slug\";s:26:\"rara-one-click-demo-import\";s:6:\"plugin\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/rara-one-click-demo-import/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/rara-one-click-demo-import.1.2.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/rara-one-click-demo-import/assets/icon-128x128.png?rev=1939066\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/rara-one-click-demo-import/assets/banner-772x250.png?rev=1939071\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}s:43:\"raratheme-companion/raratheme-companion.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/raratheme-companion\";s:4:\"slug\";s:19:\"raratheme-companion\";s:6:\"plugin\";s:43:\"raratheme-companion/raratheme-companion.php\";s:11:\"new_version\";s:5:\"1.3.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/raratheme-companion/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/raratheme-companion.1.3.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-256x256.png?rev=1858916\";s:2:\"1x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-128x128.png?rev=1858915\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/raratheme-companion/assets/banner-1544x500.png?rev=1858912\";s:2:\"1x\";s:74:\"https://ps.w.org/raratheme-companion/assets/banner-772x250.png?rev=1858911\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}}s:7:\"checked\";a:7:{s:35:\"advanced-import/advanced-import.php\";s:5:\"1.3.3\";s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:5:\"1.2.9\";s:43:\"raratheme-companion/raratheme-companion.php\";s:5:\"1.3.8\";s:24:\"wp-whatsapp/whatsapp.php\";s:5:\"3.1.1\";}}', 'no'),
(313, '_site_transient_timeout_php_check_413a4f2c91fec3a4996c65b3565c8cb8', '1634365923', 'no'),
(314, '_site_transient_php_check_413a4f2c91fec3a4996c65b3565c8cb8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <teddinizzar18@gmail.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <teddinizzar18@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'id_ID'),
(9, 6, '_wp_attached_file', '2021/07/log_file_2021-07-29__07-49-32.txt'),
(14, 9, '_wp_attached_file', '2021/07/log_file_2021-07-29__07-50-28.txt'),
(15, 198, '_wp_attached_file', '2013/06/T_1_front.jpg'),
(16, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_1_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_1_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_1_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_1_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_1_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_1_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_1_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_1_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 199, '_wp_attached_file', '2013/06/T_1_back.jpg'),
(18, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_1_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_1_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_1_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_1_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_1_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_1_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_1_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_1_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 200, '_wp_attached_file', '2013/06/T_2_front.jpg'),
(20, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_2_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_2_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_2_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_2_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_2_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_2_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_2_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_2_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 201, '_wp_attached_file', '2013/06/T_2_back.jpg'),
(22, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_2_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_2_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_2_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_2_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_2_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_2_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_2_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_2_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 202, '_wp_attached_file', '2013/06/T_4_front.jpg'),
(24, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_4_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_4_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_4_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_4_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_4_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_4_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_4_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_4_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 203, '_wp_attached_file', '2013/06/T_3_back.jpg'),
(26, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_3_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_3_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_3_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_3_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_3_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_3_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_3_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_3_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 204, '_wp_attached_file', '2013/06/T_3_front.jpg'),
(28, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_3_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_3_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_3_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_3_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_3_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_3_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_3_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_3_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 205, '_wp_attached_file', '2013/06/T_4_back.jpg'),
(30, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_4_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_4_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_4_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_4_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_4_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_4_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_4_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_4_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 206, '_wp_attached_file', '2013/06/T_4_front1.jpg'),
(32, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/T_4_front1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"T_4_front1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"T_4_front1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"T_4_front1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"T_4_front1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"T_4_front1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"T_4_front1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"T_4_front1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"T_4_front1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"T_4_front1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 207, '_wp_attached_file', '2013/06/T_5_front.jpg'),
(34, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_5_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_5_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_5_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_5_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_5_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_5_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_5_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_5_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 208, '_wp_attached_file', '2013/06/T_5_back.jpg'),
(36, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_5_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_5_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_5_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_5_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_5_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_5_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_5_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_5_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 209, '_wp_attached_file', '2013/06/T_6_front.jpg'),
(38, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_6_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_6_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_6_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_6_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_6_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_6_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_6_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_6_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 210, '_wp_attached_file', '2013/06/T_6_back.jpg'),
(40, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_6_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_6_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_6_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_6_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_6_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_6_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_6_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_6_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 211, '_wp_attached_file', '2013/06/T_7_front.jpg'),
(42, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/T_7_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"T_7_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"T_7_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"T_7_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"T_7_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"T_7_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"T_7_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"T_7_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 212, '_wp_attached_file', '2013/06/T_7_back.jpg'),
(44, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2013/06/T_7_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:20:\"T_7_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:18:\"T_7_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:20:\"T_7_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:20:\"T_7_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:21:\"T_7_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:20:\"T_7_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:20:\"T_7_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 213, '_wp_attached_file', '2013/06/hoodie_7_front.jpg'),
(46, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_7_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_7_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_7_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 214, '_wp_attached_file', '2013/06/hoodie_7_back.jpg'),
(48, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_7_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_7_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_7_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 215, '_wp_attached_file', '2013/06/hoodie_1_back.jpg'),
(50, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_1_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_1_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_1_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 216, '_wp_attached_file', '2013/06/hoodie_1_front.jpg'),
(52, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_1_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_1_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_1_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 277, '_wp_attached_file', '2013/06/hoodie_1_front-1.jpg'),
(54, 277, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:28:\"2013/06/hoodie_1_front-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:29:\"hoodie_1_front-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:28:\"hoodie_1_front-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 217, '_wp_attached_file', '2013/06/hoodie_2_front.jpg'),
(56, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_2_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_2_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_2_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 218, '_wp_attached_file', '2013/06/hoodie_2_back.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(58, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_2_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_2_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_2_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 219, '_wp_attached_file', '2013/06/hoodie_3_front.jpg'),
(60, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_3_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_3_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_3_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 220, '_wp_attached_file', '2013/06/hoodie_3_back.jpg'),
(62, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_3_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_3_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_3_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 221, '_wp_attached_file', '2013/06/hoodie_4_front.jpg'),
(64, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_4_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_4_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_4_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 222, '_wp_attached_file', '2013/06/hoodie_4_back.jpg'),
(66, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_4_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_4_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_4_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 223, '_wp_attached_file', '2013/06/hoodie_5_front.jpg'),
(68, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_5_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_5_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_5_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 224, '_wp_attached_file', '2013/06/hoodie_5_back.jpg'),
(70, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_5_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_5_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_5_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 225, '_wp_attached_file', '2013/06/hoodie_6_front.jpg'),
(72, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2013/06/hoodie_6_front.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:24:\"hoodie_6_front-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:27:\"hoodie_6_front-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 226, '_wp_attached_file', '2013/06/hoodie_6_back.jpg'),
(74, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/hoodie_6_back.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"hoodie_6_back-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"hoodie_6_back-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 227, '_wp_attached_file', '2013/06/poster_1_up.jpg'),
(76, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2013/06/poster_1_up.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_1_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_1_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:23:\"poster_1_up-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:21:\"poster_1_up-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:23:\"poster_1_up-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:23:\"poster_1_up-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:24:\"poster_1_up-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:23:\"poster_1_up-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:23:\"poster_1_up-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 228, '_wp_attached_file', '2013/06/Poster_1_flat.jpg'),
(78, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/Poster_1_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"Poster_1_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"Poster_1_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 229, '_wp_attached_file', '2013/06/poster_2_up.jpg'),
(80, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2013/06/poster_2_up.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_2_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_2_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:23:\"poster_2_up-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:21:\"poster_2_up-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:23:\"poster_2_up-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:23:\"poster_2_up-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:24:\"poster_2_up-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:23:\"poster_2_up-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:23:\"poster_2_up-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 230, '_wp_attached_file', '2013/06/Poster_2_flat.jpg'),
(82, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/Poster_2_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"Poster_2_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"Poster_2_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 231, '_wp_attached_file', '2013/06/poster_3_up.jpg'),
(84, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2013/06/poster_3_up.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_3_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_3_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:23:\"poster_3_up-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:21:\"poster_3_up-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:23:\"poster_3_up-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:23:\"poster_3_up-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:24:\"poster_3_up-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:23:\"poster_3_up-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:23:\"poster_3_up-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 232, '_wp_attached_file', '2013/06/Poster_3_flat.jpg'),
(86, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/Poster_3_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"Poster_3_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"Poster_3_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 278, '_wp_attached_file', '2013/06/hoodie_4_front-1.jpg'),
(88, 278, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:28:\"2013/06/hoodie_4_front-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:29:\"hoodie_4_front-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:28:\"hoodie_4_front-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 279, '_wp_attached_file', '2013/06/hoodie_4_back-1.jpg'),
(90, 279, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2013/06/hoodie_4_back-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:28:\"hoodie_4_back-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:27:\"hoodie_4_back-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 280, '_wp_attached_file', '2013/06/Poster_2_flat-1.jpg'),
(92, 280, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2013/06/Poster_2_flat-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:28:\"Poster_2_flat-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:27:\"Poster_2_flat-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 281, '_wp_attached_file', '2013/06/Poster_3_flat-1.jpg'),
(94, 281, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2013/06/Poster_3_flat-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:28:\"Poster_3_flat-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:27:\"Poster_3_flat-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 233, '_wp_attached_file', '2013/06/poster_4_up.jpg'),
(96, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2013/06/poster_4_up.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_4_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_4_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:23:\"poster_4_up-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:21:\"poster_4_up-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:23:\"poster_4_up-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:23:\"poster_4_up-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:24:\"poster_4_up-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:23:\"poster_4_up-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:23:\"poster_4_up-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 234, '_wp_attached_file', '2013/06/Poster_4_flat.jpg'),
(98, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/Poster_4_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"Poster_4_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"Poster_4_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 235, '_wp_attached_file', '2013/06/poster_5_up.jpg'),
(100, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2013/06/poster_5_up.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_5_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_5_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:23:\"poster_5_up-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:21:\"poster_5_up-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:23:\"poster_5_up-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:23:\"poster_5_up-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:24:\"poster_5_up-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:23:\"poster_5_up-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:23:\"poster_5_up-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 236, '_wp_attached_file', '2013/06/Poster_5_flat.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(102, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2013/06/Poster_5_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:23:\"Poster_5_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:26:\"Poster_5_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 237, '_wp_attached_file', '2013/06/cd_1_angle.jpg'),
(104, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/cd_1_angle.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"cd_1_angle-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"cd_1_angle-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 238, '_wp_attached_file', '2013/06/cd_1_flat.jpg'),
(106, 238, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/cd_1_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"cd_1_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"cd_1_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 239, '_wp_attached_file', '2013/06/cd_2_angle.jpg'),
(108, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/cd_2_angle.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"cd_2_angle-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"cd_2_angle-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 240, '_wp_attached_file', '2013/06/cd_2_flat.jpg'),
(110, 240, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/cd_2_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"cd_2_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"cd_2_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 241, '_wp_attached_file', '2013/06/cd_3_angle.jpg'),
(112, 241, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/cd_3_angle.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"cd_3_angle-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"cd_3_angle-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 242, '_wp_attached_file', '2013/06/cd_3_flat.jpg'),
(114, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/cd_3_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"cd_3_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"cd_3_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 243, '_wp_attached_file', '2013/06/cd_4_flat.jpg'),
(116, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/cd_4_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"cd_4_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"cd_4_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 244, '_wp_attached_file', '2013/06/cd_4_angle.jpg'),
(118, 244, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/cd_4_angle.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"cd_4_angle-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"cd_4_angle-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 245, '_wp_attached_file', '2013/06/cd_5_angle.jpg'),
(120, 245, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/cd_5_angle.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"cd_5_angle-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"cd_5_angle-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 246, '_wp_attached_file', '2013/06/cd_5_flat.jpg'),
(122, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/cd_5_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"cd_5_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"cd_5_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 247, '_wp_attached_file', '2013/06/cd_6_angle.jpg'),
(124, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2013/06/cd_6_angle.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"cd_6_angle-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"cd_6_angle-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 248, '_wp_attached_file', '2013/06/cd_6_flat.jpg'),
(126, 248, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2013/06/cd_6_flat.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"cd_6_flat-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:22:\"cd_6_flat-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 282, '_wp_attached_file', '2013/06/Poster_4_flat-1.jpg'),
(128, 282, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2013/06/Poster_4_flat-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:28:\"Poster_4_flat-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:27:\"Poster_4_flat-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 283, '_wp_attached_file', '2013/06/Poster_5_flat-1.jpg'),
(130, 283, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2013/06/Poster_5_flat-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:28:\"Poster_5_flat-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:27:\"Poster_5_flat-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 296, '_wp_attached_file', '2013/06/cd_2_angle-1.jpg'),
(132, 296, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:24:\"2013/06/cd_2_angle-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:25:\"cd_2_angle-1-1000x700.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:24:\"cd_2_angle-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 298, '_wp_attached_file', '2018/05/office-notes-notepad-entrepreneur-385561.jpeg'),
(134, 298, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:53:\"2018/05/office-notes-notepad-entrepreneur-385561.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-300x199.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"office-notes-notepad-entrepreneur-385561-1024x680.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-768x510.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:55:\"office-notes-notepad-entrepreneur-385561-1536x1020.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:51:\"office-notes-notepad-entrepreneur-385561-90x60.jpeg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:54:\"office-notes-notepad-entrepreneur-385561-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:53:\"office-notes-notepad-entrepreneur-385561-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 18, '_wp_attached_file', '2018/05/Untitled-1.jpg'),
(136, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2364;s:4:\"file\";s:22:\"2018/05/Untitled-1.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Untitled-1-244x300.jpg\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Untitled-1-832x1024.jpg\";s:5:\"width\";i:832;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Untitled-1-768x946.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:946;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"Untitled-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"Untitled-1-1248x1536.jpg\";s:5:\"width\";i:1248;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"Untitled-1-1663x2048.jpg\";s:5:\"width\";i:1663;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"Untitled-1-49x60.jpg\";s:5:\"width\";i:49;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"Untitled-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"Untitled-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"Untitled-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"Untitled-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"Untitled-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 31, '_wp_attached_file', '2018/05/disturbed-1301200_1920-1.jpg'),
(138, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:36:\"2018/05/disturbed-1301200_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"disturbed-1301200_1920-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"disturbed-1301200_1920-1-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:34:\"disturbed-1301200_1920-1-80x60.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:37:\"disturbed-1301200_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:36:\"disturbed-1301200_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 36, '_wp_attached_file', '2018/05/Untitled-2.jpg'),
(141, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1255;s:6:\"height\";i:1596;s:4:\"file\";s:22:\"2018/05/Untitled-2.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Untitled-2-236x300.jpg\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Untitled-2-805x1024.jpg\";s:5:\"width\";i:805;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Untitled-2-768x977.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:977;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"Untitled-2-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"Untitled-2-1208x1536.jpg\";s:5:\"width\";i:1208;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"Untitled-2-47x60.jpg\";s:5:\"width\";i:47;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"Untitled-2-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"Untitled-2-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"Untitled-2-1255x700.jpg\";s:5:\"width\";i:1255;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"Untitled-2-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"Untitled-2-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 38, '_wp_attached_file', '2018/05/painting-3135875_1920-1.jpg'),
(144, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1295;s:4:\"file\";s:35:\"2018/05/painting-3135875_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"painting-3135875_1920-1-1024x691.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:691;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"painting-3135875_1920-1-1536x1036.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1036;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:33:\"painting-3135875_1920-1-89x60.jpg\";s:5:\"width\";i:89;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:36:\"painting-3135875_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:35:\"painting-3135875_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 41, '_wp_attached_file', '2018/05/woman-2779525_1920-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(147, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:32:\"2018/05/woman-2779525_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"woman-2779525_1920-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"woman-2779525_1920-1-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:30:\"woman-2779525_1920-1-80x60.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:33:\"woman-2779525_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:32:\"woman-2779525_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 33, '_wp_attached_file', '2018/05/branding-2456457_1920-1.jpg'),
(150, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1160;s:4:\"file\";s:35:\"2018/05/branding-2456457_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"branding-2456457_1920-1-1024x619.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:619;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-768x464.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"branding-2456457_1920-1-1536x928.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:928;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:33:\"branding-2456457_1920-1-99x60.jpg\";s:5:\"width\";i:99;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:36:\"branding-2456457_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:35:\"branding-2456457_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 43, '_wp_attached_file', '2018/05/leonardo-da-vinci-1903469_1920-1.jpg'),
(152, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:44:\"2018/05/leonardo-da-vinci-1903469_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"leonardo-da-vinci-1903469_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"leonardo-da-vinci-1903469_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:42:\"leonardo-da-vinci-1903469_1920-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:45:\"leonardo-da-vinci-1903469_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:44:\"leonardo-da-vinci-1903469_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 45, '_wp_attached_file', '2018/05/photo-2586032_1920-1.jpg'),
(155, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:32:\"2018/05/photo-2586032_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"photo-2586032_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"photo-2586032_1920-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:30:\"photo-2586032_1920-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:33:\"photo-2586032_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:32:\"photo-2586032_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 48, '_wp_attached_file', '2018/05/poster-mockup-2853847_1920-1.jpg'),
(158, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:40:\"2018/05/poster-mockup-2853847_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"poster-mockup-2853847_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"poster-mockup-2853847_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:38:\"poster-mockup-2853847_1920-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:41:\"poster-mockup-2853847_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:40:\"poster-mockup-2853847_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 50, '_wp_attached_file', '2018/05/safety-1209710_1920-1.jpg'),
(161, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1353;s:4:\"file\";s:33:\"2018/05/safety-1209710_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"safety-1209710_1920-1-1024x722.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:722;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"safety-1209710_1920-1-1536x1082.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1082;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:31:\"safety-1209710_1920-1-85x60.jpg\";s:5:\"width\";i:85;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:34:\"safety-1209710_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:33:\"safety-1209710_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 62, '_wp_attached_file', '2018/05/new-3018148_1920-1.jpg'),
(164, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1285;s:4:\"file\";s:30:\"2018/05/new-3018148_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"new-3018148_1920-1-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"new-3018148_1920-1-1536x1028.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1028;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:28:\"new-3018148_1920-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:31:\"new-3018148_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:30:\"new-3018148_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 65, '_wp_attached_file', '2018/05/ux-788002_1920-1.jpg'),
(167, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:28:\"2018/05/ux-788002_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"ux-788002_1920-1-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"ux-788002_1920-1-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:26:\"ux-788002_1920-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:29:\"ux-788002_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:28:\"ux-788002_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 68, '_wp_attached_file', '2018/05/skyscraper-2756497_1920-1.jpg'),
(170, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:37:\"2018/05/skyscraper-2756497_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"skyscraper-2756497_1920-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:39:\"skyscraper-2756497_1920-1-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:35:\"skyscraper-2756497_1920-1-80x60.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:38:\"skyscraper-2756497_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:37:\"skyscraper-2756497_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 78, '_wp_attached_file', '2018/05/optical-illusion-153444-1.png'),
(173, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1920;s:4:\"file\";s:37:\"2018/05/optical-illusion-153444-1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"optical-illusion-153444-1-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-330x190.png\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:39:\"optical-illusion-153444-1-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:35:\"optical-illusion-153444-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-367x252.png\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-768x726.png\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:38:\"optical-illusion-153444-1-1400x700.png\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-749x516.png\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:37:\"optical-illusion-153444-1-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 80, '_wp_attached_file', '2018/05/DSC_0028-1.jpg'),
(176, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2018/05/DSC_0028-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"DSC_0028-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"DSC_0028-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:20:\"DSC_0028-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:23:\"DSC_0028-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:22:\"DSC_0028-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 301, '_wp_attached_file', '2018/05/pexels-photo-2690771.jpeg'),
(179, 301, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:33:\"2018/05/pexels-photo-2690771.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2690771-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2690771-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:31:\"pexels-photo-2690771-90x60.jpeg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2690771-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2690771-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 303, '_wp_attached_file', '2018/05/pexels-photo-6690131-e1526883640954.jpeg'),
(181, 303, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1820;s:6:\"height\";i:1280;s:4:\"file\";s:48:\"2018/05/pexels-photo-6690131-e1526883640954.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-300x211.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"pexels-photo-6690131-e1526883640954-1024x720.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-768x540.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"pexels-photo-6690131-e1526883640954-1536x1080.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:46:\"pexels-photo-6690131-e1526883640954-85x60.jpeg\";s:5:\"width\";i:85;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:49:\"pexels-photo-6690131-e1526883640954-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:48:\"pexels-photo-6690131-e1526883640954-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 303, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1920;s:6:\"height\";i:1350;s:4:\"file\";s:25:\"pexels-photo-6690131.jpeg\";}}'),
(183, 303, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1920;s:6:\"height\";i:1350;s:4:\"file\";s:25:\"pexels-photo-6690131.jpeg\";}}'),
(184, 303, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1920;s:6:\"height\";i:1350;s:4:\"file\";s:25:\"pexels-photo-6690131.jpeg\";}}'),
(185, 303, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1920;s:6:\"height\";i:1350;s:4:\"file\";s:25:\"pexels-photo-6690131.jpeg\";}}'),
(186, 303, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1920;s:6:\"height\";i:1350;s:4:\"file\";s:25:\"pexels-photo-6690131.jpeg\";}}'),
(187, 307, '_wp_attached_file', '2018/05/cropped-pexels-photo-6256441.jpeg'),
(188, 307, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:41:\"2018/05/cropped-pexels-photo-6256441.jpeg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-pexels-photo-6256441-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-pexels-photo-6256441-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:41:\"cropped-pexels-photo-6256441-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:39:\"cropped-pexels-photo-6256441-60x60.jpeg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:41:\"cropped-pexels-photo-6256441-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 307, '_wp_attachment_context', 'site-icon'),
(190, 307, '_wp_attachment_context', 'site-icon'),
(191, 307, '_wp_attachment_context', 'site-icon'),
(192, 307, '_wp_attachment_context', 'site-icon'),
(193, 307, '_wp_attachment_context', 'site-icon'),
(194, 307, '_oembed_59a940ae33078f65c4b8437af0479aac', '{{unknown}}'),
(195, 329, '_wp_attached_file', '2018/05/pexels-photo-313691-1.jpeg'),
(196, 329, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:34:\"2018/05/pexels-photo-313691-1.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-313691-1-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"pexels-photo-313691-1-1536x1152.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:32:\"pexels-photo-313691-1-80x60.jpeg\";s:5:\"width\";i:80;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:35:\"pexels-photo-313691-1-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:34:\"pexels-photo-313691-1-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 333, '_wp_attached_file', '2018/05/pexels-photo-601170-1.jpeg'),
(198, 333, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:34:\"2018/05/pexels-photo-601170-1.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-601170-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"pexels-photo-601170-1-1536x1025.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:32:\"pexels-photo-601170-1-90x60.jpeg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:35:\"pexels-photo-601170-1-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:34:\"pexels-photo-601170-1-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 85, '_wp_attached_file', '2018/05/art-3416661_1920-1.jpg'),
(200, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:30:\"2018/05/art-3416661_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"art-3416661_1920-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"art-3416661_1920-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:29:\"art-3416661_1920-1-107x60.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:31:\"art-3416661_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:30:\"art-3416661_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 88, '_wp_attached_file', '2018/05/art-2436545_1920-1.jpg'),
(203, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1402;s:4:\"file\";s:30:\"2018/05/art-2436545_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-300x219.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"art-2436545_1920-1-1024x748.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:748;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-768x561.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:561;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"art-2436545_1920-1-1536x1122.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:28:\"art-2436545_1920-1-82x60.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:31:\"art-2436545_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:30:\"art-2436545_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 91, '_wp_attached_file', '2018/05/brushes-3129361_1920-1.jpg'),
(206, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:34:\"2018/05/brushes-3129361_1920-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"brushes-3129361_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"brushes-3129361_1920-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:32:\"brushes-3129361_1920-1-90x60.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:35:\"brushes-3129361_1920-1-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:34:\"brushes-3129361_1920-1-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(208, 94, '_wp_attached_file', '2018/05/pexels-photo-373289-1.jpeg'),
(209, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2018/05/pexels-photo-373289-1.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-373289-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"pexels-photo-373289-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:32:\"pexels-photo-373289-1-90x60.jpeg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:35:\"pexels-photo-373289-1-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:34:\"pexels-photo-373289-1-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 98, '_wp_attached_file', '2018/05/pexels-photo-1106468-1.jpeg'),
(212, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:35:\"2018/05/pexels-photo-1106468-1.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"pexels-photo-1106468-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"pexels-photo-1106468-1-1536x1025.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:33:\"pexels-photo-1106468-1-90x60.jpeg\";s:5:\"width\";i:90;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:36:\"pexels-photo-1106468-1-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:35:\"pexels-photo-1106468-1-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 101, '_wp_attached_file', '2018/05/pexels-photo-791846-1.jpeg'),
(215, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1454;s:4:\"file\";s:34:\"2018/05/pexels-photo-791846-1.jpeg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-300x227.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-791846-1-1024x775.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:775;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-768x582.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-330x190.jpeg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"pexels-photo-791846-1-1536x1163.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:32:\"pexels-photo-791846-1-79x60.jpeg\";s:5:\"width\";i:79;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-367x252.jpeg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-768x726.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:35:\"pexels-photo-791846-1-1400x700.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-749x516.jpeg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:34:\"pexels-photo-791846-1-800x800.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 109, '_wp_attached_file', '2018/05/logo.png'),
(218, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:249;s:6:\"height\";i:90;s:4:\"file\";s:16:\"2018/05/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:15:\"logo-166x60.png\";s:5:\"width\";i:166;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 116, '_wp_attached_file', '2018/05/cropped-logo.png'),
(220, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:93;s:6:\"height\";i:90;s:4:\"file\";s:24:\"2018/05/cropped-logo.png\";s:5:\"sizes\";a:1:{s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:22:\"cropped-logo-62x60.png\";s:5:\"width\";i:62;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 116, '_wp_attachment_context', 'custom-logo'),
(222, 116, '_oembed_3b1257155d3af6504155a45e694de5ae', '{{unknown}}'),
(223, 123, '_menu_item_type', 'post_type'),
(224, 123, '_menu_item_object_id', '564'),
(225, 123, '_menu_item_object', 'page'),
(226, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 124, '_menu_item_type', 'post_type'),
(229, 124, '_menu_item_object_id', '23'),
(230, 124, '_menu_item_object', 'page'),
(231, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 126, '_menu_item_type', 'post_type'),
(234, 126, '_menu_item_object_id', '565'),
(235, 126, '_menu_item_object', 'page'),
(236, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 134, '_menu_item_type', 'post_type'),
(239, 134, '_menu_item_object_id', '132'),
(240, 134, '_menu_item_object', 'page'),
(241, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 499, '_menu_item_type', 'post_type'),
(244, 499, '_menu_item_menu_item_parent', '500'),
(245, 499, '_menu_item_object_id', '497'),
(246, 499, '_menu_item_object', 'page'),
(247, 499, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 500, '_menu_item_type', 'post_type'),
(250, 500, '_menu_item_object_id', '497'),
(251, 500, '_menu_item_object', 'page'),
(252, 500, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 504, '_menu_item_type', 'post_type'),
(255, 504, '_menu_item_object_id', '502'),
(256, 504, '_menu_item_object', 'page'),
(257, 504, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 506, '_menu_item_type', 'post_type'),
(260, 506, '_menu_item_menu_item_parent', '500'),
(261, 506, '_menu_item_object_id', '100'),
(262, 506, '_menu_item_object', 'post'),
(263, 506, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 507, '_menu_item_type', 'custom'),
(266, 507, '_menu_item_menu_item_parent', '500'),
(267, 507, '_menu_item_object_id', '507'),
(268, 507, '_menu_item_object', 'custom'),
(269, 507, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 507, '_menu_item_url', 'http://rarathemesdemo.com/perfect-portfolio/404'),
(271, 508, '_menu_item_type', 'custom'),
(272, 508, '_menu_item_menu_item_parent', '500'),
(273, 508, '_menu_item_object_id', '508'),
(274, 508, '_menu_item_object', 'custom'),
(275, 508, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(276, 508, '_menu_item_url', 'http://rarathemesdemo.com/perfect-portfolio/?s=portfolio'),
(277, 563, '_wp_attached_file', '2019/04/woocommerce-placeholder.png'),
(278, 563, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:35:\"2019/04/woocommerce-placeholder.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-330x190.png\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-367x252.png\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x726.png\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:36:\"woocommerce-placeholder-1200x700.png\";s:5:\"width\";i:1200;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-749x516.png\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 564, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(280, 565, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(281, 23, '_thumbnail_id', '18'),
(282, 23, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(283, 132, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(284, 137, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(285, 139, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(286, 139, '_wp_page_template', 'default'),
(287, 141, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(288, 141, '_wp_page_template', 'default'),
(289, 497, '_perfect_portfolio_sidebar_layout', 'no-sidebar'),
(290, 497, '_thumbnail_id', '98'),
(291, 497, '_wxr_import_has_attachment_refs', '1'),
(292, 502, '_thumbnail_id', '62'),
(293, 502, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(294, 502, '_wxr_import_has_attachment_refs', '1'),
(295, 511, '_wp_page_template', 'templates/portfolio.php'),
(296, 511, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(297, 514, '_menu_item_type', 'post_type'),
(298, 514, '_menu_item_object_id', '511'),
(299, 514, '_menu_item_object', 'page'),
(300, 514, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 536, '_wp_page_template', 'blog-layout/blog-masonry.php'),
(302, 536, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(303, 543, '_menu_item_type', 'custom'),
(304, 543, '_menu_item_object_id', '543'),
(305, 543, '_menu_item_object', 'custom'),
(306, 543, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(307, 543, '_menu_item_url', '#'),
(308, 544, '_menu_item_type', 'post_type'),
(309, 544, '_menu_item_menu_item_parent', '543'),
(310, 544, '_menu_item_object_id', '536'),
(311, 544, '_menu_item_object', 'page'),
(312, 544, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 545, '_menu_item_type', 'post_type'),
(314, 545, '_menu_item_menu_item_parent', '543'),
(315, 545, '_menu_item_object_id', '537'),
(316, 545, '_menu_item_object', 'page'),
(317, 545, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(319, 546, '_menu_item_type', 'post_type'),
(320, 546, '_menu_item_menu_item_parent', '543'),
(321, 546, '_menu_item_object_id', '538'),
(322, 546, '_menu_item_object', 'page'),
(323, 546, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(325, 552, '_menu_item_type', 'post_type'),
(326, 552, '_menu_item_menu_item_parent', '500'),
(327, 552, '_menu_item_object_id', '141'),
(328, 552, '_menu_item_object', 'page'),
(329, 552, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 553, '_menu_item_type', 'post_type'),
(331, 553, '_menu_item_menu_item_parent', '500'),
(332, 553, '_menu_item_object_id', '139'),
(333, 553, '_menu_item_object', 'page'),
(334, 553, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 554, '_menu_item_type', 'post_type'),
(336, 554, '_menu_item_menu_item_parent', '500'),
(337, 554, '_menu_item_object_id', '137'),
(338, 554, '_menu_item_object', 'page'),
(339, 554, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(342, 61, '_thumbnail_id', '62'),
(343, 61, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(344, 61, '_raratheme_view_count', '373'),
(347, 64, '_thumbnail_id', '65'),
(348, 64, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(349, 64, '_raratheme_view_count', '374'),
(352, 67, '_thumbnail_id', '68'),
(353, 67, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(354, 67, '_raratheme_view_count', '425'),
(357, 70, '_thumbnail_id', '48'),
(358, 70, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(359, 70, '_raratheme_view_count', '405'),
(362, 73, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(363, 73, '_wp_old_date', '2018-05-23'),
(364, 73, '_raratheme_view_count', '332'),
(365, 73, '_thumbnail_id', '31'),
(368, 77, '_thumbnail_id', '45'),
(369, 77, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(370, 77, '_raratheme_view_count', '453'),
(373, 82, '_thumbnail_id', '80'),
(374, 82, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(375, 82, '_raratheme_view_count', '466'),
(378, 84, '_thumbnail_id', '85'),
(379, 84, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(380, 84, '_raratheme_view_count', '497'),
(383, 87, '_thumbnail_id', '88'),
(384, 87, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(385, 87, '_raratheme_view_count', '538'),
(388, 90, '_thumbnail_id', '91'),
(389, 90, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(390, 90, '_raratheme_view_count', '523'),
(393, 93, '_thumbnail_id', '94'),
(394, 93, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(395, 93, '_raratheme_view_count', '979'),
(398, 96, '_thumbnail_id', '98'),
(399, 96, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(400, 96, '_raratheme_view_count', '1360'),
(403, 100, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(404, 100, '_raratheme_view_count', '1969'),
(405, 100, '_thumbnail_id', '101'),
(406, 537, '_wp_page_template', 'blog-layout/blog-normal.php'),
(407, 537, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(408, 538, '_wp_page_template', 'blog-layout/blog-first-large.php'),
(409, 538, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(410, 47, '_thumbnail_id', '48'),
(411, 47, '_wp_old_date', '2018-05-23'),
(412, 49, '_thumbnail_id', '50'),
(413, 49, '_wp_old_date', '2018-05-23'),
(414, 30, '_thumbnail_id', '31'),
(415, 32, '_thumbnail_id', '33'),
(416, 34, '_thumbnail_id', '36'),
(417, 37, '_thumbnail_id', '38'),
(418, 40, '_thumbnail_id', '41'),
(419, 42, '_thumbnail_id', '43'),
(420, 44, '_thumbnail_id', '45'),
(421, 131, '_form', '[text* your-name placeholder \"Name\"] \n\n[email* your-email placeholder \"Email\"] \n\n[text* your-subject placeholder \"Subject\"] \n\n[textarea your-message placeholder \"Message \"]\n\n[submit \"Send Message\"]'),
(422, 131, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"Perfect Portfolio \"[your-subject]\"\";s:6:\"sender\";s:42:\"[your-name] <wordpress@rarathemesdemo.com>\";s:9:\"recipient\";s:21:\"rarathemehq@gmail.com\";s:4:\"body\";s:199:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Perfect Portfolio (http://rarathemesdemo.com/perfect-portfolio)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(423, 131, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Perfect Portfolio \"[your-subject]\"\";s:6:\"sender\";s:48:\"Perfect Portfolio <wordpress@rarathemesdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:141:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Perfect Portfolio (http://rarathemesdemo.com/perfect-portfolio)\";s:18:\"additional_headers\";s:31:\"Reply-To: rarathemehq@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(424, 131, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(425, 131, '_locale', 'en_US'),
(426, 564, '_edit_lock', '1627545996:1'),
(428, 567, '_wp_attached_file', '2021/07/sampel2.jpg'),
(429, 567, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:702;s:6:\"height\";i:482;s:4:\"file\";s:19:\"2021/07/sampel2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sampel2-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sampel2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:19:\"sampel2-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:17:\"sampel2-87x60.jpg\";s:5:\"width\";i:87;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:19:\"sampel2-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:17:\"Tedi Nizar Afrida\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1591169139\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 45, '_wp_attachment_is_custom_background', 'perfect-portfolio'),
(438, 571, '_wp_attached_file', '2021/07/sampel2-1.jpg'),
(439, 571, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:702;s:6:\"height\";i:482;s:4:\"file\";s:21:\"2021/07/sampel2-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sampel2-1-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sampel2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"sampel2-1-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:19:\"sampel2-1-87x60.jpg\";s:5:\"width\";i:87;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:21:\"sampel2-1-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:17:\"Tedi Nizar Afrida\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1591169139\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 571, '_wp_attachment_is_custom_background', 'perfect-portfolio'),
(441, 572, '_wp_attached_file', '2021/07/profil-scaled.jpg'),
(442, 572, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1438;s:4:\"file\";s:25:\"2021/07/profil-scaled.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"profil-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"profil-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"profil-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"profil-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:18:\"profil-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"profil-1536x863.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:863;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"profil-2048x1150.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-schema\";a:4:{s:4:\"file\";s:17:\"profil-107x60.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"perfect-portfolio-article\";a:4:{s:4:\"file\";s:18:\"profil-367x252.jpg\";s:5:\"width\";i:367;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"perfect-portfolio-blog\";a:4:{s:4:\"file\";s:18:\"profil-768x726.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"perfect-portfolio-fullwidth\";a:4:{s:4:\"file\";s:19:\"profil-1400x700.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"perfect-portfolio-with-sidebar\";a:4:{s:4:\"file\";s:18:\"profil-749x516.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"perfect-portfolio-square\";a:4:{s:4:\"file\";s:18:\"profil-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1571559144\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"profil.jpg\";}'),
(443, 572, '_wp_attachment_is_custom_background', 'perfect-portfolio'),
(444, 242, '_wp_attachment_is_custom_background', 'perfect-portfolio'),
(445, 567, '_wp_attachment_is_custom_background', 'perfect-portfolio'),
(446, 574, '_edit_last', '1'),
(447, 574, 'nta_wa_account_info', 'a:7:{s:6:\"number\";s:13:\"6282315059772\";s:5:\"title\";s:0:\"\";s:14:\"predefinedText\";s:0:\"\";s:14:\"willBeBackText\";s:34:\"I will be back in [njwa_time_work]\";s:11:\"dayOffsText\";s:19:\"I will be back soon\";s:17:\"isAlwaysAvailable\";s:2:\"ON\";s:17:\"daysOfWeekWorking\";a:7:{s:6:\"sunday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}s:6:\"monday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}s:7:\"tuesday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}s:9:\"wednesday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}s:8:\"thursday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}s:6:\"friday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}s:8:\"saturday\";a:2:{s:14:\"isWorkingOnDay\";s:3:\"OFF\";s:9:\"workHours\";a:1:{i:0;a:2:{s:9:\"startTime\";s:5:\"08:00\";s:7:\"endTime\";s:5:\"17:30\";}}}}}'),
(448, 574, 'nta_wa_button_styles', 'a:6:{s:4:\"type\";s:5:\"round\";s:15:\"backgroundColor\";s:7:\"#2db742\";s:9:\"textColor\";s:7:\"#ffffff\";s:5:\"label\";s:33:\"Coba hubungi untuk meminta saran?\";s:5:\"width\";i:300;s:6:\"height\";i:64;}'),
(449, 574, 'nta_wa_widget_show', 'ON'),
(450, 574, 'nta_wa_widget_position', '0'),
(451, 574, 'nta_wa_wc_show', 'OFF'),
(452, 574, 'nta_wa_wc_position', '0'),
(453, 574, '_edit_lock', '1627659766:1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-07-29 07:27:23', '2021-07-29 07:27:23', '<!-- wp:paragraph -->\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'publish', 'open', 'open', '', 'halo-dunia', '', '', '2021-07-29 07:27:23', '2021-07-29 07:27:23', '', 0, 'http://localhost/wordpress/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-07-29 07:27:23', '2021-07-29 07:27:23', '<!-- wp:paragraph -->\n<p>Ini adalah laman contoh. Laman ini berbeda dari artikel blog karena akan tetap di satu tempat dan akan muncul di navigasi situs Anda (di sebagian besar tema). Kebanyakan orang memulai dengan laman \"Tentang\" yang bertujuan untuk mengenalkan mereka kepada pengunjung potensial situs. Biasanya berisi seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hai yang disana! Saya seorang kurir bersepeda di siang hari, di malam hari bermimpi menjadi seorang aktor, dan ini adalah situs web saya. Saya tinggal di Los Angeles, punya anjing besar bernama Jack, dan saya suka pi&#241;a minuman Colada. (Dan terjebak dalam hujan.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...atau seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Perusahaan Doohickey XYZ didirikan pada tahun 1971, dan telah menyediakan doohickey berkualitas untuk masyarakat umum sejak saat itu. Terletak di Kota Gotham, XYZ mempekerjakan lebih dari 2.000 orang dan melakukan segala macam hal luar biasa untuk komunitas Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Sebagai pengguna baru WordPress, Anda harus membuka <a href=\"http://localhost/wordpress/wordpress/wp-admin/\">dasbor Anda</a> untuk menghapus laman ini dan membuat laman-laman baru untuk konten Anda. Have fun!</p>\n<!-- /wp:paragraph -->', 'Laman Contoh', '', 'publish', 'closed', 'open', '', 'laman-contoh', '', '', '2021-07-29 07:27:23', '2021-07-29 07:27:23', '', 0, 'http://localhost/wordpress/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-07-29 07:27:23', '2021-07-29 07:27:23', '<!-- wp:heading --><h2>Siapa kami</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Alamat situs web kami adalah: http://localhost/wordpress/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentar</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Saat pengunjung meninggalkan komentar pada situs, kita mengumpulkan data yang ditampilkan pada form komentar, alamat IP pengunjung dan user agent browser untuk membantu pendeteksian spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah persetujuan atas komentar Anda, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan data lokasi tertanam (GPS EXIF) yang disertakan. Pengunjung ke situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Jika Anda meninggalkan komentar di situs kami, Anda dapat memilih untuk menyimpan nama, alamat email, dan situs web Anda dalam cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda mengunjungi laman login kami, kami akan memasang cookie sementara untuk memastikan apakah browser Anda menerima cookie. Cookie ini tidak mengandung data pribadi dan dibuang ketika Anda menutup browser Anda.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Saat Anda log masuk, kami akan menyiapkan beberapa cookie untuk menyimpan informasi log masuk Anda dan tampilan yang Anda pilih. Cookie log masuk berlaku selama dua hari, dan cookie pengaturan tampilan berlaku selama satu tahun. Jika Anda memilih &quot;Ingatkan Saya&quot;, log masuk anda akan bertahan selama dua minggu. Jika Anda log keluar dari akun, cookie log masuk akan dihapus.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda menyunting atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID posting dari artikel yang baru saja Anda sunting. Kadaluwarsa setelah 1 hari.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Konten yang disematkan dari situs web lain</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Artikel-artikel di dalam situs ini dapat menyertakan konten terembed (seperti video, gambar, artikel, dll). Konten terembed dari situs web lain akan berlaku sama dengan pengunjung yang mengunjungi situs web lain.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Situs-situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookies, menanamkan pelacak dari pihak ketiga, dan memonitor interaksi Anda dengan muatan tertanam, termasuk menggunakannya untuk melacak interaksi Anda jika Anda memiliki sebuah akun dan masuk ke dalam situs web tersebut.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dengan siapa kami membagi data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Jika Anda meminta pengaturan ulang kata sandi, alamat IP Anda akan dimasukkan dalam email pengaturan ulang.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Berapa lama kami menyimpan data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui komentar tindak lanjut secara otomatis dan tidak menahannya dalam antrean moderasi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Untuk pengguna yang mendaftar pada website kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan dalam profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs juga dapat melihat dan mengedit informasi tersebut.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hak apa yang Anda miliki atas data ANda</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Jika anda mempunyai akun di situs ini, atau telah meninggalkan komentar, anda dapat meminta untuk mendapat data personal dalam file export dari kami, termasuk data yang anda berikan kepada kami. Anda juga dapat meminta kami menghapus data personal mengenai anda. Ini tidak termasuk data yang wajib kami simpan untuk keperluan administratif, hukum, atau keamanan.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ke mana kami kirim data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Teks yang disarankan: </strong>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p><!-- /wp:paragraph -->', 'Kebijakan Privasi', '', 'draft', 'closed', 'open', '', 'kebijakan-privasi', '', '', '2021-07-29 07:27:23', '2021-07-29 07:27:23', '', 0, 'http://localhost/wordpress/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-07-29 07:46:04', '2021-07-29 07:46:04', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <teddinizzar18@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <teddinizzar18@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-07-29 07:46:04', '2021-07-29 07:46:04', '', 0, 'http://localhost/wordpress/wordpress/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2021-07-29 07:49:32', '2021-07-29 07:49:32', '', 'Rara One Click Demo Import - log_file_2021-07-29__07-49-32', '', 'inherit', 'open', 'closed', '', 'rara-one-click-demo-import-log_file_2021-07-29__07-49-32', '', '', '2021-07-29 07:49:32', '2021-07-29 07:49:32', '', 0, 'http://localhost/wordpress/wordpress/wp-content/uploads/2021/07/log_file_2021-07-29__07-49-32.txt', 0, 'attachment', 'text/plain', 0),
(9, 1, '2021-07-29 07:50:28', '2021-07-29 07:50:28', '', 'Rara One Click Demo Import - log_file_2021-07-29__07-50-28', '', 'inherit', 'open', 'closed', '', 'rara-one-click-demo-import-log_file_2021-07-29__07-50-28', '', '', '2021-07-29 07:50:28', '2021-07-29 07:50:28', '', 0, 'http://localhost/wordpress/wordpress/wp-content/uploads/2021/07/log_file_2021-07-29__07-50-28.txt', 0, 'attachment', 'text/plain', 0),
(18, 1, '2018-05-23 06:18:45', '2018-05-23 06:18:45', '', 'Untitled-1', '', 'inherit', 'open', 'closed', '', 'untitled-1', '', '', '2018-05-23 06:18:45', '2018-05-23 06:18:45', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/Untitled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-05-23 06:21:50', '2018-05-23 06:21:50', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. See for yourself!\r\n#Photoshop, #Illustrator, #CSS, #Python, #Ruby, #Photography\r\n\r\nThe term “portfolio” refers to any combination of financial assets such as stocks, bonds and cash. Portfolios may be held by individual investors and/or managed by financial professionals, hedge funds, banks and other financial institutions. It is a generally accepted principle that a portfolio is designed according to the investor\'s risk tolerance, time frame and investment objectives. The monetary value of each asset may influence the risk/reward ratio of the portfolio.\r\n\r\nWhen determining a proper asset allocation one aims at maximizing the expected return and minimizing the risk. This is an example of a multi-objective optimization problem: many efficient solutions are available and the preferred solution must be selected by considering a tradeoff between risk and return.\r\n\r\nIn particular, a portfolio A is dominated by another portfolio A\' if A\' has a greater expected gain and a lesser risk than A. If no portfolio dominates A, A is a Pareto-optimal portfolio. The set of Pareto-optimal returns and risks is called the Pareto efficient frontier for the Markowitz portfolio selection problem.', 'I’m Francisco Adams', '', 'publish', 'closed', 'closed', '', 'im-francisco-adams', '', '', '2018-05-23 06:21:50', '2018-05-23 06:21:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=23', 0, 'page', '', 0),
(30, 1, '2018-05-23 06:35:08', '2018-05-23 06:35:08', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes', '', '', '2018-05-23 06:35:08', '2018-05-23 06:35:08', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=30', 0, 'rara-portfolio', '', 0),
(31, 1, '2018-05-23 06:35:04', '2018-05-23 06:35:04', '', 'disturbed-1301200_1920 (1)', '', 'inherit', 'open', 'closed', '', 'disturbed-1301200_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 30, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/disturbed-1301200_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-05-23 06:36:55', '2018-05-23 06:36:55', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-2', '', '', '2018-05-23 06:36:55', '2018-05-23 06:36:55', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=32', 0, 'rara-portfolio', '', 0),
(33, 1, '2018-05-23 06:36:46', '2018-05-23 06:36:46', '', 'branding-2456457_1920 (1)', '', 'inherit', 'open', 'closed', '', 'branding-2456457_1920-1', '', '', '2018-05-23 06:36:46', '2018-05-23 06:36:46', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/branding-2456457_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-05-23 06:40:39', '2018-05-23 06:40:39', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-3', '', '', '2018-05-23 06:40:39', '2018-05-23 06:40:39', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=34', 0, 'rara-portfolio', '', 0),
(36, 1, '2018-05-23 06:42:54', '2018-05-23 06:42:54', '', 'Untitled-2', '', 'inherit', 'open', 'closed', '', 'untitled-2', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 34, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/Untitled-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-05-23 07:51:07', '2018-05-23 07:51:07', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-4', '', '', '2018-05-23 07:51:07', '2018-05-23 07:51:07', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=37', 0, 'rara-portfolio', '', 0),
(38, 1, '2018-05-23 07:50:56', '2018-05-23 07:50:56', '', 'painting-3135875_1920 (1)', '', 'inherit', 'open', 'closed', '', 'painting-3135875_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 37, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/painting-3135875_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-05-23 07:54:55', '2018-05-23 07:54:55', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-5', '', '', '2018-05-23 07:54:55', '2018-05-23 07:54:55', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=40', 0, 'rara-portfolio', '', 0),
(41, 1, '2018-05-23 07:54:50', '2018-05-23 07:54:50', '', 'woman-2779525_1920 (1)', '', 'inherit', 'open', 'closed', '', 'woman-2779525_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 40, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/woman-2779525_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-05-23 07:57:13', '2018-05-23 07:57:13', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-6', '', '', '2018-05-23 07:57:13', '2018-05-23 07:57:13', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=42', 0, 'rara-portfolio', '', 0),
(43, 1, '2018-05-23 07:57:10', '2018-05-23 07:57:10', '', 'leonardo-da-vinci-1903469_1920 (1)', '', 'inherit', 'open', 'closed', '', 'leonardo-da-vinci-1903469_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 42, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/leonardo-da-vinci-1903469_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-05-23 08:00:45', '2018-05-23 08:00:45', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-7', '', '', '2018-05-23 08:00:45', '2018-05-23 08:00:45', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=44', 0, 'rara-portfolio', '', 0),
(45, 1, '2018-05-23 08:00:38', '2018-05-23 08:00:38', '', 'photo-2586032_1920 (1)', '', 'inherit', 'open', 'closed', '', 'photo-2586032_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 44, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/photo-2586032_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-03-23 08:07:25', '2018-03-23 08:07:25', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-8', '', '', '2018-03-23 08:07:25', '2018-03-23 08:07:25', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=47', 0, 'rara-portfolio', '', 0),
(48, 1, '2018-05-23 08:07:19', '2018-05-23 08:07:19', '', 'poster-mockup-2853847_1920 (1)', '', 'inherit', 'open', 'closed', '', 'poster-mockup-2853847_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 47, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/poster-mockup-2853847_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-03-23 08:09:20', '2018-03-23 08:09:20', 'Over the last ten odd years I\'ve had the pleasure of working with some great companies, working side by side to design and develop new apps and improve upon existing products. I mainly focus on designing clear, understandable interfaces and creating a goal oriented user experience through iteration and prototyping. I know... it sounds very marketingy. At the end of the day, I just love collaborating with passionate startups and companies and make kick-ass apps.\r\n<blockquote>“From exciting startups to global brands, companies are reaching out to digital agencies, responding to the new possibilities available. However, the industry is fast becoming overcrowded, heaving with agencies”</blockquote>\r\nDeserts are formed by weathering processes as large variations in temperature between day and night put strains on the rocks which consequently break in pieces. Although rain seldom occurs in deserts, there are occasional downpours that can result in flash floods. Rain falling on hot rocks can cause them to shatter and the resulting fragments and rubble strewn over the desert floor is further eroded by the wind.', 'Luke in the house of jelly radio fenzes.', '', 'publish', 'closed', 'closed', '', 'luke-in-the-house-of-jelly-radio-fenzes-9', '', '', '2018-03-23 08:09:20', '2018-03-23 08:09:20', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=rara-portfolio&amp;p=49', 0, 'rara-portfolio', '', 0),
(50, 1, '2018-05-23 08:09:15', '2018-05-23 08:09:15', '', 'safety-1209710_1920 (1)', '', 'inherit', 'open', 'closed', '', 'safety-1209710_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 49, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/safety-1209710_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-05-23 08:36:44', '2018-05-23 08:36:44', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'BnB Designer’s Console', 'A fifth alcohol misplaces the guideline. The leak coasts inside every closure. Why does the satellite husband the idiotic microcomputer? How can the negative welcome post the phrase?', 'publish', 'closed', 'closed', '', 'bnb-designers-console', '', '', '2018-05-23 08:36:44', '2018-05-23 08:36:44', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=61', 0, 'post', '', 0),
(62, 1, '2018-05-23 08:36:39', '2018-05-23 08:36:39', '', 'new-3018148_1920 (1)', '', 'inherit', 'open', 'closed', '', 'new-3018148_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 61, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/new-3018148_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-05-23 09:46:02', '2018-05-23 09:46:02', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'UI UX Design Max Conversion', '', 'publish', 'closed', 'closed', '', 'ui-ux-design-max-conversion', '', '', '2018-05-23 09:46:02', '2018-05-23 09:46:02', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=64', 0, 'post', '', 0),
(65, 1, '2018-05-23 09:45:57', '2018-05-23 09:45:57', '', 'ux-788002_1920 (1)', '', 'inherit', 'open', 'closed', '', 'ux-788002_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 64, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/ux-788002_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-05-23 09:47:50', '2018-05-23 09:47:50', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'Expanding our horizons through travel, talk and talent', '', 'publish', 'closed', 'closed', '', 'expanding-our-horizons-through-travel-talk-and-talent', '', '', '2018-05-23 09:47:50', '2018-05-23 09:47:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=67', 0, 'post', '', 0),
(68, 1, '2018-05-23 09:47:44', '2018-05-23 09:47:44', '', 'skyscraper-2756497_1920 (1)', '', 'inherit', 'open', 'closed', '', 'skyscraper-2756497_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 67, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/skyscraper-2756497_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-05-23 09:48:38', '2018-05-23 09:48:38', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'The future of letting up in the new is The Codewing Solutions', '', 'publish', 'closed', 'closed', '', 'the-future-of-letting-up-in-the-new-is-the-codewing-solutions', '', '', '2018-05-23 09:48:38', '2018-05-23 09:48:38', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=70', 0, 'post', '', 0),
(73, 1, '2018-01-23 09:50:22', '2018-01-23 09:50:22', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'In need of some interesting? Well, let us take you on a tour of the best internet has to offer.', '', 'publish', 'closed', 'closed', '', 'in-need-of-some-interesting-well-let-us-take-you-on-a-tour-of-the-best-internet-has-to-offer', '', '', '2018-01-23 09:50:22', '2018-01-23 09:50:22', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=73', 0, 'post', '', 0),
(77, 1, '2018-05-23 09:58:01', '2018-05-23 09:58:01', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'The horizon or skyline is the apparent line', '', 'publish', 'closed', 'closed', '', '77', '', '', '2018-05-23 09:58:01', '2018-05-23 09:58:01', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=77', 0, 'post', '', 0),
(78, 1, '2018-05-23 09:57:46', '2018-05-23 09:57:46', '', 'optical-illusion-153444 (1)', '', 'inherit', 'open', 'closed', '', 'optical-illusion-153444-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 77, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/optical-illusion-153444-1.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2018-05-23 10:01:09', '2018-05-23 10:01:09', '', 'DSC_0028 (1)', '', 'inherit', 'open', 'closed', '', 'dsc_0028-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 77, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/DSC_0028-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-05-23 10:09:13', '2018-05-23 10:09:13', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'Musing on the Arts creatively.', '', 'publish', 'closed', 'closed', '', 'musing-on-the-arts-creatively', '', '', '2018-05-23 10:09:13', '2018-05-23 10:09:13', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=82', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(84, 1, '2018-05-23 10:18:59', '2018-05-23 10:18:59', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'Distance to the visible horizon has long', '', 'publish', 'closed', 'closed', '', 'distance-to-the-visible-horizon-has-long', '', '', '2018-05-23 10:18:59', '2018-05-23 10:18:59', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=84', 0, 'post', '', 0),
(85, 1, '2018-05-23 10:18:55', '2018-05-23 10:18:55', '', 'art-3416661_1920 (1)', '', 'inherit', 'open', 'closed', '', 'art-3416661_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 84, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/art-3416661_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-05-23 10:46:58', '2018-05-23 10:46:58', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'Survival and successful navigation', '', 'publish', 'closed', 'closed', '', 'survival-and-successful-navigation', '', '', '2018-05-23 10:46:58', '2018-05-23 10:46:58', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=87', 0, 'post', '', 0),
(88, 1, '2018-05-23 10:46:52', '2018-05-23 10:46:52', '', 'art-2436545_1920 (1)', '', 'inherit', 'open', 'closed', '', 'art-2436545_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 87, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/art-2436545_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-05-23 10:49:17', '2018-05-23 10:49:17', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'Especially perspective drawing', '', 'publish', 'closed', 'closed', '', 'especially-perspective-drawing', '', '', '2018-05-23 10:49:17', '2018-05-23 10:49:17', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=90', 0, 'post', '', 0),
(91, 1, '2018-05-23 10:48:55', '2018-05-23 10:48:55', '', 'brushes-3129361_1920 (1)', '', 'inherit', 'open', 'closed', '', 'brushes-3129361_1920-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 90, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/brushes-3129361_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-05-23 10:51:52', '2018-05-23 10:51:52', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'Hey! Gaming has entered new era!', '', 'publish', 'closed', 'closed', '', 'hey-gaming-has-entered-new-era', '', '', '2018-05-23 10:51:52', '2018-05-23 10:51:52', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=93', 0, 'post', '', 0),
(94, 1, '2018-05-23 10:51:27', '2018-05-23 10:51:27', '', 'pexels-photo-373289 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-373289-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 93, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-373289-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-05-23 11:01:17', '2018-05-23 11:01:17', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'The leak coasts inside every closure.', '', 'publish', 'closed', 'closed', '', 'the-leak-coasts-inside-every-closure', '', '', '2018-05-23 11:01:17', '2018-05-23 11:01:17', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=96', 0, 'post', '', 0),
(98, 1, '2018-05-23 11:01:09', '2018-05-23 11:01:09', '', 'pexels-photo-1106468 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-1106468-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 96, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-1106468-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-05-23 11:05:38', '2018-05-23 11:05:38', 'The horizon or skyline is the apparent line that separates earth from sky, the line that divides all visible directions into two categories: those that intersect the Earth\'s surface, and those that do not. At many locations, the true horizon is obscured by trees, buildings, mountains, etc., and the resulting intersection of earth and sky is called the visible horizon. When looking at a sea from a shore, the part of the sea closest to the horizon is called the offing. The word horizon derives from the Greek \"ὁρίζων κύκλος\" horizōn kyklos, \"separating circle\",from the verb ὁρίζω horizō, \"to divide\", \"to separate\", and that from \"ὅρος\" (oros), \"boundary, landmark\".\r\n\r\nHistorically, the distance to the visible horizon has long been vital to survival and successful navigation, especially at sea, because it determined an observer\'s maximum range of vision and thus of communication, with all the obvious consequences for safety and the transmission of information that this range implied. This importance lessened with the development of the radio and the telegraph, but even today, when flying an aircraft under visual flight rules, a technique called attitude flying is used to control the aircraft, where the pilot uses the visual relationship between the aircraft\'s nose and the horizon to control the aircraft. A pilot can also retain his or her spatial orientation by referring to the horizon.\r\n\r\nIn many contexts, especially perspective drawing, the curvature of the Earth is disregarded and the horizon is considered the theoretical line to which points on any horizontal plane converge (when projected onto the picture plane) as their distance from the observer increases. For observers near sea level the difference between this geometrical horizon (which assumes a perfectly flat, infinite ground plane) and the true horizon (which assumes a spherical Earth surface) is imperceptible to the naked eye dubious – discuss but for someone on a 1000-meter hill looking out to sea the true horizon will be about a degree below a horizontal line.', 'The jargon reflects underneath the written flute.', '', 'publish', 'closed', 'closed', '', 'the-jargon-reflects-underneath-the-written-flute', '', '', '2018-05-23 11:05:38', '2018-05-23 11:05:38', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=100', 0, 'post', '', 0),
(101, 1, '2018-05-23 11:05:11', '2018-05-23 11:05:11', '', 'pexels-photo-791846 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-791846-1', '', '', '2021-07-29 07:56:07', '2021-07-29 07:56:07', '', 100, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-791846-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-05-24 05:25:31', '2018-05-24 05:25:31', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2018-05-24 05:25:31', '2018-05-24 05:25:31', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/newsletter/', 0, 'page', '', 0),
(109, 1, '2018-05-24 05:56:23', '2018-05-24 05:56:23', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-05-24 05:56:23', '2018-05-24 05:56:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/logo.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-05-24 06:06:23', '2018-05-24 06:06:23', 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-05-24 06:06:23', '2018-05-24 06:06:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2018-05-25 05:38:49', '2018-05-25 05:38:49', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-05-25 05:38:49', '2018-05-25 05:38:49', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=123', 1, 'nav_menu_item', '', 0),
(124, 1, '2018-05-25 05:38:49', '2018-05-25 05:38:49', '', 'About', '', 'publish', 'closed', 'closed', '', '124', '', '', '2018-05-25 05:38:49', '2018-05-25 05:38:49', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=124', 2, 'nav_menu_item', '', 0),
(126, 1, '2018-05-25 05:39:30', '2018-05-25 05:39:30', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2018-05-25 05:39:30', '2018-05-25 05:39:30', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=126', 3, 'nav_menu_item', '', 0),
(131, 1, '2018-05-25 05:52:46', '2018-05-25 05:52:46', '[text* your-name placeholder \"Name\"] \r\n\r\n[email* your-email placeholder \"Email\"] \r\n\r\n[text* your-subject placeholder \"Subject\"] \r\n\r\n[textarea your-message placeholder \"Message \"]\r\n\r\n[submit \"Send Message\"]\n1\nPerfect Portfolio \"[your-subject]\"\n[your-name] <wordpress@rarathemesdemo.com>\nrarathemehq@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Perfect Portfolio (http://rarathemesdemo.com/perfect-portfolio)\nReply-To: [your-email]\n\n\n\n\nPerfect Portfolio \"[your-subject]\"\nPerfect Portfolio <wordpress@rarathemesdemo.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Perfect Portfolio (http://rarathemesdemo.com/perfect-portfolio)\nReply-To: rarathemehq@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2018-05-25 05:52:46', '2018-05-25 05:52:46', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?post_type=wpcf7_contact_form&amp;p=131', 0, 'wpcf7_contact_form', '', 0),
(132, 1, '2018-05-25 05:53:15', '2018-05-25 05:53:15', '[contact-form-7 id=\"131\" title=\"Contact\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-05-25 05:53:15', '2018-05-25 05:53:15', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=132', 0, 'page', '', 0),
(134, 1, '2018-05-25 05:53:29', '2018-05-25 05:53:29', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2018-05-25 05:53:29', '2018-05-25 05:53:29', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=134', 18, 'nav_menu_item', '', 0),
(137, 1, '2018-05-25 07:57:53', '2018-05-25 07:57:53', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-05-25 07:57:53', '2018-05-25 07:57:53', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=137', 0, 'page', '', 0),
(139, 1, '2018-05-25 07:58:36', '2018-05-25 07:58:36', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-05-25 07:58:36', '2018-05-25 07:58:36', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=139', 0, 'page', '', 0),
(141, 1, '2018-05-25 07:59:27', '2018-05-25 07:59:27', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-05-25 07:59:27', '2018-05-25 07:59:27', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=141', 0, 'page', '', 0),
(198, 1, '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 'T_1_front', '', 'inherit', 'open', 'open', '', 't_1_front', '', '', '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 'T_1_back', '', 'inherit', 'open', 'open', '', 't_1_back', '', '', '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 'T_2_front', '', 'inherit', 'open', 'open', '', 't_2_front', '', '', '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 'T_2_back', '', 'inherit', 'open', 'open', '', 't_2_back', '', '', '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front', '', '', '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 'T_3_back', '', 'inherit', 'open', 'open', '', 't_3_back', '', '', '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 'T_3_front', '', 'inherit', 'open', 'open', '', 't_3_front', '', '', '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 'T_4_back', '', 'inherit', 'open', 'open', '', 't_4_back', '', '', '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(206, 1, '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front-2', '', '', '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 'T_5_front', '', 'inherit', 'open', 'open', '', 't_5_front', '', '', '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 'T_5_back', '', 'inherit', 'open', 'open', '', 't_5_back', '', '', '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 'T_6_front', '', 'inherit', 'open', 'open', '', 't_6_front', '', '', '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 'T_6_back', '', 'inherit', 'open', 'open', '', 't_6_back', '', '', '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 'T_7_front', '', 'inherit', 'open', 'open', '', 't_7_front', '', '', '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 'T_7_back', '', 'inherit', 'open', 'open', '', 't_7_back', '', '', '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 'hoodie_7_front', '', 'inherit', 'open', 'open', '', 'hoodie_7_front', '', '', '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 'hoodie_7_back', '', 'inherit', 'open', 'open', '', 'hoodie_7_back', '', '', '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 'hoodie_1_back', '', 'inherit', 'open', 'open', '', 'hoodie_1_back', '', '', '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 'hoodie_1_front', '', 'inherit', 'open', 'open', '', 'hoodie_1_front', '', '', '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 'hoodie_2_front', '', 'inherit', 'open', 'open', '', 'hoodie_2_front', '', '', '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 'hoodie_2_back', '', 'inherit', 'open', 'open', '', 'hoodie_2_back', '', '', '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 'hoodie_3_front', '', 'inherit', 'open', 'open', '', 'hoodie_3_front', '', '', '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 'hoodie_3_back', '', 'inherit', 'open', 'open', '', 'hoodie_3_back', '', '', '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 'hoodie_4_front', '', 'inherit', 'open', 'open', '', 'hoodie_4_front', '', '', '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 'hoodie_4_back', '', 'inherit', 'open', 'open', '', 'hoodie_4_back', '', '', '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 'hoodie_5_front', '', 'inherit', 'open', 'open', '', 'hoodie_5_front', '', '', '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 'hoodie_5_back', '', 'inherit', 'open', 'open', '', 'hoodie_5_back', '', '', '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 'hoodie_6_front', '', 'inherit', 'open', 'open', '', 'hoodie_6_front', '', '', '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 'hoodie_6_back', '', 'inherit', 'open', 'open', '', 'hoodie_6_back', '', '', '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 'poster_1_up', '', 'inherit', 'open', 'open', '', 'poster_1_up', '', '', '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 'Poster_1_flat', '', 'inherit', 'open', 'open', '', 'poster_1_flat', '', '', '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 'poster_2_up', '', 'inherit', 'open', 'open', '', 'poster_2_up', '', '', '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 'Poster_2_flat', '', 'inherit', 'open', 'open', '', 'poster_2_flat', '', '', '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 'poster_3_up', '', 'inherit', 'open', 'open', '', 'poster_3_up', '', '', '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 'Poster_3_flat', '', 'inherit', 'open', 'open', '', 'poster_3_flat', '', '', '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 'poster_4_up', '', 'inherit', 'open', 'open', '', 'poster_4_up', '', '', '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 'Poster_4_flat', '', 'inherit', 'open', 'open', '', 'poster_4_flat', '', '', '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 'poster_5_up', '', 'inherit', 'open', 'open', '', 'poster_5_up', '', '', '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 'Poster_5_flat', '', 'inherit', 'open', 'open', '', 'poster_5_flat', '', '', '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 'cd_1_angle', '', 'inherit', 'open', 'open', '', 'cd_1_angle', '', '', '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 'cd_1_flat', '', 'inherit', 'open', 'open', '', 'cd_1_flat', '', '', '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 'cd_2_angle', '', 'inherit', 'open', 'open', '', 'cd_2_angle', '', '', '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 'cd_2_flat', '', 'inherit', 'open', 'open', '', 'cd_2_flat', '', '', '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 'cd_3_angle', '', 'inherit', 'open', 'open', '', 'cd_3_angle', '', '', '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 'cd_3_flat', '', 'inherit', 'open', 'open', '', 'cd_3_flat', '', '', '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 'cd_4_flat', '', 'inherit', 'open', 'open', '', 'cd_4_flat', '', '', '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 'cd_4_angle', '', 'inherit', 'open', 'open', '', 'cd_4_angle', '', '', '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 'cd_5_angle', '', 'inherit', 'open', 'open', '', 'cd_5_angle', '', '', '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 'cd_5_flat', '', 'inherit', 'open', 'open', '', 'cd_5_flat', '', '', '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 'cd_6_angle', '', 'inherit', 'open', 'open', '', 'cd_6_angle', '', '', '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 'cd_6_flat', '', 'inherit', 'open', 'open', '', 'cd_6_flat', '', '', '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(277, 1, '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 'hoodie_1_front', '', 'inherit', 'open', 'open', '', 'hoodie_1_front-2', '', '', '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_1_front-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(278, 1, '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 'hoodie_4_front', '', 'inherit', 'open', 'open', '', 'hoodie_4_front-2', '', '', '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_4_front-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(279, 1, '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 'hoodie_4_back', '', 'inherit', 'open', 'open', '', 'hoodie_4_back-2', '', '', '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/hoodie_4_back-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 1, '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 'Poster_2_flat', '', 'inherit', 'open', 'open', '', 'poster_2_flat-2', '', '', '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_2_flat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 'Poster_3_flat', '', 'inherit', 'open', 'open', '', 'poster_3_flat-2', '', '', '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_3_flat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 1, '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 'Poster_4_flat', '', 'inherit', 'open', 'open', '', 'poster_4_flat-2', '', '', '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_4_flat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(283, 1, '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 'Poster_5_flat', '', 'inherit', 'open', 'open', '', 'poster_5_flat-2', '', '', '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/Poster_5_flat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(296, 1, '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 'cd_2_angle', '', 'inherit', 'open', 'open', '', 'cd_2_angle-2', '', '', '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2013/06/cd_2_angle-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(298, 1, '2018-05-03 09:03:03', '2018-05-03 09:03:03', '', 'office-notes-notepad-entrepreneur-38556(1)', '', 'inherit', 'open', 'closed', '', 'office-notes-notepad-entrepreneur-385561', '', '', '2018-05-03 09:03:03', '2018-05-03 09:03:03', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/office-notes-notepad-entrepreneur-385561.jpeg', 0, 'attachment', 'image/jpeg', 0),
(301, 1, '2018-05-03 09:09:27', '2018-05-03 09:09:27', '', 'pexels-photo-269077(1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2690771', '', '', '2018-05-03 09:09:27', '2018-05-03 09:09:27', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-2690771.jpeg', 0, 'attachment', 'image/jpeg', 0),
(303, 1, '2018-05-03 09:11:20', '2018-05-03 09:11:20', '', 'pexels-photo-669013(1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-6690131', '', '', '2018-05-03 09:11:20', '2018-05-03 09:11:20', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-6690131-e1526883640954.jpeg', 0, 'attachment', 'image/jpeg', 0),
(307, 1, '2018-05-03 11:07:58', '2018-05-03 11:07:58', 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/cropped-pexels-photo-6256441.jpeg', 'cropped-pexels-photo-6256441.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-pexels-photo-6256441-jpeg', '', '', '2018-05-03 11:07:58', '2018-05-03 11:07:58', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/cropped-pexels-photo-6256441.jpeg', 0, 'attachment', 'image/jpeg', 0),
(329, 1, '2018-05-18 08:35:14', '2018-05-18 08:35:14', '', 'pexels-photo-313691 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-313691-1', '', '', '2018-05-18 08:35:14', '2018-05-18 08:35:14', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-313691-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(333, 1, '2018-05-18 08:52:08', '2018-05-18 08:52:08', '', 'pexels-photo-601170 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-601170-1', '', '', '2018-05-18 08:52:08', '2018-05-18 08:52:08', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-601170-1.jpeg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(497, 1, '2018-05-25 08:54:07', '2018-05-25 08:54:07', 'Shifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. Their new technique, described in a study published on Thursday in the journal Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone.\r\n\r\nIt’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nAn absolutely amazing and exciting paper,” added David Reich, a genetics professor. Harvard who focuses on ancient DNA. Until recently, the only way to study the genes of ancient humans like the Neanderthals and their cousins, the Denisovans, was to recover DNA from fossil bones.\r\n\r\nBut they are scarce and hard to find, which has greatly limited research into where early humans lived and how widely they ranged. The only Denisovan bones and teeth that scientists have, for example, come from a single cave in Siberia.\r\n<h1>Heading 1: How Retail Brands Can Cash in on Content Marketing</h1>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h2>Heading 2: How Retail Brands Can Cash in on Content Marketing</h2>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h3>Heading 3: How Retail Brands Can Cash in on Content Marketing</h3>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<blockquote>“I\'ve missed more than 9000 shots in my career. I\'ve lost almost 300 games. 26 times I\'ve been trusted to take the game winning shot and missed. I\'ve failed over and over and over again in my life. And that is why I succeed.” - MICHAEL JORDAN, Chicago Bulls</blockquote>\r\n<h4>Heading 4: How Retail Brands Can Cash in on Content Marketing</h4>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h5>Heading 5: How Retail Brands Can Cash in on Content Marketing</h5>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h6>Heading 6: How Retail Brands Can Cash in on Content Marketing</h6>\r\n<img class=\"wp-image-101 size-medium alignright\" src=\"http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/pexels-photo-791846-1-300x227.jpeg\" alt=\"\" width=\"300\" height=\"227\" />Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\n“The goal of a designer is to listen, observe, understand, sympathize, empathize, synthesize, and glean insights that enable him or her to ‘make the invisible visible.”\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Name</th>\r\n<th>Position</th>\r\n<th>Office</th>\r\n<th>Cities</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Erica Romaguera</td>\r\n<td>Engineer</td>\r\n<td>Audi</td>\r\n<td>New York City</td>\r\n</tr>\r\n<tr>\r\n<td>Caleigh Jerde</td>\r\n<td>Lawyer</td>\r\n<td>Pizza Hut</td>\r\n<td>Los Angeles</td>\r\n</tr>\r\n<tr>\r\n<td>Lucas Schultz</td>\r\n<td>Librarian</td>\r\n<td>Burberry</td>\r\n<td>Beijing</td>\r\n</tr>\r\n<tr>\r\n<td>Carole Marvin</td>\r\n<td>Educator</td>\r\n<td>Starbucks</td>\r\n<td>Istanbul</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Հայերեն</h2>\r\nLorem Ipsum-ը տպագրության և տպագրական արդյունաբերության համար նախատեսված մոդելային տեքստ է: Սկսած 1500-ականներից` Lorem Ipsum-ը հանդիսացել է տպագրական արդյունաբերության ստանդարտ մոդելային տեքստ, ինչը մի անհայտ տպագրիչի կողմից տարբեր տառատեսակների օրինակների գիրք ստեղծելու ջանքերի արդյունք է: Այս տեքստը ոչ միայն կարողացել է գոյատևել հինգ դարաշրջան, այլև ներառվել է էլեկտրոնային տպագրության մեջ` մնալով էապես անփոփոխ: Այն հայտնի է դարձել 1960-ականներին Lorem Ipsum բովանդակող Letraset էջերի թողարկման արդյունքում, իսկ ավելի ուշ համակարգչային տպագրության այնպիսի ծրագրերի թողարկման հետևանքով, ինչպիսին է Aldus PageMaker-ը, որը ներառում է Lorem Ipsum-ի տարատեսակներ:\r\n<h2>Български</h2>\r\nLorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.\r\n<h2>Català</h2>\r\nLorem Ipsum és un text de farciment usat per la indústria de la tipografia i la impremta. Lorem Ipsum ha estat el text estàndard de la indústria des de l’any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogràfiques. No només ha sobreviscut cinc segles, sinó que ha fet el salt cap a la creació de tipus de lletra electrònics, romanent essencialment sense canvis. Es va popularitzar l’any 1960 amb el llançament de fulls Letraset que contenien passatges de Lorem Ipsum, i més recentment amb programari d’autoedició com Aldus Pagemaker que inclou versions de Lorem Ipsum.\r\n<h2>Hrvatski</h2>\r\nLorem Ipsum je jednostavno probni tekst koji se koristi u tiskarskoj i slovoslagarskoj industriji. Lorem Ipsum postoji kao industrijski standard još od 16-og stoljeća, kada je nepoznati tiskar uzeo tiskarsku galiju slova i posložio ih da bi napravio knjigu s uzorkom tiska. Taj je tekst ne samo preživio pet stoljeća, već se i vinuo u svijet elektronskog slovoslagarstva, ostajući u suštini nepromijenjen. Postao je popularan tijekom 1960-ih s pojavom Letraset listova s odlomcima Lorem Ipsum-a, a u skorije vrijeme sa software-om za stolno izdavaštvo kao što je Aldus PageMaker koji također sadrži varijante Lorem Ipsum-a.\r\n<h2>Česky</h2>\r\nLorem Ipsum je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.\r\n<h2>Româna</h2>\r\nLorem Ipsum este pur şi simplu o machetă pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei încă din secolul al XVI-lea, când un tipograf anonim a luat o planşetă de litere şi le-a amestecat pentru a crea o carte demonstrativă pentru literele respective. Nu doar că a supravieţuit timp de cinci secole, dar şi a facut saltul în tipografia electronică practic neschimbată. A fost popularizată în anii ’60 odată cu ieşirea colilor Letraset care conţineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.\r\n<h2>Српски</h2>\r\nLorem Ipsum је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\r\n\r\n&nbsp;', 'Full Width', '', 'publish', 'closed', 'closed', '', 'full-width', '', '', '2018-05-25 08:54:07', '2018-05-25 08:54:07', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=497', 0, 'page', '', 0),
(499, 1, '2018-05-25 08:55:36', '2018-05-25 08:55:36', ' ', '', '', 'publish', 'closed', 'closed', '', '499', '', '', '2018-05-25 08:55:36', '2018-05-25 08:55:36', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=499', 11, 'nav_menu_item', '', 0),
(500, 1, '2018-05-25 08:55:36', '2018-05-25 08:55:36', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2018-05-25 08:55:36', '2018-05-25 08:55:36', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=500', 10, 'nav_menu_item', '', 0),
(502, 1, '2018-05-25 09:04:35', '2018-05-25 09:04:35', 'The style guide provides you with a blueprint of Paperback’s default post and page styles. The style guide is also a great reference for suggested typographic treatment and styles for your content.\r\n\r\n<hr />\r\n\r\n<h4>Right Aligned Image</h4>\r\n<img class=\"size-medium wp-image-68 alignright\" src=\"http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/skyscraper-2756497_1920-1-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />Images may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram. They may be captured by optical devices – such as cameras, mirrors, lenses, telescopes, microscopes, etc. and natural objects and phenomena, such as the human eye or water surfaces. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting.\r\n\r\n<hr />\r\n\r\n<h4>Left Aligned Image</h4>\r\n<img class=\"size-medium wp-image-85 alignleft\" src=\"http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2018/05/art-3416661_1920-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. In this wider sense, images can also be rendered manually, such as by drawing, painting, carving, rendered automatically by printing or computer graphics technology, or developed by a combination of methods. Images may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram.\r\n\r\nA volatile image is one that exists only for a short period of time. This may be a reflection of an object by a mirror, a projection of a camera obscura, or a scene displayed on a cathode ray tube. A fixed image, also called a hard copy.\r\n\r\n<hr />\r\n\r\n<div class=\"tiled-gallery type-rectangular\">\r\n<div class=\"gallery-row\">\r\n<div class=\"gallery-group images-1\">\r\n<div id=\"gallery-1\" class=\"gallery galleryid-265 gallery-columns-2 gallery-size-full\">\r\n<figure class=\"gallery-item\">\r\n<div class=\"gallery-icon landscape\"></div></figure>\r\n</div>\r\n</div>\r\n<div class=\"gallery-group images-3\"></div>\r\n</div>\r\n</div>\r\n<h1>Heading One</h1>\r\n<h2>Heading Two</h2>\r\n<h3>Heading Three</h3>\r\n<h4>Heading Four</h4>\r\n<h5>Heading Five</h5>\r\n<h6>Heading Six</h6>\r\n<h6></h6>\r\n\r\n<hr />\r\n\r\n<h3>Blockquote</h3>\r\n<blockquote>The greatest gift of life is friendship, and I have received it.</blockquote>\r\n<h3 id=\"pull-quotes\">Typography Styles</h3>\r\n<span id=\"dropcap\" class=\"dropcap\">A</span>drop cap is a decorative element typically used in documents at the start of a section or chapter. It’s a large capital letter at the beginning or a paragraph or text block that has the depth of two or more lines of normal text. You can easily add a dropcap to any paragraph by adding the class <strong>dropcap</strong> as seen below:\r\n<pre>&lt;span class=\"dropcap\"&gt;T&lt;/span&gt;his is how you add a dropcap.</pre>\r\n\r\n<hr />\r\n\r\n<h3>Table Styles</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>BEATLE</th>\r\n<th>INSTRUMENT</th>\r\n<th>SONG</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr class=\"odd\">\r\n<td>John Lennon</td>\r\n<td>Guitar</td>\r\n<td>A Day In the Life</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>George Harrison</td>\r\n<td>Guitar</td>\r\n<td>Old Brown Shoe</td>\r\n</tr>\r\n<tr class=\"odd\">\r\n<td>Paul McCartney</td>\r\n<td>Bass</td>\r\n<td>Helter Skelter</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>Ringo Starr</td>\r\n<td>Drums</td>\r\n<td>Don’t Pass Me By</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<hr />\r\n\r\n<h3>Code Formatting</h3>\r\n<pre>pre {\r\n    position: relative;\r\n    background: #f7f7f7;\r\n    font-family: \"Courier 10 Pitch\", Courier, monospace;\r\n    font-size: 15px;\r\n    font-size: 1.5rem;\r\n    line-height: 1.6;\r\n    margin-bottom: 1.6em;\r\n    padding: 1.6em;\r\n    overflow: auto;\r\n    max-width: 100%;\r\n    tab-size: 4;\r\n}</pre>\r\n\r\n<hr />\r\n\r\n<h3>Mixed List Items</h3>\r\n<ul>\r\n 	<li>Unordered list item one</li>\r\n 	<li>Unordered list item two\r\n<ol>\r\n 	<li>Ordered list item one</li>\r\n 	<li>Ordered list item two\r\n<ul>\r\n 	<li>Unordered list item one</li>\r\n 	<li>Unordered list item two\r\n<ol>\r\n 	<li>Ordered list item one</li>\r\n 	<li>Ordered list item two</li>\r\n 	<li>Ordered list item three</li>\r\n</ol>\r\n</li>\r\n 	<li>Unordered list item three</li>\r\n</ul>\r\n</li>\r\n 	<li>Ordered list item three</li>\r\n</ol>\r\n</li>\r\n 	<li>Unordered list item three</li>\r\n</ul>', 'Style Guide', '', 'publish', 'closed', 'closed', '', 'style-guide', '', '', '2018-05-25 09:04:35', '2018-05-25 09:04:35', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=502', 0, 'page', '', 0),
(504, 1, '2018-05-25 09:05:22', '2018-05-25 09:05:22', ' ', '', '', 'publish', 'closed', 'closed', '', '504', '', '', '2018-05-25 09:05:22', '2018-05-25 09:05:22', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=504', 5, 'nav_menu_item', '', 0),
(506, 1, '2018-05-25 09:08:52', '2018-05-25 09:08:52', '', 'Post Page', '', 'publish', 'closed', 'closed', '', 'post-page', '', '', '2018-05-25 09:08:52', '2018-05-25 09:08:52', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=506', 12, 'nav_menu_item', '', 0),
(507, 1, '2018-05-25 09:10:00', '2018-05-25 09:10:00', '', '404 error page', '', 'publish', 'closed', 'closed', '', '404-error-page', '', '', '2018-05-25 09:10:00', '2018-05-25 09:10:00', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=507', 13, 'nav_menu_item', '', 0),
(508, 1, '2018-05-25 09:12:00', '2018-05-25 09:12:00', '', 'Search Page', '', 'publish', 'closed', 'closed', '', 'search-page', '', '', '2018-05-25 09:12:00', '2018-05-25 09:12:00', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=508', 14, 'nav_menu_item', '', 0),
(511, 1, '2018-06-06 09:28:32', '2018-06-06 09:28:32', '', 'Portfolios', '', 'publish', 'closed', 'closed', '', 'portfolios', '', '', '2018-06-06 09:28:32', '2018-06-06 09:28:32', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=511', 0, 'page', '', 0),
(514, 1, '2018-06-06 09:28:50', '2018-06-06 09:28:50', ' ', '', '', 'publish', 'closed', 'closed', '', '514', '', '', '2018-06-06 09:28:50', '2018-06-06 09:28:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/2018/06/06/514/', 4, 'nav_menu_item', '', 0),
(536, 1, '2018-06-14 11:05:52', '2018-06-14 11:05:52', '', 'Blog Masonry', '', 'publish', 'closed', 'closed', '', 'blog-masonry', '', '', '2018-06-14 11:05:52', '2018-06-14 11:05:52', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=536', 0, 'page', '', 0),
(537, 1, '2018-06-14 11:05:59', '2018-06-14 11:05:59', '', 'Blog Normal', '', 'publish', 'closed', 'closed', '', 'blog-normal', '', '', '2018-06-14 11:05:59', '2018-06-14 11:05:59', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=537', 0, 'page', '', 0),
(538, 1, '2018-06-14 11:06:11', '2018-06-14 11:06:11', '', 'Blog First Large', '', 'publish', 'closed', 'closed', '', 'blog-first-large', '', '', '2018-06-14 11:06:11', '2018-06-14 11:06:11', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=538', 0, 'page', '', 0),
(543, 1, '2018-06-14 11:10:49', '2018-06-14 11:10:49', '', 'Blog Layout', '', 'publish', 'closed', 'closed', '', 'blog-layout', '', '', '2018-06-14 11:10:49', '2018-06-14 11:10:49', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/2018/06/14/blog-layout/', 6, 'nav_menu_item', '', 0),
(544, 1, '2018-06-14 11:10:50', '2018-06-14 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '544', '', '', '2018-06-14 11:10:50', '2018-06-14 11:10:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/2018/06/14/544/', 7, 'nav_menu_item', '', 0),
(545, 1, '2018-06-14 11:10:50', '2018-06-14 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '545', '', '', '2018-06-14 11:10:50', '2018-06-14 11:10:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/2018/06/14/545/', 8, 'nav_menu_item', '', 0),
(546, 1, '2018-06-14 11:10:50', '2018-06-14 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '546', '', '', '2018-06-14 11:10:50', '2018-06-14 11:10:50', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/2018/06/14/546/', 9, 'nav_menu_item', '', 0),
(548, 1, '2018-06-14 11:18:24', '2018-06-14 11:18:24', 'body.page-template-blog-layout:not(.home) header.entry-header {\n    text-align: left;\n}\n\nbody.page-template-blog-layout:not(.home) header.entry-header .entry-title{\n	font-size:1.5em;\n	margin-bottom:0px;\n}\n', 'perfect-portfolio-child', '', 'publish', 'closed', 'closed', '', 'perfect-portfolio-child', '', '', '2018-06-14 11:18:24', '2018-06-14 11:18:24', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/2018/06/14/perfect-portfolio-child/', 0, 'custom_css', '', 0),
(552, 1, '2018-06-14 11:40:23', '2018-06-14 11:40:23', ' ', '', '', 'publish', 'closed', 'closed', '', '552', '', '', '2018-06-14 11:40:23', '2018-06-14 11:40:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=552', 17, 'nav_menu_item', '', 0),
(553, 1, '2018-06-14 11:40:23', '2018-06-14 11:40:23', ' ', '', '', 'publish', 'closed', 'closed', '', '553', '', '', '2018-06-14 11:40:23', '2018-06-14 11:40:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=553', 16, 'nav_menu_item', '', 0),
(554, 1, '2018-06-14 11:40:23', '2018-06-14 11:40:23', ' ', '', '', 'publish', 'closed', 'closed', '', '554', '', '', '2018-06-14 11:40:23', '2018-06-14 11:40:23', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?p=554', 15, 'nav_menu_item', '', 0),
(563, 1, '2019-04-18 07:22:18', '2019-04-18 07:22:18', '', 'woocommerce-placeholder', '', 'inherit', 'closed', 'closed', '', 'woocommerce-placeholder', '', '', '2019-04-18 07:22:18', '2019-04-18 07:22:18', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/wp-content/uploads/sites/56/2019/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(564, 1, '2018-05-23 05:59:19', '2018-05-23 05:59:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-23 05:59:19', '2018-05-23 05:59:19', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=5', 0, 'page', '', 0),
(565, 1, '2018-05-23 05:59:58', '2018-05-23 05:59:58', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-05-23 05:59:58', '2018-05-23 05:59:58', '', 0, 'http://rarathemesdemo.com/perfect-portfolio/?page_id=9', 0, 'page', '', 0),
(567, 1, '2021-07-30 14:55:26', '2021-07-30 14:55:26', '', 'foto', '', 'inherit', 'open', 'closed', '', 'sampel2', '', '', '2021-07-30 14:55:46', '2021-07-30 14:55:46', '', 0, 'http://localhost/wordpress/wordpress/wp-content/uploads/2021/07/sampel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(571, 1, '2021-07-30 15:12:26', '2021-07-30 15:12:26', '', 'sampel2', '', 'inherit', 'open', 'closed', '', 'sampel2-2', '', '', '2021-07-30 15:12:26', '2021-07-30 15:12:26', '', 0, 'http://localhost/wordpress/wordpress/wp-content/uploads/2021/07/sampel2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(572, 1, '2021-07-30 15:13:47', '2021-07-30 15:13:47', '', 'profil', '', 'inherit', 'open', 'closed', '', 'profil', '', '', '2021-07-30 15:13:47', '2021-07-30 15:13:47', '', 0, 'http://localhost/wordpress/wordpress/wp-content/uploads/2021/07/profil.jpg', 0, 'attachment', 'image/jpeg', 0),
(574, 1, '2021-07-30 15:40:42', '2021-07-30 15:40:42', '', 'Tedi Nizar Afrida', '', 'publish', 'closed', 'closed', '', 'tedi-nizar-afrida', '', '', '2021-07-30 15:44:59', '2021-07-30 15:44:59', '', 0, 'http://localhost/wordpress/wordpress/?post_type=whatsapp-accounts&#038;p=574', 0, 'whatsapp-accounts', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'Uncategorized', 'uncategorized', 0),
(3, 'Brand Strategy', 'brand-strategy', 0),
(4, 'Digital Arts', 'digital-arts', 0),
(5, 'Photography', 'photography', 0),
(6, 'Web Design', 'web-design', 0),
(7, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(30, 6, 0),
(32, 3, 0),
(34, 5, 0),
(34, 6, 0),
(37, 4, 0),
(40, 4, 0),
(42, 5, 0),
(42, 6, 0),
(44, 3, 0),
(47, 5, 0),
(49, 4, 0),
(49, 5, 0),
(61, 2, 0),
(64, 2, 0),
(67, 2, 0),
(70, 2, 0),
(73, 2, 0),
(77, 2, 0),
(82, 2, 0),
(84, 2, 0),
(87, 2, 0),
(90, 2, 0),
(93, 2, 0),
(96, 2, 0),
(100, 2, 0),
(123, 7, 0),
(124, 7, 0),
(126, 7, 0),
(134, 7, 0),
(499, 7, 0),
(500, 7, 0),
(504, 7, 0),
(506, 7, 0),
(507, 7, 0),
(508, 7, 0),
(514, 7, 0),
(543, 7, 0),
(544, 7, 0),
(545, 7, 0),
(546, 7, 0),
(552, 7, 0),
(553, 7, 0),
(554, 7, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 13),
(3, 3, 'rara_portfolio_categories', '', 0, 2),
(4, 4, 'rara_portfolio_categories', '', 0, 3),
(5, 5, 'rara_portfolio_categories', '', 0, 4),
(6, 6, 'rara_portfolio_categories', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5c31422794690780334c750d076ca4eadb20c62448ee8129c0b910998853924c\";a:4:{s:10:\"expiration\";i:1632539416;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1632366616;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '575'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1627657007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMfXnmKqhVrn/BatnSXGFCT1IoJBCW/', 'admin', 'teddinizzar18@gmail.com', 'http://localhost/wordpress/wordpress', '2021-07-29 07:27:23', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeks untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeks untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeks untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeks untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeks untuk tabel `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeks untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeks untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
