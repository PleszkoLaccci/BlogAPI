-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Sze 24. 10:24
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogpost`
--

CREATE TABLE `blogpost` (
  `Id` int(11) NOT NULL,
  `Title` varchar(40) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `postTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `blogpost`
--

INSERT INTO `blogpost` (`Id`, `Title`, `Content`, `postTime`, `updateTime`, `blogId`) VALUES
(2, 'Adatbázis tervezési alapelvek', 'Ez a bejegyzés a(z) \"Adatbázis tervezési alapelvek\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-05-23 23:06:00', '2025-06-03 22:06:00', 5),
(3, 'REST API fejlesztés lépésről lépésre', 'Ez a bejegyzés a(z) \"REST API fejlesztés lépésről lépésre\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-03-31 18:27:00', '2025-03-31 18:27:00', 1),
(4, 'Git verziókezelés kezdőknek', 'Ez a bejegyzés a(z) \"Git verziókezelés kezdőknek\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-08-12 07:32:00', '2025-08-21 07:32:00', 5),
(5, 'Objektumorientált programozás alapjai', 'Ez a bejegyzés a(z) \"Objektumorientált programozás alapjai\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-07-23 22:41:00', '2025-08-01 11:41:00', 2),
(6, 'SQL lekérdezések optimalizálása', 'Ez a bejegyzés a(z) \"SQL lekérdezések optimalizálása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-04-05 18:17:00', '2026-04-05 23:17:00', 4),
(7, 'Frontend fejlesztés React-tel', 'Ez a bejegyzés a(z) \"Frontend fejlesztés React-tel\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-12-15 08:09:00', '2025-12-18 18:09:00', 1),
(8, 'Backend architektúrák összehasonlítása', 'Ez a bejegyzés a(z) \"Backend architektúrák összehasonlítása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-04-05 12:06:00', '2025-04-10 23:06:00', 5),
(9, 'Tesztelés automatizálása', 'Ez a bejegyzés a(z) \"Tesztelés automatizálása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-09-28 01:46:00', '2025-10-05 18:46:00', 1),
(10, 'Docker konténerek gyakorlatban', 'Ez a bejegyzés a(z) \"Docker konténerek gyakorlatban\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-01-23 02:35:00', '2026-01-27 22:35:00', 5),
(11, 'Agilis szoftverfejlesztés', 'Ez a bejegyzés a(z) \"Agilis szoftverfejlesztés\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-01-06 18:12:00', '2026-01-07 19:12:00', 2),
(12, 'Biztonságos jelszókezelés', 'Ez a bejegyzés a(z) \"Biztonságos jelszókezelés\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-10-24 02:54:00', '2025-10-27 05:54:00', 4),
(13, 'Microservices architektúra', 'Ez a bejegyzés a(z) \"Microservices architektúra\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-10-12 14:40:00', '2025-10-17 19:40:00', 3),
(14, 'CI/CD folyamatok kialakítása', 'Ez a bejegyzés a(z) \"CI/CD folyamatok kialakítása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-12-30 06:42:00', '2026-01-04 04:42:00', 1),
(15, 'JavaScript ES6+ újdonságai', 'Ez a bejegyzés a(z) \"JavaScript ES6+ újdonságai\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-06-25 17:46:00', '2025-06-28 22:46:00', 4),
(16, 'Adatstruktúrák és algoritmusok', 'Ez a bejegyzés a(z) \"Adatstruktúrák és algoritmusok\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-01-24 08:59:00', '2026-02-04 06:59:00', 5),
(17, 'Felhő alapú szolgáltatások', 'Ez a bejegyzés a(z) \"Felhő alapú szolgáltatások\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-08-13 21:20:00', '2025-08-14 04:20:00', 1),
(18, 'Linux szerver adminisztráció', 'Ez a bejegyzés a(z) \"Linux szerver adminisztráció\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-11-20 12:17:00', '2025-11-21 18:17:00', 5),
(19, 'Webes teljesítmény optimalizálás', 'Ez a bejegyzés a(z) \"Webes teljesítmény optimalizálás\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-11-19 06:41:00', '2025-11-26 18:41:00', 4),
(20, 'Mobilalkalmazás fejlesztés alapjai', 'Ez a bejegyzés a(z) \"Mobilalkalmazás fejlesztés alapjai\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-05-27 08:08:00', '2025-05-31 07:08:00', 5),
(21, 'Verziókövetés csapatmunkában', 'Ez a bejegyzés a(z) \"Verziókövetés csapatmunkában\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-07-06 08:47:00', '2026-07-15 21:47:00', 5),
(22, 'Kód olvashatóság és karbantarthatóság', 'Ez a bejegyzés a(z) \"Kód olvashatóság és karbantarthatóság\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-02-13 11:14:00', '2026-02-16 03:14:00', 4),
(23, 'Hibakeresési technikák', 'Ez a bejegyzés a(z) \"Hibakeresési technikák\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-04-04 01:55:00', '2025-04-05 05:55:00', 2),
(24, 'API dokumentáció írása', 'Ez a bejegyzés a(z) \"API dokumentáció írása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-03-09 19:04:00', '2026-03-16 07:04:00', 5),
(25, 'Adatvédelem és GDPR a fejlesztésben', 'Ez a bejegyzés a(z) \"Adatvédelem és GDPR a fejlesztésben\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-04-25 16:16:00', '2026-05-03 16:16:00', 1),
(26, 'NoSQL adatbázisok bemutatása', 'Ez a bejegyzés a(z) \"NoSQL adatbázisok bemutatása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-07-04 08:49:00', '2026-07-14 18:49:00', 1),
(27, 'Szoftverarchitektúra minták', 'Ez a bejegyzés a(z) \"Szoftverarchitektúra minták\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-10-28 13:10:00', '2025-11-04 13:10:00', 3),
(28, 'Egységtesztek írása gyakorlatban', 'Ez a bejegyzés a(z) \"Egységtesztek írása gyakorlatban\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-05-28 05:32:00', '2026-05-30 01:32:00', 3),
(29, 'Web biztonsági alapismeretek', 'Ez a bejegyzés a(z) \"Web biztonsági alapismeretek\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-06-04 19:12:00', '2026-06-07 06:12:00', 2),
(30, 'Verziókezelő rendszerek összehasonlítása', 'Ez a bejegyzés a(z) \"Verziókezelő rendszerek összehasonlítása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-07-07 16:58:00', '2026-07-08 11:58:00', 3),
(31, 'Kódolási konvenciók fontossága', 'Ez a bejegyzés a(z) \"Kódolási konvenciók fontossága\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-05-16 00:07:00', '2026-05-21 09:07:00', 2),
(32, 'Teljesítménymérés webalkalmazásokban', 'Ez a bejegyzés a(z) \"Teljesítménymérés webalkalmazásokban\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-03-01 07:56:00', '2025-03-10 09:56:00', 1),
(33, 'Skálázható rendszerek tervezése', 'Ez a bejegyzés a(z) \"Skálázható rendszerek tervezése\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-05-13 02:48:00', '2026-05-21 06:48:00', 2),
(34, 'DevOps kultúra bevezetése', 'Ez a bejegyzés a(z) \"DevOps kultúra bevezetése\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-05-02 17:10:00', '2026-05-07 09:10:00', 5),
(35, 'Konténerizáció és orkesztráció', 'Ez a bejegyzés a(z) \"Konténerizáció és orkesztráció\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-03-10 06:59:00', '2026-03-19 05:59:00', 2),
(36, 'Funkcionális programozás alapjai', 'Ez a bejegyzés a(z) \"Funkcionális programozás alapjai\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-11-16 12:42:00', '2025-11-26 23:42:00', 4),
(37, 'TypeScript a mindennapokban', 'Ez a bejegyzés a(z) \"TypeScript a mindennapokban\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-06-14 14:07:00', '2026-06-17 21:07:00', 1),
(38, 'Adatbázis indexelés', 'Ez a bejegyzés a(z) \"Adatbázis indexelés\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-12-13 00:37:00', '2025-12-21 07:37:00', 5),
(39, 'Webalkalmazás deployment folyamatok', 'Ez a bejegyzés a(z) \"Webalkalmazás deployment folyamatok\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-08-14 00:04:00', '2025-08-24 01:04:00', 2),
(40, 'Kód review gyakorlatok', 'Ez a bejegyzés a(z) \"Kód review gyakorlatok\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-03-11 01:55:00', '2025-03-16 03:55:00', 5),
(41, 'Szoftverdokumentáció írása', 'Ez a bejegyzés a(z) \"Szoftverdokumentáció írása\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-09-01 08:42:00', '2025-09-08 14:42:00', 5),
(42, 'Agilis csapatmenedzsment', 'Ez a bejegyzés a(z) \"Agilis csapatmenedzsment\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-05-16 23:59:00', '2025-05-26 17:59:00', 4),
(43, 'Refaktorálási technikák', 'Ez a bejegyzés a(z) \"Refaktorálási technikák\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-09-06 15:51:00', '2025-09-12 21:51:00', 1),
(44, 'API biztonsági bevált gyakorlatok', 'Ez a bejegyzés a(z) \"API biztonsági bevált gyakorlatok\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-04-10 21:27:00', '2025-04-16 10:27:00', 4),
(45, 'Verziókövetés Git branch stratégiák', 'Ez a bejegyzés a(z) \"Verziókövetés Git branch stratégiák\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-04-24 23:03:00', '2026-05-05 19:03:00', 1),
(46, 'Mikroszolgáltatások kommunikációja', 'Ez a bejegyzés a(z) \"Mikroszolgáltatások kommunikációja\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-03-04 12:46:00', '2025-03-09 15:46:00', 2),
(47, 'Log kezelés és monitorozás', 'Ez a bejegyzés a(z) \"Log kezelés és monitorozás\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-07-16 06:34:00', '2025-07-23 10:34:00', 4),
(48, 'Automatizált tesztelési stratégiák', 'Ez a bejegyzés a(z) \"Automatizált tesztelési stratégiák\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-07-07 08:29:00', '2025-07-10 10:29:00', 4),
(49, 'Szoftverfejlesztési életciklus', 'Ez a bejegyzés a(z) \"Szoftverfejlesztési életciklus\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2026-07-18 03:03:00', '2026-07-28 20:03:00', 1),
(50, 'Felhasználói élmény és fejlesztés', 'Ez a bejegyzés a(z) \"Felhasználói élmény és fejlesztés\" témát mutatja be részletesen, gyakorlati példákkal és tanácsokkal a mindennapi munkához.', '2025-04-06 07:10:00', '2025-04-12 22:10:00', 4),
(52, 'asd', 'asd', '2026-09-24 09:22:55', '2026-09-24 09:22:55', 2),
(53, 'asd', 'asd', '2026-09-24 09:23:10', '2026-09-24 09:23:10', 100);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `blogId` (`blogId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
