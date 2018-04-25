-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Gru 2017, 16:52
-- Wersja serwera: 10.1.29-MariaDB
-- Wersja PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `2b1t-quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list-of-results`
--

CREATE TABLE `list-of-results` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `result` int(11) NOT NULL,
  `password` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `list-of-results`
--

INSERT INTO `list-of-results` (`id`, `name`, `result`, `password`) VALUES
(1, '', 0, ''),
(2, 'jan', 0, 'mager');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions-abcd`
--

CREATE TABLE `questions-abcd` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8_polish_ci NOT NULL,
  `answer1` text COLLATE utf8_polish_ci NOT NULL,
  `answer2` text COLLATE utf8_polish_ci NOT NULL,
  `answer3` text COLLATE utf8_polish_ci NOT NULL,
  `answer4` text COLLATE utf8_polish_ci NOT NULL,
  `category` text COLLATE utf8_polish_ci NOT NULL,
  `img` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `questions-abcd`
--

INSERT INTO `questions-abcd` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `category`, `img`) VALUES
(1, 'Program antyspyware chroni przed', 'programami szpiegującymi', 'programami antywirusowymi', 'programami typu robak', 'atakami typu DoS i DDoS (Denial of Service).', 'E12', ''),
(2, 'Podstawowym mechanizmem ochrony danych znajdujących się na serwerze jest', 'tworzenie kopii bezpieczeństwa', 'włączenie ochrony systemu', 'automatyczne wykonywanie kompresji danych.', 'tworzenie punktu przywracania systemu', 'E12', ''),
(3, 'Ustawienia wszystkich użytkowników komputera zapisane są w gałęzi rejestru o akronimie', 'HKCU', 'HKKC', 'HKCR', 'HKLM', 'E12', ''),
(4, 'Licencja oprogramowania umożliwiająca darmowe rozpowszechnianie aplikacji to', 'Freeware ', 'OEM', 'MOLP', 'Greenware', 'E12', ''),
(5, 'W przypadku zaschnięcia dysz w drukarce atramentowej spowodowanych długimi przestojami należy w pierwszej kolejności', 'dokonać oczyszczania dysz z poziomu odpowiedniego programu', 'wymienić mechanizm drukujący', 'ustawić wydruk ekonomiczny', 'oczyścić dyszę wacikiem nasączonym olejem syntetycznym.', 'E12', ''),
(6, 'AC-72-89-17-6E-B2 to adres fizyczny karty sieciowej zapisany w postaci', 'Heksadecymalnej', 'Dziesiętnej', 'Oktalnej', 'Binarnej', 'E12', ''),
(7, 'Wielkość plamki monitora LCD jest równa', 'odległości od początku jednego do początku następnego piksela.', 'wielkości obszaru, na którym wyświetla się 1024 pikseli.', 'wielkości jednego piksela wyświetlanego na ekranie', 'wielkości obszaru, na którym można wyświetlić wszystkie kolory obsługiwane przez monitor', 'E12', ''),
(8, 'Który poziom macierzy RAID zapisuje dane równolegle na kilku dyskach działających jako jedno urządzenie?', 'RAID 0', 'RAID 1', 'RAID 5', 'RAID 3', 'E12', ''),
(9, 'W komunikacie o błędzie systemu informacja wyświetlana w postaci heksadecymalnej oznacza', 'kod błędu', 'nazwę sterownika', 'definicję błędu.', 'odnośnik do systemu pomocy', 'E12', ''),
(10, 'Liczba 10011001100 zapisana w postaci heksadecymalnej ma postać', '4CC', '2,00E+04', 'F5A', '998', 'E12', ''),
(11, 'W systemie plików NTFS zmianę nazwy pliku umożliwia uprawnienie', 'modyfikacji', 'zapisu', 'odczytu', 'odczytu i wykonaia', 'E12', ''),
(12, 'Jednostka obliczeęń zmieennoprzecinkowych to', 'FPU', 'RPU', 'ALU', 'AND', 'E12', ''),
(13, 'Aby uniknąć uszkodzenia układów scalonych, podczas naprawy sprzętu komputerowego należy stosować', 'opaskę antystatyczną', 'gumowe rękawiczki', 'skórzane rękawiczki', 'okulary ochronne', 'E12', ''),
(14, 'W systemie Windows XP do zmiany typu systemu plików na dysku z FAT32 na NTFS należy skorzystać z programu', 'convert ', 'attrib', 'replace', 'cnvrt', 'E12', ''),
(15, 'Bezpłatnym programem antywirusowym dostarczanym przez Microsoft dla użytkowników legalnych wersji systemu operacyjnego Windows jest', 'Microsoft Security Essentials', 'Microsoft Free Antywirus', 'Windows Antywirus', 'Windows Defender', 'E12', ''),
(16, 'Kopia różnicowa polega na', 'kopiowaniu tylko plików, które zostały utworzone lub zmienione od czasu utworzenia ostatniej kopii pełnej', 'kopiowaniu tylko plików, które zostały utworzone od czasu ostatniej kopii pełnej', 'kopiowaniu tylko tej części plików, która została dopisana od czasu utworzenia ostatniej kopii pełnej', 'kopiowaniu tylko plików, które zostały zmienione od czasu utworzenia ostatniej kopii pełnej', 'E12', ''),
(17, 'System S.M.A.R.T. przeznaczony jest do monitorowania pracy i wykrywania błędów', 'dysków twardych', 'kart rozszerzeń', 'płyty głównej', 'procesora', 'E12', ''),
(18, 'Pliki, które znajdują się w koszu, można odzyskać poprzez zastosowanie polecenia', 'Przywróć', 'Cofnij', 'Wróć', 'Ponów', 'E12', ''),
(19, 'W celu powiększenia lub zmniejszenia ikony na pulpicie należy kręcić kółkiem myszy, przytrzymując jednocześnie klawisz', 'CTRL', 'SHIFT', 'ALT', 'TAB', 'E12', ''),
(20, 'W technologii Blu-ray nośnik jednokrotnego zapisu oznaczany jest', 'BD-R', 'BD-RE', 'BD-ROM', 'BD', 'E12', ''),
(21, 'W systemie Linux do monitorowania w czasie rzeczywistym uruchomionych procesów służy polecenie', 'ps', 'proc', 'sed', 'sysinfo', 'E12', ''),
(22, 'W systemie Linux plik ma ustawione uprawnienia na 541. Właściciel może plik', 'odczytać i wykonać', 'odczytać, zapisać i wykonać', 'modyfikować.', 'tylko wykonać', 'E12', ''),
(23, 'Interfejs HDMI komputera pozwala na przesyłanie sygnału', 'cyfrowego audio i video', 'analogowego audio i video', 'cyfrowego audio', 'cyfrowego video', 'E12', ''),
(24, 'Wewnętrzny dysk twardy IDE zasilany jest poprzez złącze typu', 'Molex', 'ATX', 'PCI-E', 'SATA', 'E12', ''),
(25, 'Którego polecenia należy użyć w konsoli do naprawy błędów na dysku?', 'chkdsk', 'diskcomp', 'chdir', 'subst', 'E12', ''),
(26, 'Wskaż złącze, które nie występuje w zasilaczach ATX', 'DE-15/HD-15', 'SATA Connector', 'PCI-E', 'MPC', 'E12', ''),
(27, 'Który aplet panelu sterowania w systemie Windows 7 umożliwia ograniczenie czasu pracy użytkownika na komputerze?', 'Kontrola rodzicielska', 'Windows Defender', 'Centrum akcji', 'Konta użytkowników', 'E12', ''),
(28, 'Interfejsem wewnętrznym komputera jest', 'AGP', 'IrDA', 'PCMCIA', 'D-SUB', 'E12', ''),
(29, 'Głównym celem mechanizmu Plug and Play jest', 'wykrycie nowo podłączonego sprzętu i automatycznie przydzielenie mu zasobów', 'ponowne uruchomienie ostatnio uruchomionej gry', 'automatyczne tworzenie kopii danych na nowo podłączonym nośniku pamięci', 'automatyczne odinstalowanie sterowników, które przez dłuższy czas nie były używane', 'E12', ''),
(30, 'W drukarce laserowej do utrwalania druku na papierze służą', 'ozgrzane wałki.', 'głowice piezoelektryczne.', 'bęben transferowy.', 'promienie lasera', 'E12', ''),
(31, 'W komputerach wykonujących zadania serwerowe, wymagające dużej wydajności, należy zastosować dysk z interfejsem', 'SAS', 'ATA', 'SATA', 'USB', 'E12', ''),
(32, 'Po instalacji z domyślnymi ustawieniami system Windows XP nie obsługuje systemu plików', 'EXT', 'FAT16', 'FAT32', 'NTFS', 'E12', ''),
(33, 'Konwerter RAMDAC przetwarza sygnał', 'cyfrowy na analogowy', 'nalogowy na cyfrowy', 'zmienny na stały', 'stały na zmienny', 'E12', ''),
(34, 'Licencja CAL (Client Access License) daje użytkownikowi prawo', 'korzystania z usług udostępnionych przez serwer.', 'używania programu bezterminowo', 'zmiany kodu programu', 'kopiowania programu na nośniki zewnętrzne', 'E12', ''),
(35, 'Aby przywrócić ustawienia domyślne płyty głównej w przypadku, gdy nie ma możliwości uruchomienia programu BIOS Setup, należy', 'przełożyć zworkę na płycie głównej.', 'zaktualizować BIOS Setup', 'uruchomić ponownie system', 'doładować baterię na płycie głównej', 'E12', ''),
(36, 'Wskaż najbardziej prawdopodobną przyczynę wystąpienia komunikatu „CMOS checksum error press F1 to continue press DEL to setup” przy uruchamianiu komputera', 'Rozładowana bateria podtrzymująca ustawienia BIOS-u', 'Skasowana zawartość pamięci CMOS', 'Usunięty plik setup', 'szkodzona karta graficzna', 'E12', ''),
(37, 'Przedstawiony na rysunku symbol graficzny oznacza opakowanie', 'nadające się do recyklingu', 'zgodne z normą TCO.', 'wielokrotnego użytku', 'wyprodukowane z surowców wtórnych', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_symbol.png'),
(38, 'Najbardziej prawdopodobną przyczyną słabej jakości wydruku drukarki laserowej, charakteryzującego się widocznym rozmazywaniem tonera, jest', 'zbyt niska temperatura utrwalacza', 'uszkodzenie rolek.', 'zacięcie papieru', 'zanieczyszczenie wnętrza drukarki', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_wydruk.png'),
(39, 'Na rysunku przedstawiono taśmę (kabel) złącza', 'ATA', 'SATA', 'SAS', 'SCSI', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_tasma.jpg'),
(40, 'Przedstawiona na rysunku karta rozszerzeń posiada chłodzenie', 'pasywne', 'aktywne', 'symetryczne', 'wymuszone', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/02/e12_chlodzenie.png'),
(41, 'W jednostce ALU do akumulatora została wpisana liczba dziesiętna 240. Jaka jest jej binarna reprezentacja?', '11110000', '11111000', '11111100', '11111110', 'e12', ''),
(42, 'Plik ma rozmiar 2 KiB. Jest to:', '16384 bitów.', '2000 bitów.', '2048 bitów.', '16000 bitów.', 'e12', ''),
(43, 'Niskopoziomowe formatowanie dysku IDE HDD', 'jest wykonywane przez producenta dysku.', 'tworzy partycję rozszerzoną.', 'tworzy partycję podstawową.', 'umieszcza program rozruchowy w MBR.', 'e12', ''),
(44, 'Użytkownik systemu Windows otrzymuje komunikaty o zbyt małej pamięci wirtualnej. Problem ten można rozwiązań przez', 'zwiększenie pamięci RAM.', 'zamontowanie dodatkowej pamięci cache procesora.', 'zwiększenie rozmiaru pliku virtualfile.sys.', 'zamontowanie dodatkowego dysku.', 'e12', ''),
(45, 'Użytkownik zamierza zainstalować 32-bitowy system operacyjny Windows 7. Ile minimalnie pamięci RAM musi posiadać komputer, aby była możiwa praca systemu w trybie graficznym?', '1 GB', '256 MB', '512 MB', '2 GB', 'e12', ''),
(46, 'W systemach operacyjnych Windows ograniczenie użytkownikom dostępu do poszczególnych katalogów, plików lub dysków umożliwia system plików: ', 'NTFS', 'FAT16', 'FAT32', 'Ext2', 'e12', ''),
(47, 'Na nowym komputerze program antywirusowy należy zainstalować', 'zaraz po zainstalowaniu systemu operacyjnego.', 'w trakcie instalacji systemu operacyjnego.', 'przed zainstalowaniem systemu operacyjnego.', 'po zainstalowaniu pobranych z Internetu programów.', 'e12', ''),
(48, 'Wskaż właściwą kolejność operacji przygotowujących nowy laptop do pracy:', 'Montaż baterii, podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, instalacja systemu operacyjnego, wyłączenie laptopa po instalacji systemu operacyjnego.', 'Podłączenie zewnętrznego zasilania sieciowego, włączenia laptopa, instalacja systemu operacyjnego, montaż baterii, wyłączenie laptopa po instalacji systemu operacyjnego.', 'Podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, montaż baterii, instalacja systemu operacyjnego, wyłączenie laptopa po instalacji systemu operacyjnego.', 'Włączenie laptopa, montaż baterii, instalacja systemu operacyjnego, podłączenie zewnętrznego zasilania sieciowego, wyłączenie laptopa po instalacji systemu operacyjnego.', 'e12', ''),
(49, 'W celu dokonania aktualizacji zainstalowanego systemu operacyjnego Linux Ubuntu należy użyć polecenia:', 'apt-get upgrade', 'yum upgrade', 'kernel update', 'system update', 'e12', ''),
(50, 'W systemie operacyjnym Fedora katalogi domowe użytkowników umieszczone są w katalogu:', '/home', '/bin', '/user', '/users', 'e12', ''),
(51, 'W systemie Windows 7 w celu skopiowania katalogu c:\\test wraz z podkatalogami na dysk przenośny f:\\ należy użyć polecenia', 'xcopy c:\\test f:\\test /E', 'copy c:\\test f:\\test /E', 'copy f:\\test c:\\test /E', 'xcopy f:\\test c:\\test /E', 'e12', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test-e12`
--

CREATE TABLE `test-e12` (
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `5` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `7` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `9` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `11` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `13` int(11) NOT NULL,
  `14` int(11) NOT NULL,
  `15` int(11) NOT NULL,
  `16` int(11) NOT NULL,
  `17` int(11) NOT NULL,
  `18` int(11) NOT NULL,
  `19` int(11) NOT NULL,
  `20` int(11) NOT NULL,
  `21` int(11) NOT NULL,
  `22` int(11) NOT NULL,
  `23` int(11) NOT NULL,
  `24` int(11) NOT NULL,
  `25` int(11) NOT NULL,
  `26` int(11) NOT NULL,
  `27` int(11) NOT NULL,
  `28` int(11) NOT NULL,
  `29` int(11) NOT NULL,
  `30` int(11) NOT NULL,
  `31` int(11) NOT NULL,
  `32` int(11) NOT NULL,
  `33` int(11) NOT NULL,
  `34` int(11) NOT NULL,
  `35` int(11) NOT NULL,
  `36` int(11) NOT NULL,
  `37` int(11) NOT NULL,
  `38` int(11) NOT NULL,
  `39` int(11) NOT NULL,
  `40` int(11) NOT NULL,
  `pkt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `test-e12`
--

INSERT INTO `test-e12` (`id`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `32`, `33`, `34`, `35`, `36`, `37`, `38`, `39`, `40`, `pkt`) VALUES
(1, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 31, 15, 20, 21, 9, 47, 24, 6, 38, 34, 32, 36, 41, 42, 5, 30, 39, 51, 23, 27, 17, 22, 2, 19, 4, 13, 25, 10, 7, 8, 29, 16, 50, 45, 18, 3, 37, 49, 46, 33, 0),
(5, 1, 23, 44, 29, 21, 28, 47, 40, 26, 51, 20, 5, 11, 18, 17, 19, 48, 25, 27, 36, 12, 10, 33, 15, 38, 2, 45, 34, 9, 46, 39, 16, 37, 41, 7, 30, 13, 31, 8, 43, 0),
(6, 19, 45, 13, 9, 36, 40, 33, 44, 39, 25, 27, 50, 17, 7, 28, 23, 48, 6, 15, 42, 22, 8, 41, 51, 14, 16, 43, 34, 21, 47, 5, 4, 2, 32, 46, 20, 1, 37, 24, 26, 0),
(7, 32, 1, 22, 19, 8, 35, 50, 29, 51, 14, 36, 38, 40, 11, 39, 42, 25, 30, 28, 23, 43, 6, 21, 24, 44, 18, 33, 45, 9, 12, 4, 41, 7, 2, 15, 3, 48, 31, 49, 34, 0),
(8, 33, 10, 17, 31, 22, 39, 21, 24, 27, 3, 45, 6, 16, 32, 5, 47, 14, 51, 38, 49, 40, 42, 11, 4, 35, 9, 15, 34, 20, 46, 13, 1, 43, 48, 8, 29, 44, 30, 7, 50, 0),
(9, 30, 2, 48, 9, 32, 7, 25, 23, 16, 3, 40, 44, 20, 34, 1, 10, 29, 49, 15, 31, 41, 19, 43, 14, 21, 22, 51, 38, 17, 18, 37, 26, 36, 11, 33, 8, 13, 6, 45, 5, 0),
(10, 27, 16, 20, 49, 21, 41, 51, 26, 9, 31, 28, 1, 39, 47, 3, 5, 7, 43, 2, 46, 10, 13, 23, 11, 6, 29, 38, 44, 50, 34, 35, 42, 15, 8, 18, 32, 4, 14, 12, 40, 0),
(11, 19, 42, 15, 32, 43, 38, 2, 48, 50, 31, 7, 9, 11, 21, 46, 4, 6, 22, 39, 45, 25, 13, 33, 49, 40, 24, 12, 18, 51, 27, 14, 30, 16, 44, 34, 20, 35, 1, 10, 37, 0),
(12, 6, 29, 11, 48, 34, 16, 4, 37, 20, 15, 51, 42, 28, 23, 12, 33, 39, 1, 26, 7, 50, 40, 32, 46, 36, 21, 2, 22, 24, 43, 49, 35, 38, 30, 18, 8, 44, 45, 31, 41, 0),
(13, 9, 40, 16, 15, 48, 43, 37, 39, 45, 33, 51, 5, 30, 1, 8, 25, 34, 17, 20, 11, 28, 32, 6, 42, 36, 26, 2, 47, 10, 12, 4, 38, 14, 24, 41, 3, 50, 31, 18, 29, 0),
(14, 7, 32, 3, 4, 34, 49, 33, 13, 40, 12, 11, 21, 18, 10, 46, 26, 20, 44, 43, 23, 22, 35, 0, 15, 38, 2, 47, 39, 16, 25, 48, 6, 27, 37, 42, 14, 29, 50, 24, 0, 3),
(15, 0, 0, 35, 4, 36, 7, 31, 50, 19, 0, 0, 33, 14, 5, 15, 25, 12, 2, 32, 22, 23, 46, 30, 17, 10, 18, 3, 9, 27, 49, 6, 34, 39, 1, 0, 0, 0, 21, 26, 16, 0),
(16, 3, 32, 14, 50, 1, 2, 13, 40, 28, 11, 48, 5, 51, 4, 33, 16, 45, 18, 10, 47, 23, 15, 20, 37, 46, 41, 25, 27, 24, 21, 12, 44, 36, 29, 39, 43, 35, 17, 9, 26, 1),
(17, 22, 13, 2, 36, 50, 40, 44, 51, 29, 11, 38, 6, 5, 48, 14, 10, 3, 8, 9, 32, 19, 46, 15, 16, 21, 47, 34, 43, 26, 31, 41, 17, 24, 45, 12, 7, 27, 33, 49, 42, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `list-of-results`
--
ALTER TABLE `list-of-results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions-abcd`
--
ALTER TABLE `questions-abcd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test-e12`
--
ALTER TABLE `test-e12`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `list-of-results`
--
ALTER TABLE `list-of-results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `questions-abcd`
--
ALTER TABLE `questions-abcd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT dla tabeli `test-e12`
--
ALTER TABLE `test-e12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
