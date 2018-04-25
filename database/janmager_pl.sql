-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Gru 2017, 18:51
-- Wersja serwera: 10.0.32-MariaDB-0+deb8u1
-- Wersja PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `janmager_pl`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `questions-abcd`
--

INSERT INTO `questions-abcd` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `category`, `img`) VALUES
(48, 'Partycja, na której zainstalowany jest system operacyjny, nazywana jest partycją', 'systemową', 'olderową', 'wymiany.', 'rozszerzoną', 'E12', ''),
(47, 'Która drukarka wykorzystuje technikę polegającą na przenoszeniu stałego barwnika z taśmy na papier odporny na wysoką temperaturę?', 'Termosublimacyjna', 'Termiczna', 'Laserowa ', 'Atramentowa', 'E12', ''),
(46, 'Która usługa umożliwia zdalną instalację systemu operacyjnego?', 'RIS', 'IRC', 'IIS', 'DNS', 'E12', ''),
(44, 'W celu dokonania aktualizacji zainstalowanego systemu operacyjnego Linux Ubuntu należy użyć polecenia', 'apt-get upgrade', 'system update', 'kernel update', 'yum upgrade', 'E12', ''),
(45, 'Przedstawiony na rysunku symbol oznacza produkt', 'adający się do powtórnego przetworzenia', 'przeznaczony do powtórnego użycia', 'biodegradowalny', 'niebezpieczny.', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2015/06/e12_symbol2.png'),
(42, 'Na rysunku przedstawiono taśmę (kabel) złącza', 'ATA', 'SAS', 'SCSI', 'SATA', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_tasma.jpg'),
(43, '\"Przedstawiona na rysunku karta rozszerzeń posiada chłodzenie', 'pasywne', 'symetryczne', 'aktywne', 'wymuszone', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/02/e12_chlodzenie.png'),
(41, 'Najbardziej prawdopodobną przyczyną słabej jakości wydruku drukarki laserowej, charakteryzującego się widocznym rozmazywaniem tonera, jest', 'zbyt niska temperatura utrwalacza', 'uszkodzenie rolek', 'zacięcie papieru', 'zanieczyszczenie wnętrza drukarki', 'E12', ''),
(40, 'Przedstawiona na rysunku karta rozszerzeń posiada chłodzenie', 'pasywne', 'aktywne', 'symetryczne', 'wymuszone', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/02/e12_chlodzenie.png'),
(39, 'Na rysunku przedstawiono taśmę (kabel) złącza', 'ATA', 'SATA', 'SAS', 'SCSI', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_tasma.jpg'),
(38, 'Najbardziej prawdopodobną przyczyną słabej jakości wydruku drukarki laserowej, charakteryzującego się widocznym rozmazywaniem tonera, jest', 'zbyt niska temperatura utrwalacza', 'uszkodzenie rolek.', 'zacięcie papieru', 'zanieczyszczenie wnętrza drukarki', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_wydruk.png'),
(36, 'Wskaż najbardziej prawdopodobną przyczynę wystąpienia komunikatu „CMOS checksum error press F1 to continue press DEL to setup” przy uruchamianiu komputera', 'Rozładowana bateria podtrzymująca ustawienia BIOS-u', 'Skasowana zawartość pamięci CMOS', 'Usunięty plik setup', 'szkodzona karta graficzna', 'E12', ''),
(37, 'Przedstawiony na rysunku symbol graficzny oznacza opakowanie', 'nadające się do recyklingu', 'zgodne z normą TCO.', 'wielokrotnego użytku', 'wyprodukowane z surowców wtórnych', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2014/09/e12_symbol.png'),
(35, 'Aby przywrócić ustawienia domyślne płyty głównej w przypadku, gdy nie ma możliwości uruchomienia programu BIOS Setup, należy', 'przełożyć zworkę na płycie głównej.', 'zaktualizować BIOS Setup', 'uruchomić ponownie system', 'doładować baterię na płycie głównej', 'E12', ''),
(34, 'Licencja CAL (Client Access License) daje użytkownikowi prawo', 'korzystania z usług udostępnionych przez serwer.', 'używania programu bezterminowo', 'zmiany kodu programu', 'kopiowania programu na nośniki zewnętrzne', 'E12', ''),
(32, '\"Po instalacji z domyślnymi ustawieniami system Windows XP nie obsługuje systemu plików', 'EXT', 'FAT16', 'FAT32', 'NTFS', 'E12', ''),
(33, 'Konwerter RAMDAC przetwarza sygnał', 'cyfrowy na analogowy', 'nalogowy na cyfrowy', 'zmienny na stały', 'stały na zmienny', 'E12', ''),
(31, 'W komputerach wykonujących zadania serwerowe, wymagające dużej wydajności, należy zastosować dysk z interfejsem', 'SAS', 'ATA', 'SATA', 'USB', 'E12', ''),
(30, 'W drukarce laserowej do utrwalania druku na papierze służą', 'ozgrzane wałki.', 'głowice piezoelektryczne.', 'bęben transferowy.', 'promienie lasera', 'E12', ''),
(27, 'Który aplet panelu sterowania w systemie Windows 7 umożliwia ograniczenie czasu pracy użytkownika na komputerze?', 'Kontrola rodzicielska', 'Windows Defender', 'Centrum akcji', 'Konta użytkowników', 'E12', ''),
(28, 'Interfejsem wewnętrznym komputera jest', 'AGP', 'IrDA', 'PCMCIA', 'D-SUB', 'E12', ''),
(29, 'Głównym celem mechanizmu Plug and Play jest', 'wykrycie nowo podłączonego sprzętu i automatycznie przydzielenie mu zasobów', 'ponowne uruchomienie ostatnio uruchomionej gry', 'automatyczne tworzenie kopii danych na nowo podłączonym nośniku pamięci', 'automatyczne odinstalowanie sterowników, które przez dłuższy czas nie były używane', 'E12', ''),
(26, 'Wskaż złącze, które nie występuje w zasilaczach ATX', 'DE-15/HD-15', 'SATA Connector', 'PCI-E', 'MPC', 'E12', ''),
(25, 'Którego polecenia należy użyć w konsoli do naprawy błędów na dysku?', 'chkdsk', 'diskcomp', 'chdir', 'subst', 'E12', ''),
(24, 'Wewnętrzny dysk twardy IDE zasilany jest poprzez złącze typu', 'Molex', 'ATX', 'PCI-E', 'SATA', 'E12', ''),
(23, 'Interfejs HDMI komputera pozwala na przesyłanie sygnału', 'cyfrowego audio i video', 'analogowego audio i video', 'cyfrowego audio', 'cyfrowego video', 'E12', ''),
(22, 'W systemie Linux plik ma ustawione uprawnienia na 541. Właściciel może plik', 'odczytać i wykonać', 'odczytać, zapisać i wykonać', 'modyfikować.', 'tylko wykonać', 'E12', ''),
(20, '\"W technologii Blu-ray nośnik jednokrotnego zapisu oznaczany jest', 'BD-R', 'BD-RE', 'BD-ROM', 'BD', 'E12', ''),
(21, 'W systemie Linux do monitorowania w czasie rzeczywistym uruchomionych procesów służy polecenie', 'ps', 'proc', 'sed', 'sysinfo', 'E12', ''),
(18, 'Pliki, które znajdują się w koszu, można odzyskać poprzez zastosowanie polecenia', 'Przywróć', 'Cofnij', 'Wróć', 'Ponów', 'E12', ''),
(19, 'W celu powiększenia lub zmniejszenia ikony na pulpicie należy kręcić kółkiem myszy, przytrzymując jednocześnie klawisz', 'CTRL', 'SHIFT', 'ALT', 'TAB', 'E12', ''),
(17, 'System S.M.A.R.T. przeznaczony jest do monitorowania pracy i wykrywania błędów', 'dysków twardych', 'kart rozszerzeń', 'płyty głównej', 'procesora', 'E12', ''),
(16, 'Kopia różnicowa polega na', 'kopiowaniu tylko plików, które zostały utworzone lub zmienione od czasu utworzenia ostatniej kopii pełnej', 'kopiowaniu tylko plików, które zostały utworzone od czasu ostatniej kopii pełnej', 'kopiowaniu tylko tej części plików, która została dopisana od czasu utworzenia ostatniej kopii pełnej', 'kopiowaniu tylko plików, które zostały zmienione od czasu utworzenia ostatniej kopii pełnej', 'E12', ''),
(15, 'Bezpłatnym programem antywirusowym dostarczanym przez Microsoft dla użytkowników legalnych wersji systemu operacyjnego Windows jest', 'Microsoft Security Essentials', 'Microsoft Free Antywirus', 'Windows Antywirus', 'Windows Defender', 'E12', ''),
(14, 'W systemie Windows XP do zmiany typu systemu plików na dysku z FAT32 na NTFS należy skorzystać z programu', 'convert ', 'attrib', 'replace', 'cnvrt', 'E12', ''),
(12, 'Jednostka obliczeęń zmieennoprzecinkowych to', 'FPU', 'RPU', 'ALU', 'AND', 'E12', ''),
(13, 'Aby uniknąć uszkodzenia układów scalonych, podczas naprawy sprzętu komputerowego należy stosować', 'opaskę antystatyczną', 'gumowe rękawiczki', 'skórzane rękawiczki', 'okulary ochronne', 'E12', ''),
(10, 'Liczba 10011001100 zapisana w postaci heksadecymalnej ma postać', '4CC', '2,00E+04', 'F5A', '998', 'E12', ''),
(11, 'W systemie plików NTFS zmianę nazwy pliku umożliwia uprawnienie', 'modyfikacji', 'zapisu', 'odczytu', 'odczytu i wykonaia', 'E12', ''),
(9, 'W komunikacie o błędzie systemu informacja wyświetlana w postaci heksadecymalnej oznacza', 'kod błędu', 'nazwę sterownika', 'definicję błędu.', 'odnośnik do systemu pomocy', 'E12', ''),
(8, 'Który poziom macierzy RAID zapisuje dane równolegle na kilku dyskach działających jako jedno urządzenie?', 'RAID 0', 'RAID 1', 'RAID 5', 'RAID 3', 'E12', ''),
(4, 'Licencja oprogramowania umożliwiająca darmowe rozpowszechnianie aplikacji to', 'Freeware ', 'OEM', 'MOLP', 'Greenware', 'E12', ''),
(5, 'W przypadku zaschnięcia dysz w drukarce atramentowej spowodowanych długimi przestojami należy w pierwszej kolejności', 'dokonać oczyszczania dysz z poziomu odpowiedniego programu', 'wymienić mechanizm drukujący', 'ustawić wydruk ekonomiczny', 'oczyścić dyszę wacikiem nasączonym olejem syntetycznym.', 'E12', ''),
(6, 'AC-72-89-17-6E-B2 to adres fizyczny karty sieciowej zapisany w postaci', 'Heksadecymalnej', 'Dziesiętnej', 'Oktalnej', 'Binarnej', 'E12', ''),
(7, 'Wielkość plamki monitora LCD jest równa', 'odległości od początku jednego do początku następnego piksela.', 'wielkości obszaru, na którym wyświetla się 1024 pikseli.', 'wielkości jednego piksela wyświetlanego na ekranie', 'wielkości obszaru, na którym można wyświetlić wszystkie kolory obsługiwane przez monitor', 'E12', ''),
(3, 'Ustawienia wszystkich użytkowników komputera zapisane są w gałęzi rejestru o akronimie', 'HKCU', 'HKKC', 'HKCR', 'HKLM', 'E12', ''),
(1, 'Program antyspyware chroni przed', 'programami szpiegującymi', 'programami antywirusowymi', 'programami typu robak', 'atakami typu DoS i DDoS (Denial of Service).', 'E12', ''),
(2, 'Podstawowym mechanizmem ochrony danych znajdujących się na serwerze jest', 'tworzenie kopii bezpieczeństwa', 'włączenie ochrony systemu', 'automatyczne wykonywanie kompresji danych.', 'tworzenie punktu przywracania systemu', 'E12', ''),
(49, 'Programy GRUB, LILO, NTLDR to', 'programy rozruchowe', 'wersje głównego interfejsu sieciowego', 'firmware dla dysku twardego', 'plikacje do aktualizacji BIOS-u.', 'E12', ''),
(50, '\"Który system plików należy wybrać podczas instalacji systemu Linux?', 'EXT4', 'FAT16', 'FAT32', 'NTFS', 'E12', ''),
(51, 'Który typ plików należy utworzyć w systemie operacyjnym do zautomatyzowania najczęściej wykonywanych czynności, takich jak kopiowanie, tworzenie pliku lub folderu?', 'Wsadowy', 'Systemowy', 'Konfiguracyjny', 'Inicjujący', 'E12', ''),
(52, 'Przed wykonaniem prac serwisowych związanych z modyfikacją rejestru systemu Windows należy wykonać', 'kopię rejestru', 'defragmentację dysku', 'oczyszczanie dysku', 'czyszczenie rejestru', 'E12', ''),
(53, 'Przy uruchamianiu się komputera pojawia się komunikat „CMOS checksum error press F1 to continue press DEL to setup„. Wciśnięcie klawisza DEL spowoduje', 'wejście do ustawień BIOS-u komputera.', 'usunięcie pliku setup', 'skasowanie zawartości pamięci CMOS', 'przejście do konfiguracji systemu Windows', 'E12', ''),
(54, 'Który typ pamięci należy umieścić na płycie głównej komputera w miejscu wskazanym strzałką?', 'SD-RAM DDR3', 'SO-DIMM DDR2', 'FLASH', 'SIMM', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2015/06/e12_pamiec.png'),
(55, 'Przyczyną awarii drukarki igłowej może być usterka', 'elektromagnesu', 'dyszy', 'elektrody ładującej', 'utrwalacza termicznego', 'E12', ''),
(56, '\"Przy próbie odzyskania danych z dysku, który został sformatowany, należy skorzystać z programu typu', 'recovery', 'p2p', 'irc', 'sniffer', 'E12', ''),
(57, 'Zgodnie z obowiązującymi przepisami BHP odległość oczu od ekranu monitora powinna wynosić', '40÷75 cm', '75÷110 cm', '39÷49 cm', '20÷39 cm', 'E12', ''),
(58, 'Który z trybów nie jest dostępny dla narzędzia lupa w systemie Windows', 'Płynny', 'Lupy', 'Pełnoekranowy', 'Zadokowany', 'E12', ''),
(59, 'W celu ochrony systemu przed programem posiadającym zdolność replikacji należy zainstalować', 'program antywirusowy', 'program narzędziowy', 'rogram szpiegowski', 'program diagnostyczny', 'E12', ''),
(60, 'Która tablica partycji umożliwia utworzenie do 128 partycji podstawowych na jednym dysku?', 'GPT', 'BOOT', 'MBR', 'NTLDR', 'E12', ''),
(61, 'Aby dane pliku znajdującego się na dysku twardym, zapisane na niesąsiadujących ze sobą klastrach, zostały ułożone tak, by zajmowały sąsiadujące klastry, należy uruchomić', 'defragmentację dysku', 'program scandisk', 'oczyszczanie dysku', 'program chkdsk', 'E12', ''),
(62, 'Do przechowywania części plików programów i danych, które są duże i nie mogą być umieszczone w całości w pamięci, służy', 'plik stronicowania', 'schowek systemu', 'menadżer zadań', 'edytor rejestru', 'E12', ''),
(63, 'Do zamiany kodu źródłowego na program wykonywalny służy', 'kompilator.', 'debugger', 'interpreter', 'emulator', 'E12', ''),
(64, 'Bezprzewodową transmisję danych zapewnia interfejs', 'IrDa', 'DVI', 'HDMI', 'LFH60', 'E12', ''),
(65, '\"Liczba 29A(16) zapisana w systemie binarnym będzie miała postać', '1010011010', '1000011010', '1001011010', '1010010110', 'E12', ''),
(66, 'Program, który umożliwia komunikację między kartą sieciową a systemem operacyjnym, to', 'sterownik', 'middleware', 'sniffer', 'komunikator', 'E12', ''),
(67, 'Do uruchomienia edytora rejestru w systemie Windows należy użyć narzędzia', 'regedit', 'cmd', 'ipconfig', 'msconfig', 'E12', ''),
(68, 'W systemie Windows, wykorzystując wiersz poleceń do zamiany partycji FAT na partycję NTFS bez utraty zawartych na niej danych, należy użyć polecenia', 'convert', 'change', 'format', 'msconfig', 'E12', ''),
(69, 'Aby zapobiec utracie danych w programie do prowadzenia ewidencji uczniów, należy po zakończeniu pracy każdego dnia wykonać', 'kopię zapasową danych programu', 'aktualizację programu', 'aktualizację systemu operacyjnego', 'bezpieczne zamknięcie systemu operacyjnego', 'E12', ''),
(70, 'Która licencja umożliwia bezpłatne wykorzystywanie programu, pod warunkiem, że użytkownik zatroszczy się o środowisko naturalne?', 'Greenware', 'OEM', 'Donationware', 'Adware', 'E12', ''),
(71, 'Jakie rozszerzenie posiadają pakiety instalacyjne systemu operacyjnego Linux?', 'rpm,deb', 'tgz,dmg', 'ini,dll', 'zip,exe', 'E12', ''),
(72, 'Zużyte kasety od drukarek należy', 'przekazać firmie utylizującej tego typu odpady.', 'przekazać do wydziału ochrony środowiska.', 'wyrzucić do pojemnika z odpadami komunalnymi.', 'wyrzucić do pojemnika przeznaczonego na plastik.', 'E12', ''),
(73, 'Na rysunku zamieszczono fragment karty graficznej ze złączem', 'AGP', 'PCI', 'ISA', 'PCI-E', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2015/06/e12_karta3.png'),
(74, 'Na załączonym rysunku przedstawiono operację', 'kompresji danych', 'kasowania danych', 'fuzji danych', 'kompilacji danych ', 'E12', 'http://kwalifikacjewzawodzie.pl/wp-content/uploads/2015/06/e12_operacja.png'),
(75, 'Technika transmisji danych pomiędzy urządzeniem CD/DVD a pamięcią komputera w trybie bezpośredniego dostępu do pamięci to', 'DMA', 'PIO', 'IDE', 'SATA', 'E12', ''),
(76, 'Aby zwolnić miejsce na dysku bez utraty danych, należy wykonać', 'oczyszczanie dysku', 'sprawdzanie dysku', 'backup dysku', 'defragmentację dysku', 'E12', ''),
(77, 'Na nowym komputerze program antywirusowy należy zainstalować', 'zaraz po zainstalowaniu systemu operacyjnego.', 'w trakcie instalacji systemu operacyjnego.', 'przed zainstalowaniem systemu operacyjnego.', 'po zainstalowaniu pobranych z Internetu programów.', 'e12', ''),
(78, 'Wskaż właściwą kolejność operacji przygotowujących nowy laptop do pracy:', 'Montaż baterii, podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, instalacja systemu operacyjnego, wyłączenie laptopa po instalacji systemu operacyjnego.', 'Podłączenie zewnętrznego zasilania sieciowego, włączenia laptopa, instalacja systemu operacyjnego, montaż baterii, wyłączenie laptopa po instalacji systemu operacyjnego.', 'Podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, montaż baterii, instalacja systemu operacyjnego, wyłączenie laptopa po instalacji systemu operacyjnego.', 'Włączenie laptopa, montaż baterii, instalacja systemu operacyjnego, podłączenie zewnętrznego zasilania sieciowego, wyłączenie laptopa po instalacji systemu operacyjnego.', 'e12', ''),
(79, 'W celu dokonania aktualizacji zainstalowanego systemu operacyjnego Linux Ubuntu należy użyć polecenia:', 'apt-get upgrade', 'yum upgrade', 'kernel update', 'system update', 'e12', ''),
(80, 'W systemie operacyjnym Fedora katalogi domowe użytkowników umieszczone są w katalogu:', '/home', '/bin', '/user', '/users', 'e12', ''),
(81, 'W systemie Windows 7 w celu skopiowania katalogu c:\\test wraz z podkatalogami na dysk przenośny f:\\ należy uĪżyć polecenia', 'xcopy c:\\test f:\\test /E', 'copy c:\\test f:\\test /E', 'copy f:\\test c:\\test /E', 'xcopy f:\\test c:\\test /E', 'e12', ''),
(82, 'W systemie Windows XP w celu utworzenia nowego użytkownika o nazwie egzamin z hasłem qwerty\nnależy użyć polecenia', 'net user egzamin qwerty /add', 'useradd egzamin qwerty /add', 'adduser egzamin qwerty /add', 'user net egzamin qwerty /add', 'e12', ''),
(83, 'W systemie operacyjnym Ubuntu konto użytkownika student można usunąć za pomocą polecenia', 'userdel student', 'del user student', 'net user student /del', 'user net student /del', 'e12', ''),
(84, 'W systemie Windows XP do zmiany typu systemu plików z FAT32 na NTFS należy wykorzystać program', 'convert.exe', 'replace.exe', 'subst.exe', 'attrib.exe', 'e12', ''),
(85, 'W systemie operacyjnym Ubuntu do monitorowania w czasie rzeczywistym uruchomionych procesów i programów służy polecenie', 'top', 'ps', 'proc', 'sysinfo', 'e12', ''),
(86, 'Po zainstalowaniu systemu Windows 7 została w BIOS komputera zmieniona konfiguracja dysku SATA z AHCI na IDE. Po ponownym uruchomieniu komputera system będzie', 'resetował się podczas uruchamiania.', 'uruchamiał się bez zmian.', 'działał szybciej.', 'działał wolniej.', 'e12', ''),
(87, 'W systemie operacyjnym Ubuntu do utworzenia archiwum danych należy wykorzystać program', 'tar', 'set', 'sed', 'awk', 'e12', ''),
(88, 'Do zarządzania programami i usługami uruchamianymi wraz ze startem systemu operacyjnego w Windows 7 należy wykorzystać program', 'msconfig.exe', 'config.sys', 'autorun.inf', 'autoexec.bat', 'e12', ''),
(89, 'GRUB, LILO, NTLDR, to:', 'awk', 'set', 'tar', 'sed', 'e12', ''),
(90, 'Którego oprogramowania nie można używać na urządzeniach należących do instytucji rządowych lub edukacyjnych?', 'Microsoft Security Essentials.', 'AbiWord.', 'Microsoft Word.', 'Windows Defender.', 'e12', ''),
(91, 'W dokumentacji płyty głównej jest informacja „Wsparcie dla S/PDIF Out”. Oznacza to, że dana płyta główna zawiera', 'cyfrowe złącze sygnału audio.', 'cyfrowe złącze sygnału video.', 'analogowe złącze sygnału wyjścia video.', 'analogowe złącze sygnału wejścia video.', 'e12', ''),
(92, 'W dokumentacji jednego z elementów składowych komputera zamieszczono informację, że urządzenie wspiera OpenGL. Dokumentacja dotyczy', 'karty graficznej.', 'mikroprocesora.', 'karty sieciowej.', 'dysku twardego.', 'e12', ''),
(93, 'Użytkownik komputera udostępnia publicznie posiadane pliki w sieci Internet. Prawa autorskie zostaną naruszone, gdy udostępni', 'obraz płyty systemu operacyjnego Windows 7 Home.', 'otrzymany dokument urzędowy.', 'własne autorskie filmy z demonstracji ulicznych.', 'wykonane przez siebie zdjęcia obiektów wojskowych.', 'e12', ''),
(94, 'Program WinRaR wyświetlił okienko informacyjne pokazane na rysunku. Z jakiego typu licencji na program korzystał do tej pory użytkownik?', 'Shareware.', 'Adware.', 'Freeware.', 'Public domain.', 'e12', ''),
(95, 'Licencja Windows OEM nie pozwala na wymianę', 'sprawnej płyty głównej na model o lepszych parametrach.', 'sprawnego zasilacza na model o lepszych parametrach.', 'sprawnej karty graficznej na model o lepszych parametrach.', 'sprawnego dysku twardego na model o lepszych parametrach.', 'e12', ''),
(96, 'Która czynność doprowadzi do nieodwracalnej utraty danych, w przypadku uszkodzenia systemu plików?', 'Formatowanie dysku.', 'Włączenie systemu operacyjnego.', 'Skanowanie programem antywirusowym.', 'Przeprowadzenie skanowania scandiskiem.', 'e12', ''),
(97, 'Interfejs SLI (ang. Scalable Link Interface) służy do łączenia', 'dwóch kart graficznych.', 'czytnika kart z płytą główną.', 'napędu Blu-ray z kartą dźwiękową.', 'karty graficznej z odbiornikiem TV.', 'e12', ''),
(98, 'Które konto nie jest kontem wbudowanym w system Windows XP?', 'Admin', 'Gość', 'Pomocnik', 'Administrator', 'e12', ''),
(99, 'Materiałem eksploatacyjnym dla kolorowej drukarki laserowej jest', 'kartridż z tonerem.', 'przetwornik CMOS.', 'podajnik papieru.', 'pamięć wydruku.', 'e12', ''),
(100, 'Zaletą systemu plików NTFS jest', 'możliwość szyfrowania folderów i plików.', 'możliwość sformatowania nośnika o małej pojemności (od 1,44 MiB).', 'zapisywanie plików o nazwie dłuższej niĪ 255 znaków.', 'przechowywanie tylko jednej kopii tabeli plików.', 'e12', ''),
(101, 'Wskaż nieprawidłowy podział dysku MBR na partycje', '1 partycja podstawowa i 2 rozszerzone.', '3 partycje podstawowe i 1 rozszerzona.', '2 partycje podstawowe i 1 rozszerzona.', '1 partycja podstawowa i 1 rozszerzona.', 'e12', ''),
(102, 'Przy uruchamianiu komputera pojawia się komunikat „CMOS checksum error press F1 to continue press DEL to setup”. Wciśnięcie klawisza DEL spowoduje', 'wejście do BIOS-u komputera.', 'usunięcie pliku setup.', 'skasowanie zawartości pamięci CMOS.', 'przejście do konfiguracji systemu Windows.', 'e12', ''),
(103, 'Po uruchomieniu komputera pojawił się komunikat \"Non-system disk or disk error. Replace and strike any key when ready\". Przyczyną może być', 'dyskietka włożona do napędu.', 'brak pliku ntldr.', 'uszkodzony kontroler DMA.', 'skasowany BIOS komputera.', 'e12', ''),
(104, 'System S.M.A.R.T. służy do monitorowania pracy i wykrywania błędów', 'dysków twardych.', 'płyty głównej.', 'kart rozszerzeń.', 'napłdów płyt CD/DVD.', 'e12', ''),
(105, 'Instalowanie systemów Linux oraz Windows 7 przebiegło bez żadnych utrudnień. Systemy zainstalowały się poprawnie z domyślnymi ustawieniami. Na tym samym komputerze, przy identycznej konfiguracji, podczas instalowania systemu Windows XP wyświetlony został komunikat o braku dysków twardych, co może świadczyć o', 'braku sterowników.', 'złym ułożeniu zworek w dysku twardym.', 'uszkodzeniu logicznym dysku twardego.', 'źle ustawionym bootowaniu napędów.', 'e12', ''),
(106, 'Okresowych kopii zapasowych dysków serwera nie można tworzyć na wymiennych nośnikach typu', 'płyty DVD-ROM', 'karty SD', 'karty MMC', 'płyty CD-RW', 'e12', ''),
(107, 'Jaki będzie koszt wymiany karty graficznej w komputerze, jeżli karta kosztuje 250 zł, jej wymiana zajmie pracownikowi serwisu 80 min, a każda rozpoczęta robocza godzina kosztuje 50 zł?', '350,00 zł', '250,00 zł', '300,00 zł', '400,00 zł', 'e12', '');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `questions-abcd`
--
ALTER TABLE `questions-abcd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT dla tabeli `test-e12`
--
ALTER TABLE `test-e12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
