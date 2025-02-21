-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: mysql.omega:3306
-- Létrehozás ideje: 2025. Feb 11. 10:20
-- Kiszolgáló verziója: 5.7.42-log
-- PHP verzió: 7.2.34-54+0~20241224.101+debian12~1.gbpb6068e

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `autoberlo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `marka` varchar(255) NOT NULL,
  `tipus` text NOT NULL,
  `leiras` text NOT NULL,
  `kep` varchar(255) NOT NULL,
  `kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `cars`
--

INSERT INTO `cars` (`id`, `marka`, `tipus`, `leiras`, `kep`, `kategoria`) VALUES
(1, 'BMW', 'E46 3 Series', 'Sportos és megbízható.', 'https://bringatrailer.com/wp-content/uploads/2021/01/1610963066c14862cBMW-E46-3Series-For-Sale-Results-Value-Guide-Bring-a-Trailer.jpg', 1),
(2, 'Audi', 'A4 B7', 'Kényelmes és elegáns.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im01049-1-audi-a4.jpg', 1),
(3, 'Mercedes', 'W211 E-Class', 'Prémium minőségű szedán.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Mercedes_W211_front_20080127.jpg/1200px-Mercedes_W211_front_20080127.jpg', 1),
(4, 'Honda', 'Civic 2005', 'Megbízható és alacsony fogyasztás.', 'https://bringatrailer.com/wp-content/uploads/2020/01/2002_honda_civic_1580855780b34c9898IMG_5370.jpg?fit=940%2C627', 1),
(5, 'Toyota', 'Yaris 2008', 'Kis méret, nagy hatékonyság.', 'https://images.caradisiac.com/images/4/1/1/5/4115/S1-La-Toyota-Yaris-elue-voiture-verte-2008-par-l-ETA-2914.jpg', 1),
(6, 'Ford', 'Fiesta 2009', 'Kompakt és energiatakarékos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs7r04Yn2_5s1Vjie2Y-cIFQbpvWIADow8NA&s', 1),
(7, 'Nissan', 'Micra 2007', 'Kis városi autó.', 'https://www.cataloge.eu/media/nissan/6/en/thumbs-500/nissan-micra-k12c-facelift-2007.jpg', 1),
(8, 'Mazda', '6 2005', 'Stílusos és kényelmes.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f113/mazda-6-i-hatchback-typ-gg-gy-gg1-facelift-2005.jpg', 1),
(9, 'Volkswagen', 'Passat B6', 'Nagy autó, kényelmes utazás.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f92/volkswagen-passat-variant-b6.jpg', 1),
(10, 'Peugeot', '308 2008', 'Kiváló minőség és gazdaságos.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im01807-1-peugeot-308.jpg', 1),
(11, 'Volkswagen', 'Golf 7', 'Praktikus és gazdaságos.', 'https://upload.wikimedia.org/wikipedia/commons/5/59/2013_Volkswagen_Golf_SE_BlueMotion_Technology_1.4_Front.jpg', 2),
(12, 'Ford', 'Focus MK3', 'Jó fogyasztás és modern dizájn.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f47/ford-focus-iii-hatchback.jpg', 2),
(13, 'Toyota', 'Corolla 2015', 'Megbízható és alacsony fenntartási költség.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkMnROObRnPvw3Q4Him8bo_dX3QovQngLAGw&s', 2),
(14, 'Nissan', 'Qashqai 2017', 'Crossover a családoknak.', 'https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/az8x8535_0.jpg', 2),
(15, 'Mazda', 'CX-5 2018', 'Kiváló vezetési élmény.', 'https://i.gaw.to/content/photos/31/59/315914_2018_Mazda_CX-5.jpg', 2),
(16, 'BMW', 'F30 3 Series', 'Sportos és dinamikus.', 'https://cdn.bmwblog.com/wp-content/uploads/2017/04/BMW-3-Series-Seadan-F30-LCI-5431_24-750x500.jpg', 2),
(17, 'Audi', 'A3 8V', 'Stílusos és gazdaságos.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f129/audi-a3-8v.jpg', 2),
(18, 'Mercedes', 'A-Class 2014', 'Fiatalos és technológiai csúcs.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Mercedes-AMG_A_45_4MATIC_%28W_176%2C_Facelift%29_%E2%80%93_Frontansicht%2C_7._Oktober_2018%2C_D%C3%BCsseldorf.jpg/1200px-Mercedes-AMG_A_45_4MATIC_%28W_176%2C_Facelift%29_%E2%80%93_Frontansicht%2C_7._Oktober_2018%2C_D%C3%BCsseldorf.jpg', 2),
(20, 'Skoda', 'Octavia 2016', 'Kiváló ár-érték arány.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im02863-1-skoda-octavia.jpg', 2),
(21, 'Tesla', 'Model 3', 'Elektromos autó prémium technológiával.', 'https://www.shop4tesla.com/cdn/shop/articles/tesla-model-3-uber-230000-km-und-tausende-euro-gespart-956682.jpg?v=1728598029', 3),
(22, 'BMW', 'G20 3 Series', 'Modern és dinamikus szedán.', 'https://images.pistonheads.com/nimg/45693/a10.jpg', 3),
(23, 'Mercedes', 'W223 S-Class', 'A luxus csúcsa.', 'https://en.mercedesassistance.com/wp-content/uploads/2024/08/image-30.png', 3),
(24, 'Hyundai', 'Ioniq 5', 'Innovatív elektromos autó.', 'https://upload.wikimedia.org/wikipedia/commons/8/85/Hyundai_Ioniq_5_AWD_Techniq-Paket_%E2%80%93_f_31122024.jpg', 3),
(25, 'Ford', 'Mustang Mach-E', 'Elektromos SUV legendás névvel.', 'https://d2v1gjawtegg5z.cloudfront.net/posts/preview_images/000/015/446/original/2024_Ford_Mustang_Mach-E_Bronze_02.jpeg?1724260399', 3),
(26, 'Audi', 'Q4 e-tron', 'Elektromos crossover.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im06285-1-audi-q4-etron-sportback.jpg', 3),
(27, 'Volkswagen', 'ID.4', 'Elektrikusan hajtott SUV.', 'https://kep.cdn.index.hu/1/0/3464/34649/346496/34649641_2652549_3aae361350ee79c14126a8fc198ddfaa_wm.jpg', 3),
(28, 'BMW', 'i4', 'Elektrikus prémium szedán.', 'https://ev-database.org/img/auto/BMW_i4_2024/BMW_i4_2024-01.jpg', 3),
(29, 'Mercedes', 'EQC 400', 'Elektromos luxus SUV.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Mercedes-Benz_EQC_400_4MATIC_AMG_Line_%28N_293%29_%E2%80%93_f_02042021.jpg/2560px-Mercedes-Benz_EQC_400_4MATIC_AMG_Line_%28N_293%29_%E2%80%93_f_02042021.jpg', 3),
(30, 'Tesla', 'Model Y', 'Tágas és praktikus elektromos SUV.', 'https://www.topgear.com/sites/default/files/2022/03/TopGear%20-%20Tesla%20Model%20Y%20-%20003.jpg', 3),
(31, 'BMW', 'M3 E46', 'Sportos és erőteljes.', 'https://www.modelcar.com/modelcar/Ottomobile-BMW-M3-E46-Phoenix-Yellow-G025-front.jpg', 1),
(32, 'Audi', 'A3 8P', 'Stílusos és kompakt.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im01921-1-audi-a3.jpg', 1),
(33, 'Mercedes', 'C-Class W204', 'Elegáns és kifinomult.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f76/mercedes-benz-c-class-w204.jpg', 1),
(34, 'Honda', 'Accord 2007', 'Megbízható és tágas.', 'https://media.ed.edmunds-media.com/honda/accord/2007/oem/2007_honda_accord_sedan_ex-l-v-6_fq_oem_2_1600.jpg', 1),
(35, 'Toyota', 'Avensis 2007', 'Kényelmes és jól felszerelt.', 'https://i.ytimg.com/vi/lvwbuYqgEEs/maxresdefault.jpg', 1),
(36, 'Ford', 'Mondeo 2008', 'Tágas és családbarát.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im01765-1-ford-mondeo.jpg', 1),
(37, 'Mazda', '3 2009', 'Sportos és fiatalos.', 'https://d1gymyavdvyjgt.cloudfront.net/drive/images/made/drive/images/remote/https_d2yv47kjv2gmpz.cloudfront.net/filestore/0/4/1/2_2e5f8261979c166/5cb4653217d39363cf4495514a063e86/2140_62fbe548aa6ceb6_794_529_70.jpg', 1),
(38, 'Nissan', 'Almera 2005', 'Kedvező ár-érték arány.', 'https://upload.wikimedia.org/wikipedia/commons/c/c0/Nissan_almera_n16_jaslo.JPG', 1),
(39, 'Peugeot', '407 2006', 'Elegáns és tágas.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f49/peugeot-407-sw.jpg', 1),
(40, 'Citroen', 'C4 2007', 'Kényelmes és praktikus.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f36/citroen-c4-i-picasso-phase-i-2007.jpg', 1),
(41, 'Opel', 'Astra J', 'Jó minőség és gazdaságosság.', 'https://kocsi-media.hu/1247/opel-astra-j-1-4-sport-973710_444993_2xl.jpg', 2),
(42, 'Renault', 'Megane 2012', 'Modern dizájn, gazdaságos.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f89/renault-megane-iii-phase-ii-2012.jpg', 2),
(43, 'Peugeot', '2008 2015', 'Komfort és megbízhatóság.', 'https://d1gymyavdvyjgt.cloudfront.net/drive/images/made/drive/images/remote/https_d2yv47kjv2gmpz.cloudfront.net/filestore/1/8/1/2_e2b155f29cbc16f/ef20f35024fe51c0c1672b69545928c5/2181_5cca4ebae93c2c9_794_529_70.jpg', 2),
(44, 'Mazda', 'CX-3 2016', 'Kiváló vezetési élmény és stílusos.', 'https://tesztelok.hu/wp-content/uploads/cx32.jpg', 2),
(45, 'Honda', 'CR-V 2016', 'Tágas és kényelmes crossover.', 'https://i.pcmag.com/imagery/reviews/06CTOlym5JPco9CcAsbKQYN-4..v1569479118.jpg', 2),
(46, 'Hyundai', 'Tucson 2017', 'A legjobb családi autó.', 'https://hips.hearstapps.com/hmg-prod/amv-prod-cad-assets/wp-content/uploads/2016/11/2017-Hyundai-Tucson-Night-Edition-104.jpg', 2),
(47, 'Kia', 'Sportage 2018', 'Sportos crossover.', 'https://kocsi-media.hu/107/kia-sportage-1-6-gdi-silver-218146_453311_1xl.jpg', 2),
(48, 'Subaru', 'Forester 2018', 'Alkalmas minden terepre.', 'https://gofatherhood.com/wp-content/uploads/2017/10/2018-subaru-forester-4.jpg', 2),
(49, 'Toyota', 'RAV4 2019', 'Kiváló minőség és megbízhatóság.', 'https://toyotahering.hu/wp-content/uploads/2019/01/large_Toyota_RAV4_27.jpg', 2),
(50, 'BMW', 'X5 2019', 'Luxus SUV erős motorral.', 'https://www.iihs.org/cdn-cgi/image/width=636/api/ratings/model-year-images/2879/', 2),
(51, 'Tesla', 'Cybertruck', 'A jövő pickupja.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im05977-1-tesla-cybertruck.jpg', 3),
(52, 'Rivian', 'R1T', 'Elektromos pickup innovatív technológiával.', 'https://hips.hearstapps.com/hmg-prod/images/2025-rivian-r1t-104-665f78ba4b647.jpg?crop=1.00xw:0.844xh;0,0.156xh&resize=2048:*', 3),
(53, 'Lucid', 'Air', 'Luxus elektromos szedán.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/2022_Lucid_Air_Grand_Touring_in_Zenith_Red%2C_front_left.jpg/800px-2022_Lucid_Air_Grand_Touring_in_Zenith_Red%2C_front_left.jpg', 3),
(54, 'Ford', 'F-150 Lightning', 'Elektromos amerikai pickup.', 'https://media.ed.edmunds-media.com/ford/f-150-lightning/2024/oem/2024_ford_f-150-lightning_crew-cab-pickup_flash_fq_oem_1_1600.jpg', 3),
(55, 'Volkswagen', 'ID. Buzz', 'Elektromos minibusz retró dizájnnal.', 'https://www.kbb.com/wp-content/uploads/2023/06/2025-vw-id-buzz-exterior-front-blue.jpg?w=918', 3),
(56, 'Audi', 'e-tron GT', 'Elektrikus sportkocsi.', 'https://e-cars.hu/wp-content/uploads/2018/11/audi-e-tron-GT1.jpg', 3),
(57, 'BMW', 'iX3', 'Elektromos SUV a BMW-től.', 'https://upload.wikimedia.org/wikipedia/commons/7/75/BMW_iX3_G08_FL_IMG_6225.jpg', 3),
(58, 'Porsche', 'Taycan', 'Sportos elektromos autó.', 'https://di-uploads-pod15.dealerinspire.com/bluegrassmotorsport/uploads/2024/02/Taycan-Turbo.jpg', 3),
(59, 'Mercedes', 'EQS', 'Elektromos luxus szedán.', 'https://cdn.motor1.com/images/mgl/1m4XW/s3/2022-mercedes-benz-eqs-450-exterior-front-quarter.jpg', 3),
(60, 'Volvo', 'XC40 Recharge', 'Elektromos SUV a családoknak.', 'https://www.greencarguide.co.uk/wp-content/uploads/2021/04/Volvo-XC40-Recharge-Twin-006-low-res.jpeg', 3),
(61, 'BMW', 'M5 F90', 'Prémium sportautó.', 'https://i.auto-bild.de/ir_img/1/3/2/8/0/0/7/BMW-M5-F90-2017-Test-Infos-und-Bilder-1200x800-078a9f1eb8cb5d91.jpg', 2),
(62, 'Audi', 'RS7', 'Erőteljes sportos autó.', 'https://cf-cdn-v6-api.audi.at/files/d84892316f1aac3c6726113af1789cebeaca858d/5c8718f3-c070-4068-98b1-e95c13b089c1/rs720224375-l', 2),
(63, 'Mercedes', 'E-Class W213', 'Kifinomult szedán.', 'https://assets.autobuzz.my/wp-content/uploads/2016/01/23142934/2016-Mercedes-Benz-E-Class-W213-9.jpg', 2),
(64, 'Honda', 'Jazz 2020', 'Praktikus és tágas kisautó.', 'https://alapjarat.hu/sites/default/files/styles/article_cover_image_mobile/public/honda_jazz_alapjarat_sb-21.jpg?itok=lfW60y_t', 2),
(65, 'Toyota', 'Yaris Cross', 'Kis SUV nagy hatékonysággal.', 'https://www.automotor.hu/wp-content/uploads/2022/04/yariscross1.jpg', 2),
(66, 'Ford', 'Puma 2020', 'Kompakt SUV crossover.', 'https://upload.wikimedia.org/wikipedia/commons/0/02/2020_Ford_Puma_ST-Line_X_EcoBoost_Hybrid_1.0_Front.jpg', 2),
(67, 'Mazda', 'MX-5 Miata', 'Sportos kabrió.', 'https://www.usnews.com/object/image/00000192-f84f-d6b4-aff3-fd7fbd0e0001/25-mazda-miata-ext1.jpg?update-time=1730742994781&size=responsive640', 2),
(68, 'Peugeot', '508 2021', 'Elegáns és dinamikus szedán.', 'https://i.bstr.es/highmotor/2020/09/peugeot-508-pse-seguimiento-oficial-delantero-1220x808.jpg', 2),
(69, 'Citroen', 'C3 Aircross', 'Tágas és stílusos crossover.', 'https://vezess2.p3k.hu/app/uploads/2024/04/citroen-c3-aircross-2024-2.jpg', 2),
(70, 'Nissan', 'Leaf 2022', 'Kiváló elektromos autó.', 'https://e-cars.hu/wp-content/uploads/2022/02/2022-nissan-leaf-euro-spec1.jpg', 3),
(71, 'BMW', 'Z4', 'Sportos roadster.', 'https://vezess2.p3k.hu/app/uploads/2022/10/bmw-z4-m40i-8.jpg', 2),
(72, 'Mazda', 'RX-8', 'Legendás sportautó.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im00890-1-mazda-rx8.jpg', 2),
(73, 'Peugeot', '308 GTi', 'Sportos kompakt.', 'https://media.autoexpress.co.uk/image/private/s--X-WVjvBW--/f_auto,t_content-image-full-desktop@1/v1562241180/autoexpress/1/67/renault-20150603_085630-big_0_0_0_0_0.jpg', 2),
(74, 'Opel', 'Insignia 2017', 'Modern és elegáns szedán.', 'https://estaticos-cdn.prensaiberica.es/clip/877433d3-7d9f-4f91-9379-56dd3b8c53d9_alta-libre-aspect-ratio_default_0.jpg', 2),
(75, 'Skoda', 'Fabia 2019', 'Praktikus kisautó.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im05576-1-skoda-fabia.jpg', 2),
(76, 'Kia', 'Ceed', 'Kiváló minőség és megbízhatóság.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im05554-1-kia-ceed.jpg', 2),
(77, 'Toyota', 'Hilux 2020', 'Kiváló terepjáró pickup.', 'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_default/v1/editorial/review/hero_image/toyota-hilux-sr5-my20-red-tw-1001x565-(1).jpg', 2),
(78, 'Renault', 'Clio 2020', 'Fiatalos és stílusos városi autó.', 'https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im05755-1-renault-clio-v.jpg', 2),
(79, 'Ford', 'Ranger 2021', 'Erős és praktikus pickup.', 'https://www.motortrend.com/uploads/2021/12/2022-Ford-Ranger-Tremor-37.jpg?w=768&width=768&q=75&format=webp', 3),
(80, 'Volvo', 'XC90', 'Tágas és biztonságos családi SUV.', 'https://hips.hearstapps.com/hmg-prod/images/2025-volvo-xc90-125-6740db2f61c75.jpg?crop=0.720xw:0.609xh;0.280xw,0.372xh&resize=2048:*', 2),
(81, 'BMW', 'X6', 'Luxus SUV sportos megjelenéssel.', 'https://cdn.motor1.com/images/mgl/pOAWo/s3/2020-bmw-x6.jpg', 2),
(82, 'Audi', 'Q5', 'Elegáns és tágas crossover.', 'https://cdn.motor1.com/images/mgl/43GX1/s3/2021-audi-q5.jpg', 2),
(83, 'Mercedes', 'GLC', 'Luxus crossover.', 'https://egyszermarlattamautot.hu/wp-content/uploads/2023/09/Az-uj-Mercedes-AMG-GLC-Coupe_LEAD-1.jpg', 2),
(84, 'Honda', 'Pilot', 'Tágas családi SUV.', 'https://hips.hearstapps.com/hmg-prod/images/2025-honda-pilot-black-edition-01-65e1e8b47b986.jpg?crop=0.587xw:0.587xh;0.231xw,0.262xh&resize=2048:*', 2),
(85, 'Nissan', 'Murano', 'Prémium crossover.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f125/nissan-murano-i-z50.jpg', 2),
(86, 'Toyota', 'Sequoia', 'Nagy méretű és erős SUV.', 'https://vehicle-images.dealerinspire.com/bf18-110007925/7SVAAABA6SX058563/c3b44fa6d0ddcb170c1e5b705526f3f8.jpg', 2),
(87, 'Subaru', 'Outback', 'Terepjáró és családi autó kombinációja.', 'https://i.gaw.to/vehicles/photos/40/39/403990-2025-subaru-outback.jpg', 2),
(88, 'Mazda', 'CX-9', 'Tágas és erős SUV.', 'https://www.automoli.com/common/vehicles/_assets/img/gallery/f34/mazda-cx-9-ii.jpg', 2),
(89, 'Chevrolet', 'Traverse', 'Nagy méretű családi SUV.', 'https://i.gaw.to/content/photos/61/75/617517-chevrolet-traverse-2024.jpeg', 2),
(90, 'GMC', 'Yukon', 'Erős és tágas prémium SUV.', 'https://cdn.motor1.com/images/mgl/G6BKE/s3/2021-gmc-yukon-denali-front-quarter.jpg', 2),
(91, 'BMW', '740e', 'Luxus plug-in hibrid szedán.', 'https://www.carpro.com/hubfs/car-review-blog/review_274910_1.jpg', 3),
(92, 'Audi', 'Q7', 'Nagy prémium crossover.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Audi_Q7_%28Facelift%29_front_20110115.jpg/1200px-Audi_Q7_%28Facelift%29_front_20110115.jpg', 2),
(93, 'Jaguar', 'F-Pace', 'Sportos luxus SUV.', 'https://cdn.motor1.com/images/mgl/NR8nM/s1/2021-jaguar-f-pace.jpg', 2),
(94, 'Land Rover', 'Range Rover Sport', 'Luxus és terepjáró képesség.', 'https://cdn.motor1.com/images/mgl/2NNLxK/s1/range-rover-sport-2022.jpg', 2),
(95, 'Mitsubishi', 'Outlander PHEV', 'Hibrid terepjáró.', 'https://autopult.hu/galeria/1612teszt/mphev/mitsubishi_outlander_phev_2016_11_medium.JPG', 2),
(96, 'BMW', 'X1', 'Kompakt luxus crossover.', 'https://images.clickdealer.co.uk/vehicles/6083/6083257/large1/143855757.jpg', 2),
(97, 'Toyota', 'Land Cruiser 70', 'Robusztus terepjáró.', 'https://upload.wikimedia.org/wikipedia/commons/e/ec/Toyota_Land_Cruiser_70_003_%28cropped%29.JPG', 2),
(98, 'Kia', 'Seltos', 'Praktikus és stílusos crossover.', 'https://imgcdn.oto.com/large/gallery/exterior/20/2972/kia-seltos-front-angle-low-view-718961.jpg', 2),
(99, 'Hyundai', 'Santa Fe', 'Tágas és családbarát SUV.', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/2024_Hyundai_Santa_Fe_Luxury_AWD_in_Hampton_Grey%2C_front_left%2C_2024-06-30.jpg', 2),
(100, 'Mazda', 'CX-30', 'Stílusos crossover.', 'https://vezess2.p3k.hu/app/uploads/2024/04/mazda-cx-30-nagisa-teszt-2024-04.jpg', 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
