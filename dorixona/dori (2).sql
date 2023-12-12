-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 06:11 PM
-- Server version: 5.6.37
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dorixona`
--

-- --------------------------------------------------------

--
-- Table structure for table `dori`
--

CREATE TABLE `dori` (
  `id` int(11) NOT NULL,
  `nomi` varchar(250) NOT NULL,
  `tavsif` text NOT NULL,
  `Tarkibi` text NOT NULL,
  `mamlakat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dori`
--

INSERT INTO `dori` (`id`, `nomi`, `tavsif`, `Tarkibi`, `mamlakat`) VALUES
(1, 'Gripxot', 'Og\'riq qoldiruvchi, antipiretik, antigistamin va yallig\'lanishga qarshi ta\'sirga ega va shamollash, burun oqishi, gripp va yuqori nafas yo\'llarining o\'ziga xos bo\'lmagan infektsiyalarini simptomatik davolash uchun ishlatiladi.', 'har bir paketda 500 mg paratsetamol, 2 mg xlorfeniramin maleat, 100 mg oksalamin sitrat, 10 mg fenilefrin gidroxlorid mavjud', 'Turkiya'),
(2, 'Parasetomol', 'og\'riq qoldiruvchi va antipiretik ta\'sirga ega. Prostaglandinlar sintezini inhibe qilish orqali periferik retseptorlarning og\'riqqa sezgirligini pasaytiradi.', 'kartoshka kraxmal, kaltsiy stearati yoki magniy stearati yoki stearin kislotasi.\r\n\r\n', 'India'),
(3, 'Kyupen gel', 'Shikastlanishdan keyingi va operatsiyadan keyingi yallig\'lanish hodisalarida diklofenak og\'riqni tezda engillashtiradi operatsiyadan keyingi yaraning yallig\'lanish shishishi va shishishini kamaytiradi', 'faol moddalar: zig\'ir moyi (tarkibida a-zig\'ir kislotasi ustunlik qiladi) 3,00% i/v, dietilamin diklofenak 1,16% i/v (natriy diklofenak tarkibiga 1,00', 'India'),
(4, 'Kreon', 'Ovqat hazm qilish fermenti', 'Faol modda: pankreatin-150 mg (bu 10000 ibrga to\'g\'ri keladi.F. lipazlar, 8000 y.F. amilaza, 600 yahudiy.F. proteazlar.);\r\n', 'Fransiya'),
(5, 'Askorutin tabletka', 'Kombinatsiyalangan dori. Rutin askorbin kislotasi bilan birgalikda oksidlanish-qaytarilish jarayonlarida ishtirok etadi, antioksidant xususiyatlarga ega, oksidlanishni oldini oladi va askorbin kislotaning to\'qimalarda saqlanishiga yordam beradi.', 'askorbin kislotasi', 'uzbekistan'),
(6, 'Kalsiy D3', 'Kaltsiy va fosfor almashinuvini tartibga soluvchi kombinatsiyalangan dori. Rezorbsiyani kamaytiradi (rezorbsiyani) va suyak zichligini oshiradi, tanadagi kaltsiy va D3 vitamini etishmasligini to\'ldiradi, tishlarning minerallashishi uchun zarurdir. Kaltsiy asab o\'tkazuvchanligini, mushaklarning qisqarishini tartibga solishda ishtirok etadi va qon ivish tizimining tarkibiy qismidir. D3 vitamini (xolekalsiferol) ichakdagi kaltsiyning so\'rilishini oshiradi. Kaltsiy va D3 vitaminidan foydalanish suyak rezorbsiyasini kuchaytiruvchi paratiroid gormoni ishlab chiqarishni ko\'payishiga to\'sqinlik qiladi.', 'Kaltsiy karbonat 1250 mg, kaltsiy bo\'yicha 500 mg xolekalsiferol granulyati 100000 IU/g 2,2 mg, kolekalsiferol bo\'yicha 5 mkg (200 IU) (kolekalsiferol, D, l-alfa-tokoferol, o\'rta zanjirli triglitseridlar, saxaroza, akatsiya saqich, makkajo\'xori kraxmal, kaltsiy fosfat, suv) yordamchi komponentlar: mannitol, laktitol, dekstratlar, natriy saxarinat (natriy saxarin), magniy stearati, kaltsiy karbonatning \"olma\" aromati 1250 mg, kaltsiyga 500 mg; xolekalsiferol granulyati 100000 IU / g 4,4 mg, kolekalsiferol uchun 10 mkg (400 IU) (kolekalsiferol, D, l-alfa -tokoferol, o\'rta zanjirli triglitseridlar, saxaroza, akatsiya saqichi, makkajo\'xori kraxmal, kaltsiy fosfat, suv) yordamchi komponentlar: mannitol, laktitol, dekstratlar, natriy saxarinat (natriy saxarin), magniy stearat, apelsin lazzati.', 'uzbekistan'),
(7, 'Gemotogen shokolod', 'Gematogen-temirga boy profilaktika. Shuning uchun uning asosiy maqsadi inson tanasida temir tanqisligini to\'ldirishdir. Bundan tashqari, u oqsillar, yog\'lar, uglevodlar va minerallarning manbai hisoblanadi. ', 'Shakarlangan shakar, shakarlangan quyultirilgan sut, karamel kraxmalli Pekmez, qora oziq-ovqat albumin, \"CustoMix BEV 5\" vitamin premiksi, vanillin aromati', 'Belorussiya'),
(8, 'Akvadetrim', 'A va D3 vitaminlari kombinatsiyasi tufayli D3 vitaminining ichakda so\'rilishi tezlashadi. A va D3 vitaminlari sinergik ta\'sir ko\'rsatadi-ularning ta\'sirini kuchaytiradi. A vitamini D3 vitaminining so\'rilishini osonlashtiradi va uning ta\'sirini tezlashtiradi. A vitaminining etishmasligi D3 vitaminining haddan tashqari dozasi belgilariga olib kelishi mumkin. A va D3 vitaminlarining kombinatsiyasi bir yoki boshqa vitaminning haddan tashqari dozasi bilan bog\'liq metabolik kasalliklar ehtimolini yanada kamaytiradi. D3 vitamini a vitamini tufayli lizosomal membranalarning shikastlanishidan himoya qiladi, bu lizosomal membranalarning shikastlanishi yoki o\'tkazuvchanligi o\'zgarganidan keyin paydo bo\'ladigan gidrolitik fermentlarning chiqarilishini oldini oladi. ', '1 ml eritma (taxminan 34 tomchi) o\'z ichiga oladi: faol moddalar: retinol (a vitamini) 20 000 IU, xolekalsiferol (D3 vitamini) 10 000 IU, yordamchi moddalar: polisorbat 80 (Tween 80), benzil spirti (0,015 g), glitserin, propilen glikol (0,1 g), limon kislotasi, gidrofosfat natriy, anis aromati, tozalangan suv.', 'Polsha'),
(9, 'Alfavit', 'Alfavitda vitaminlar va minerallarning kunlik dozasi uchta tabletkaga bo\'linadi, ularning har birida faqat mos keladigan komponentlar mavjud. Tabletkalar orasidagi tavsiya etilgan interval 4-6 soatni tashkil qiladi. Alohida qabul qilish bilan barcha vitaminlar va minerallar to\'liq so\'riladi.', '1 to\'plam turli xil rangdagi 3 tabletkadan iborat:\r\n1-tabletka (olma ta\'mi): C 20 mg, B1 0.9 mg, Beta-karotin 0.9 mg, B9 (foliy k-ta) 80 mkg, temir 5 mg, mis 0.55 mg;\r\n2-tabletka (apelsin ta\'mi): C 20 mg, Beta-karotin 0,9 mg, E 5 mg, nikotinamid (PP) 7 mg, B2 0,8 mg, B6 1 mg, magniy 25 mg, marganets 0,5 mg, selen 20 mkg, rux 5 mg, yod 30 mkg ;\r\n3-tabletka (qulupnay ta\'mi): B5(kaltsiy pantotenat) 2,5 mg, B9 (foliy k-ta) 80 mkg, B12 1 mkg, D3 2,5 mkg (100 IU), kaltsiy 90 mg.', 'Rossiya'),
(10, 'Elevit', 'Magniy mushak va suyak to\'qimalarining shakllanishida ishtirok etadi, oqsil sintezida ishtirok etadi.\r\n\r\nB vitaminlari folatlarning himoya ta\'sirini kuchaytiradi.', 'kaltsiy karbonat, tashuvchisi tsellyuloza mikrokristalli, magniy oksidi, askorbin kislotasi, temir fumarat, qalinlashtiruvchi gidroksipropil metil tsellyuloza, rux sitrat, stabilizator kroskarmelloza', 'Fransiya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dori`
--
ALTER TABLE `dori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dori`
--
ALTER TABLE `dori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
