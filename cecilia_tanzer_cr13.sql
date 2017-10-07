-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Okt 2017 um 17:29
-- Server-Version: 10.1.26-MariaDB
-- PHP-Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cecilia_tanzer_cr13`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `imagelink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` longtext COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `event_begin` datetime NOT NULL,
  `event_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `phone`, `description`, `imagelink`, `contact_person`, `capacity`, `address`, `url`, `type`, `event_begin`, `event_end`) VALUES
(1, 'Klimt and Antiquity – Erotic Encounters', 1256398, 'Erstmals widmet sich eine Ausstellung dem verführerischen Dialog zwischen Gustav Klimt und der antiken Kunst. Dabei geht es um überraschende Übereinstimmungen, das Antikenverständnis des bedeutenden Jugendstilkünstlers und das Ewige großer Themen in der Kunst. Als Ringstraßenmaler hat sich Klimt wiederholt mit der griechischen Antike beschäftigt. Immer subtiler werden diese Verbindungen beim secessionistischen Klimt nach 1900. Gleichzeitig werden über alle zeitlichen und geografischen Räume hinweg faszinierende Parallelen deutlich. Als roter Faden der Ausstellung fungieren Klimts Illustrationen zu den Hetärengesprächen des Lukian (um 120 – 185 n. Chr.). Auf kongeniale Weise verbinden sich die genialen Zeichnungen Klimts mit dem antiken Text zum vielleicht schönsten Buch des europäischen Jugendstils. Ihnen gegenübergestellt werden attische Vasen des 5. vorchristlichen Jahrhunderts, die zu den besten Exemplaren ihrer Art gehören. Zentrale Themen der Ausstellung sind Linienkunst und Eros, die Welt der Hetären, Fläche und Nacktheit.', 'https://events.wien.info/media/full/0x742AEBDB7FE14F72BDBA17AF42A5BFF3.jpeg', 'Mary', 120, 'Vienna', 'https://events.wien.info/en/qpq/klimt-and-antiquity-erotic-encounters/', 'exposition', '2017-10-23 00:00:00', '2017-10-25 00:00:00'),
(2, 'Tosca', 699568475, 'Production: Margarethe Wallmann \r\nStage design and costumes: Nicola Benois\r\n\r\nIn this wonderful music by Puccini, the passion of two lovers is embedded, whose livesand hopes are destroyed by the political caprice and selfish lust of the brutal police chief Scarpia.', 'https://events.wien.info/media/full/04_Tosca_Serafin_1.jpg', 'john', 80, 'xxx', 'https://events.wien.info/en/for/tosca/', 'opera', '2017-10-16 17:00:00', '2017-10-16 20:00:00'),
(3, 'Superstars des Musical', 1235698, 'Hollywood ist der Inbegriff von Ruhm und Glamour, es steht für Stars und Sternchen, Filmklassiker und Blockbuster. Doch egal ob Komödie, Romanze oder Drama – kein Film kommt ohne Musik aus. So entstanden unvergessene Filmmusiken, die beim Hörer sofort große Bilder und Emotionen wach rufen. Die Produktion „Hollywood Dreams“ nimmt den Zuschauer mit auf eine musikalische Reise in die Traumfabrik. Fünf der größten Musicalstars lassen alte und neue Soundtracks lebendig werden und präsentieren die schönsten Songs aus den größten Hollywoodfilmen. ALEXANDER KLAWS, PIA DOUWES, ANDREAS BIEBER, MARK SEIBERT und SABRINA WECKERLIN gehören zu den ganz Großen des deutschen Musicals. In dieser einzigartigen Show stehen sie gemeinsam auf einer Bühne, um das Publikum in die Welt des Films zu entführen.\r\nBegleitet werden die fünf Starsolisten von einer Liveband mit renommierten Musikern unter der Leitung von Mario Stork. Das Konzept und die Regie liegen in den Händen von Andreas Luketa.', 'https://events.wien.info/media/full/superstars.jpg', 'Mary', 250, 'London', 'https://events.wien.info/en/qxk/superstars-des-musical/', 'musical', '2017-10-19 20:00:00', '2017-10-19 23:00:00'),
(4, 'The Addams Family', 100000000, 'Die Addams Family steigt wieder aus der Gruft ! Die bizarre und wundervoll teuflische Familie - Familien-Motto: \"Sic gorgiamus allos subjectatos nunc!\", was ungefähr bedeutet \"Wir verspeisen mit Vorliebe diejenigen, die uns zu bezwingen versuchen!\" - erwacht zu neuem Leben !\r\n\r\nEs begann 2009 mit einem Tryout in Chikago und das Musical von Andrew Lippa wurde mit der Premiere am Broadway im Jahr darauf zu einem Triumph: über 700 Aufführungen en suite ! \"Das Publikum lachte Tränen und schrie nach mehr !\", wie ein Kritiker schrieb. Die deutschsprachige Uraufführung war 2014 und wurde sogar in Ländern wie Australien oder Russland gespielt.', 'https://events.wien.info/media/full/UKPK.jpg', 'John', 120, 'Vienna', 'https://events.wien.info/en/m6o/the-addams-family/', 'musical', '2017-10-01 00:00:00', '2017-10-30 00:00:00'),
(7, 'Adel Tawil ', 25689456, 'Adel Tawil konnte mit seinem letzten Album „Lieder“, das mit 3-fach Platin ausgezeichnet wurde, nahtlos an seine Erfolge mit Ich + Ich anknüpfen. Die gleichnamige Single wurde ebenfalls mit Platin ausgezeichnet und erreichte in den Airplaycharts in Deutschland, Österreich und der Schweiz jeweils die Spitzenposition.\r\nMit über 5 Millionen verkauften Tonträgern gehört er zu den erfolgreichsten Künstlern der Gegenwart und wurde mehrfach mit dem Echo ausgezeichnet, unter anderem in den Kategorien „Erfolgreichster Künstler Rock/Pop National“ sowie „Bester Live Act National“. 2017 veröffentlicht der Berliner Sänger, Songschreiber und Produzent sein\r\nneues Album mit dem er in Deutschland, Österreich und der Schweiz auf Tour geht.', 'https://events.wien.info/media/full/planett.jpg', 'John', 25000, 'Gsometer', 'https://events.wien.info/en/qxx/adel-tawil/', 'concert', '2017-10-05 00:00:00', '2017-10-20 00:00:00'),
(9, 'Rubens. The Power of Transformation', 2147483647, 'Peter Paul Rubens (1577 –1640) was already renowned throughout Europe during his lifetime; today he is rightly celebrated as the greatest painter of the Flemish Baroque. The Kunsthistorisches Museum owns around forty paintings by him and his workshop. They include both exuberantly coloured, multifigured masterpieces such as, for example, the huge altarpieces he produced for the Jesuit church at Antwerp, and intimate compositions like The Fur, Head of Medusa or his late Self-Portrait.\r\n\r\nIn the autumn of 2017 the Kunsthistorisches Museum is\r\nhonouring this giant of European art history with a major\r\nexhibition. The Museum’s extensive holdings will be augmented\r\nby numerous international loans, creating a spectacular ensemble.\r\nVisitors will be able to discover Rubens\' oeuvre in a wide range of\r\nmedia, such as drawings, oil sketches, panel paintings and largescale\r\ncanvases.\r\n\r\nThe main focus of the exhibition is on the master’s creativity:\r\nRubens had an uncanny ability to utilise, to be inspired by the\r\nworks of other artists. He continued this dialogue with the\r\npaintings of precursors and contemporaries throughout his life,\r\nand it impacted his work throughout a career that spanned five\r\ndecades. The artist continually changed and altered his own\r\ncompositions, and often these recourses make his work appear\r\nmodern and dynamic. However, these relationships and\r\nconnections are not recognizable at first glance: the exhibition\r\ntherefore invites the visitor to comprehend and experience\r\nRubens\' surprising perspectives by himself.\r\n\r\nThis is why the show features not only works by Rubens but also\r\nclassical and Renaissance sculptures as well as paintings by great\r\nmasters such as Titian or Caravaggio, works that helped Rubens\r\nto develop his idiosyncratic and radically novel pictorial formulas.', 'https://events.wien.info/media/full/csm_GG515_58b3ab82d8_1.jpg', 'Alexa', 600, 'Vienna', 'https://events.wien.info/en/np9/rubens-the-power-of-transformation/', 'something', '2017-10-27 00:00:00', '2017-10-10 00:00:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
