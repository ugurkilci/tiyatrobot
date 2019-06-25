-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 26 Haz 2019, 00:16:55
-- Sunucu sürümü: 10.0.38-MariaDB-cll-lve
-- PHP Sürümü: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `u8634256_kxyz`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tiyatrobot`
--

CREATE TABLE `tiyatrobot` (
  `t_id` int(11) NOT NULL,
  `t_tip` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `t_yazi` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tiyatrobot`
--

INSERT INTO `tiyatrobot` (`t_id`, `t_tip`, `t_yazi`) VALUES
(4, 'karakter', 'çizmeli kedi'),
(5, 'olay', 'balık avında'),
(8, 'karakter', 'travesti'),
(9, 'karakter', 'palyaço'),
(10, 'karakter', 'kayınpeder'),
(11, 'karakter', 'sihirbaz'),
(12, 'karakter', 'sosyal medya bağımlısı biri'),
(13, 'karakter', 'uyuyan güzel/yakışıklı'),
(14, 'olay', 'maratonda ikinciyi sollamış'),
(15, 'karakter', 'pazarda sütyen satan biri'),
(16, 'karakter', 'pazarda sütyen satan biri'),
(17, 'olay', 'akşam yemeği'),
(18, 'olay', 'friendzone '),
(19, 'olay', 'aşk üçgeni'),
(20, 'karakter', 'öğretmen'),
(21, 'karakter', 'öğrenci'),
(22, 'olay', 'bekarlığa veda partisi'),
(23, 'olay', 'hırsız girer'),
(24, 'olay', 'asker uğurlaması'),
(25, 'olay', 'matematik dersi'),
(26, 'olay', 'bayram ziyaret'),
(27, 'olay', 'düğün'),
(28, 'olay', 'sünnet'),
(29, 'olay', 'kına gecesi'),
(30, 'olay', 'düğünde kız bakma'),
(31, 'olay', 'altın günğ'),
(32, 'olay', 'ilk randevu'),
(33, 'olay', 'seyyar satıcı'),
(34, 'karakter', 'zengin pezevenk'),
(35, 'karakter', 'terli dönerci'),
(36, 'olay', 'kız isteme'),
(37, 'olay', 'baldızın kapı tutması'),
(38, 'olay', 'gelin arabasının önünü kesen çocuklar'),
(39, 'karakter', 'kör topal sağır'),
(40, 'karakter', 'dilsiz tercüman,'),
(41, 'karakter', 'otobüs şöförü'),
(42, 'karakter', 'ejderha terbiyecisi'),
(43, 'karakter', 'ağaçkakan'),
(44, 'olay', 'sokak röportajı'),
(45, 'karakter', 'işportacı'),
(46, 'karakter', 'uzaylı'),
(47, 'olay', 'sıla gecesi'),
(48, 'karakter', 'japon turist'),
(49, 'olay', 'disko'),
(50, 'olay', 'tiyatro içinde tiyatro'),
(51, 'karakter', 'dedikodu yapanlar'),
(52, 'karakter', 'kapıcı'),
(53, 'karakter', 'çöpçü'),
(54, 'karakter', 'kabadayı'),
(55, 'olay', 'banka'),
(56, 'karakter', 'bankada kuyruk'),
(57, 'karakter', 'kızıldereli'),
(58, 'karakter', 'kovboy'),
(59, 'olay', 'gobi çölü'),
(60, 'olay', 'çöl'),
(61, 'olay', 'bilardo salonu'),
(62, 'karakter', 'striptizci'),
(63, 'karakter', 'ateşli itfaiyeci'),
(64, 'karakter', 'tavşan toosbapa'),
(65, 'karakter', 'dedikoducu teyzeler'),
(66, 'olay', 'dans yarışması'),
(67, 'olay', 'bale'),
(68, 'karakter', 'pinokyo'),
(69, 'olay', 'tango kursu'),
(70, 'olay', 'filmden bir kare'),
(71, 'olay', 've elektrikler kesilir'),
(72, 'olay', 'sınavda kopya'),
(73, 'olay', 'ayin yaparlar'),
(74, 'karakter', 'dış ses'),
(75, 'olay', 'fırtınalı bir gün'),
(76, 'karakter', 'kurbağa prens'),
(77, 'karakter', 'kurbağa prens'),
(78, 'karakter', 'gargamel ve şirinler'),
(79, 'karakter', 'kibritçi kız'),
(80, 'karakter', 'gülmeyen kralı güldür'),
(81, 'karakter', 'sakar profösör'),
(82, 'karakter', 'deniz kızı'),
(83, 'olay', 'trafik kazası'),
(84, 'karakter', 'kutu kavgası yapan kediler'),
(85, 'karakter', 'hayvanat bahçesi'),
(86, 'olay', 'otobüs terminali'),
(87, 'olay', 'evlenme teklifi'),
(88, 'karakter', 'depresyonda biri'),
(89, 'karakter', 'sürekli ruh hali değişen biri'),
(90, 'karakter', 'reglili'),
(91, 'karakter', 'panik atak'),
(92, 'karakter', 'yeme bozukluluğu'),
(93, 'karakter', 'boğulan biri'),
(94, 'karakter', 'uyku sersemi'),
(95, 'karakter', 'uyurgezer'),
(96, 'karakter', 'gözü seyiren adam iş yapıyor sanılması'),
(97, 'karakter', 'halüsinasyon görme'),
(98, 'karakter', 'şizofren'),
(99, 'karakter', 'köpek balığı, balina'),
(100, 'olay', 'tuvalette sıra gelmeyen adam'),
(101, 'karakter', 'tikli biri'),
(102, 'karakter', 'gey spiker'),
(103, 'karakter', 'kekeme'),
(104, 'karakter', '2 kişilikli'),
(105, 'karakter', 'üroloji doktoru'),
(106, 'karakter', 'eczacı'),
(107, 'karakter', 'muhammed ali, boks hocası,arkadaşı ali,'),
(108, 'karakter', 'ok'),
(109, 'karakter', 'hmmm'),
(110, 'karakter', 'kedi'),
(111, 'karakter', 'garip osman'),
(112, 'karakter', 'bb'),
(113, 'karakter', 'bb'),
(114, 'olay', ' güneşe bakar'),
(115, 'karakter', 'ibne'),
(116, 'karakter', 'İbne Ayan'),
(117, 'karakter', 'İbne Ayan'),
(118, 'karakter', 'İbne Ayan'),
(119, 'karakter', 'İbne Ayan'),
(120, 'olay', 'Evde sex partsi yapar'),
(121, 'karakter', 'Erkeksi lezbiyen'),
(122, 'karakter', 'yarrak'),
(123, 'karakter', 'Aldatan Kadın'),
(124, 'karakter', 'kedi'),
(125, 'karakter', 'hokkabaz'),
(126, 'karakter', 'korkak'),
(127, 'karakter', 'mor popolu şempanze'),
(128, 'karakter', 'travesti'),
(129, 'karakter', 'Uzun yaraklı japon'),
(130, 'olay', 'adwadwad'),
(131, 'olay', 'awdadawd');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tiyatrobot`
--
ALTER TABLE `tiyatrobot`
  ADD PRIMARY KEY (`t_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tiyatrobot`
--
ALTER TABLE `tiyatrobot`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
