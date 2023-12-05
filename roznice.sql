-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Maj 2018, 15:20
-- Wersja serwera: 10.1.30-MariaDB
-- Wersja PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `roznice`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `mail` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `data` datetime NOT NULL,
  `wpis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `mail`, `imie`, `nazwisko`, `data`, `wpis`) VALUES
(1, 'adam@wp.pl', 'Adam', 'Kowalski', '2018-05-01 12:34:56', 'Znalazłem 5 różnic. Ale to chyba nie wszystkie. Czy ktoś znalazł więcej?'),
(2, 'ola@interia.pl', 'Aleksandra', 'Wolska', '2018-05-02 17:04:50', 'Ja znalazłam więcej, ale nie powiem ani jakie ani ile. Buhaha ;)'),
(10, 'jn@wp.pl', 'Jurek', 'Nowak', '2018-05-09 15:17:16', 'Zagadka super tylko brak kilku opcji. Zgadniesz jakich? A może potrafisz je dopisać w PHP? Mała podpowiedź: a gdyby ktoś wpisał niecenzuralny komentarz albo chciał poprawić swój własny wpis???');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
