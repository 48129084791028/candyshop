-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 28 2022 г., 16:35
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `delivery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `name_adr` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `id_user`, `name_adr`, `address`) VALUES
(29, 56, '', 'kvartirakvartia');

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_product` int NOT NULL,
  `number_product` int NOT NULL,
  `id_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `id_user`, `id_product`, `number_product`, `id_status`) VALUES
(66, 56, 31, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`) VALUES
(1, 'Чипсы', 'imgs\\cat1.png'),
(2, 'Конфеты', 'imgs\\cat2.png'),
(3, 'Газированные напитки', 'imgs\\cat3.png'),
(4, 'Жвачка', 'imgs\\cat4.png'),
(5, 'Мармелад', 'imgs\\cat5.png'),
(6, 'Печенье', 'imgs\\cat6.png'),
(7, 'Молочные напитки', 'imgs\\cat7.png');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(120) NOT NULL,
  `category` int NOT NULL,
  `comp` varchar(200) NOT NULL,
  `imgs` varchar(20) NOT NULL,
  `price` int NOT NULL,
  `weight` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `comp`, `imgs`, `price`, `weight`) VALUES
(11, 'Чипсы Lay\'s в Тубе Картошка и батат со вкусом ямса и свиных ребрышек\r\n', 1, '', 'imgs\\11.png', 290, '90 г.'),
(12, 'Pringles со вкусом Курицы Гриль', 1, '', 'imgs\\12.png', 390, '158 г.'),
(13, 'Чипсы Lay\'s со вкусом Личи\r\n', 1, '', 'imgs\\13.png', 200, '60 г.'),
(14, 'Чипсы Lay\'s со вкусом каштана ', 1, '', 'imgs\\14.png', 200, '60 г.'),
(15, 'Чипсы Lay\'s в Тубе со вкусом каштана \r\n', 1, '', 'imgs\\15.png', 290, '90 г.'),
(16, 'Чипсы Lay\'s со вкусом сакуры', 1, '', 'imgs\\16.png', 290, '90 г.'),
(17, 'Чипсы Pringles Parmesan & Roasted garlic пармезан и жареный чеснок', 1, '', 'imgs\\17.png', 390, '158 г.'),
(18, 'Чипсы Lay\'s со вкусом Сакуры ', 1, '', 'imgs\\18.png', 250, '70 г.'),
(19, 'Чипсы Lay\'s в Тубе Тыква и карамель \r\n', 1, '', 'imgs\\19.png', 290, '90 г.'),
(21, 'Шоколад Hershey\'s Strawberries\'n\'Creme', 2, '', 'imgs\\21.png', 160, ''),
(22, 'Конфеты Белый Скитлс - Skittles White Pouch - (Limited Edition)', 2, '', 'imgs\\22.png', 350, '196 гр.'),
(23, 'Драже Skittles Cloud Pouch Fruits', 2, '', 'imgs\\23.png', 190, ''),
(24, 'Драже Skittles Cloud Pouch Sour', 2, '', 'imgs\\24.png', 190, ''),
(25, 'Бобы Jelly Belly Bean Boozled', 2, '', 'imgs\\25.png', 400, '54 гр.'),
(26, 'Самые кислые конфеты в мире - Toxic Waste', 2, '', 'imgs\\26.png', 300, ''),
(27, 'Конфеты Wonka Nerds Wildberry and Peach', 2, '', 'imgs\\27.png', 250, ''),
(28, 'Самые кислые конфеты в мире Toxic Waste Green', 2, '', 'imgs\\28.png', 300, ''),
(29, 'Самые кислые конфеты в мире Toxic Waste Purple', 2, '', 'imgs\\29.png', 300, ''),
(31, 'Холодный чай Arizona со вкусом персика', 3, '', 'imgs\\31.png', 240, '0.33 л.'),
(32, 'Безалкогольный напиток Mountain Dew ', 3, '', 'imgs\\32.png', 500, '1.5 л.'),
(33, 'Вьетнамский напиток Vinut с соком Арбуза', 3, '', 'imgs\\33.png', 240, '0.33 л.'),
(34, 'Mountain Dew Voltage со вкусом малины и цитруса', 3, '', 'imgs\\34.png', 240, '0.33 л.'),
(35, 'Газировка Sangaria Cider со вкусом Сидра', 3, '', 'imgs\\35.png', 240, '1.5 л.'),
(36, 'Напиток безалкогольный Chupa Chups со вкусом апельсина ', 3, '', 'imgs\\36.png', 240, '0.33 л.'),
(37, 'Напиток безалкогольный Chupa Chups со вкусом дыни', 3, '', 'imgs\\37.png', 240, '0.33 л.'),
(38, 'Напиток безалкогольный Fanta Exotic', 3, '', 'imgs\\38.png', 240, '0.33 л.'),
(39, 'Газировка Sangaria Grape со вкусом винограда', 3, '', 'imgs\\39.png', 240, '1.5 л.'),
(41, 'Жвачка Trident Layers Watermelon + Tropical Fruit ', 4, '', 'imgs\\41.png', 250, ''),
(42, 'Жвачка Big League Chew со вкусом сахарной ваты', 4, '', 'imgs\\42.png', 250, '60 г.'),
(43, 'Жвачка Trident Tropical Twist', 4, '', 'imgs\\43.png', 250, ''),
(44, 'Жвачка резинка STARBURST Juicy Fruit Strawberry', 4, '', 'imgs\\44.png', 250, ''),
(45, 'Жвачка Hubba Bubba triple mix', 4, '', 'imgs\\45.png', 250, '56 г.'),
(46, 'Жевательная резинка Wrigley\'s Big Red', 4, '', 'imgs\\46.png', 250, ''),
(47, 'Жвачка Trident Cinnamon (Корица) ', 4, '', 'imgs\\47.png', 190, '26,6 г.'),
(48, 'Жвачка Wrigley\'s Extra Classic Bubble', 4, '', 'imgs\\48.png', 250, ''),
(49, 'Жвачка Trident Watermelon Twist (арбуз-дыня)', 4, '', 'imgs\\49.png', 250, ''),
(51, 'Жевательный мармелад Jelly Belly Chewy Candy Sour лимон и апельсин', 5, '', 'imgs\\51.png', 300, ''),
(52, 'Мармелад Fini Magic Carpets со вкусом тутти-фрутти', 5, '', 'imgs\\52.png', 300, ''),
(53, 'Мармелад из Бразилии Docile Sour Strawberry Pencils', 5, '', 'imgs\\53.png', 300, ''),
(54, 'Мармелад из Испании Fini Berries - Красные и черные ягоды в обсыпке', 5, '', 'imgs\\54.png', 300, ''),
(55, 'Жвательный мармелад FINI EL TORO Бычьи яйца', 5, '', 'imgs\\55.png', 300, '80 г.'),
(56, 'Мармелад из Бразилии Docile Gelatines Watermelon Slices', 5, '', 'imgs\\56.png', 300, ''),
(57, 'Мармелад Fini Worms червячки в сахаре', 5, '', 'imgs\\57.png', 300, ''),
(58, 'Мармелад Fini Sour Boom Mix', 5, '', 'imgs\\58.png', 300, ''),
(59, 'Жвательный мармелад в кислой леденцовой оболочке Fini Zombie', 5, '', 'imgs\\59.png', 300, '80 г.'),
(61, 'Десерт Pop Tarts Pretzel Cinamon с корицей и солёной карамелью', 6, '', 'imgs\\61.png', 350, ''),
(62, 'Шоколад Hershey\'s Cookies\'n\'Creme', 6, '', 'imgs\\62.png', 350, ''),
(63, 'Десерт Pop Tarts Brown Sugar Cinnamon с корицей ', 6, '', 'imgs\\63.png', 350, ''),
(64, 'Турецкие вафли с молочно-шоколадной начинкой Triplex', 6, '', 'imgs\\64.png', 350, ''),
(65, 'Печенье Milka Choco Minis', 6, '', 'imgs\\65.png', 350, ''),
(66, 'Печенье Bounty Cookies с шоколадом', 6, '', 'imgs\\66.png', 350, ''),
(67, 'Десерт Pop Tarts Blueberry с черникой и глазурью', 6, '', 'imgs\\67.png', 350, ''),
(68, 'Европейские вафли Milka Choco Wafer Cookies', 6, '', 'imgs\\68.png', 350, '150 г.'),
(69, 'Бисквитное печенье Ferrero Nutella Biscuits', 6, '', 'imgs\\69.png', 350, ''),
(71, 'Молочный напиток Bounty', 7, '', 'imgs\\71.png', 300, '350 мл.'),
(72, 'Молочный напиток Maltesers со вкусом шоколада', 7, '', 'imgs\\72.png', 300, '350 мл.'),
(73, 'Молочный напиток Mars', 7, '', 'imgs\\73.png', 300, '350 мл.'),
(74, 'Молочный напиток Mars Protein', 7, '', 'imgs\\74.png', 300, '350 мл.'),
(75, 'Молочный напиток Milky Way ', 7, '', 'imgs\\75.png', 300, '350 мл.'),
(76, 'Молочный напиток M&M\'S Peanut', 7, '', 'imgs\\76.png', 300, '350 мл.'),
(77, 'Молочный напиток M&M\'S Choco', 7, '', 'imgs\\77.png', 300, '350 мл.'),
(78, 'Молочный Коктейль Nesquik Двойной Шоколад', 7, '', 'imgs\\78.png', 300, '414 мл.'),
(79, 'Молочный Коктейль Nesquik Ваниль', 7, '', 'imgs\\79.png', 300, '414 мл.'),
(110, 'Чипсы Lay\'s в Тубе Фиолетовая картошка и Кокос', 1, '', 'imgs\\110.png', 290, '90 г.'),
(111, 'Чипсы Pringles со вкусом азиатских закусок под острым Сычуаньским соусом \r\n', 1, '', 'imgs\\111.png', 350, '110 г.'),
(112, 'Doritos Stax Mexican Chilli Salsa Snacks', 1, '', 'imgs\\112.png', 400, '170 г.'),
(113, 'Doritos STAX Ultimate Cheese', 1, '', 'imgs\\113.png', 400, '170 г.'),
(114, 'Чипсы Pringles со вкусом коктейля Кровавая Мерри', 1, '', 'imgs\\114.png', 350, '110 г.'),
(115, 'Чипсы Cheetos со вкусом креветок ', 1, '', 'imgs\\115.png', 190, '90 г.'),
(116, 'Чипсы Cheetos со вкусом японского стейка', 1, '', 'imgs\\116.png', 190, '90 г.'),
(117, 'Чипсы Mamee со вкусом пурпурного картофеля', 1, '', 'imgs\\117.png', 350, '100 г.'),
(118, 'Чипсы Pringles Flame BBQ', 1, '', 'imgs\\118.png', 350, '160 г.'),
(119, 'Чипсы Pringles Flame Сметана и Лук\r\n', 1, '', 'imgs\\119.png', 350, '160 г.'),
(120, 'Чипсы Pringles Flame Сыр и Соус Чили ', 1, '', 'imgs\\120.png', 350, '160 г.'),
(121, 'Чипсы Lay\'s Stax - Flamas', 1, '', 'imgs\\121.png', 350, '155,9 г.'),
(122, 'Чипсы Lay\'s Stax - Chile Limon', 1, '', 'imgs\\122.png', 350, '155,9 г.'),
(123, 'Чипсы Guinness Rich Chilli', 1, '', 'imgs\\123.png', 500, '150 г.'),
(126, 'Чипсы Guinness Original', 1, '', 'imgs\\126.png', 500, '150 г.'),
(127, 'Чипсы Lay\'s Stax - Sour Cream & Onion', 1, '', 'imgs\\127.png', 350, '155,9 г.'),
(210, 'Самые кислые конфеты в мире Toxic Waste Red', 2, '', 'imgs\\210.png', 300, ''),
(211, 'Жевательный мармелад Jelly Belly Chewy Candy Sour виноград', 2, '', 'imgs\\211.png', 200, ''),
(212, 'Жевательный мармелад Jelly Belly Chewy Candy Sour кислые фрукты', 2, '', 'imgs\\212.png', 200, ''),
(213, 'Драже Chewy Lemonhead XXL', 2, '', 'imgs\\213.png', 350, ''),
(214, 'Конфеты Gobstopper Everlasting', 2, '', 'imgs\\214.png', 350, ''),
(215, 'Конфеты Skittles Wild Berry с дикими ягодами', 2, '', 'imgs\\215.png', 150, ''),
(216, 'Американские драже Mike & Ike Tropical Taifun', 2, '', 'imgs\\216.png', 400, ''),
(217, 'Американские драже Mike & Ike Original Fruit', 2, '', 'imgs\\217.png', 400, ''),
(218, 'Американские драже Mike & Ike Sour Mega Mix', 2, '', 'imgs\\218.png', 400, ''),
(219, 'Мармелад WarHeads Ooze Chews', 2, '', 'imgs\\219.png', 400, ''),
(220, 'Мармеладные драже WarHeads Sour Jelly Beans', 2, '', 'imgs\\220.png', 400, ''),
(221, 'Мармелад из Бразилии Docile Tutti-frutti Pencils', 2, '', 'imgs\\221.png', 200, '70 г.'),
(222, 'Конфеты Skittles Smoothies с новыми смузи-вкусами (Limited Edition)', 2, '', 'imgs\\222.png', 300, '160 г.'),
(223, 'Конфеты Skittles Chewies без глазури', 2, '', 'imgs\\223.png', 400, '176 г.'),
(224, 'Гигантские конфеты Skittles Giants (Limited Edition)', 2, '', 'imgs\\224.png', 150, ''),
(225, 'Twix United Kingdom Шоколадная паста Твикс с кусочками печенья\r\n', 2, '', 'imgs\\225.png', 500, '200 г.'),
(226, 'Шоколадная паста Milky way ', 2, '', 'imgs\\226.png', 500, '200 г.'),
(227, 'Шоколадная паста m&m\'s', 2, '', 'imgs\\227.png', 500, '200 г.'),
(228, 'Драже Milka milkinis Schokodrops', 2, '', 'imgs\\228.png', 300, ''),
(229, 'Wispa United Kingdom Шоколадный батончик Wispa', 2, '', 'imgs\\229.png', 200, '36 г.'),
(231, 'Шоколадное драже M&M\'s Brownie с шоколадной начинкой', 2, '', 'imgs\\231.png', 250, '70 г.'),
(232, 'Шоколадное драже M&M\'s Milk Chocolate c молочным шоколадом', 2, '', 'imgs\\232.png', 300, '87,9 г.'),
(233, 'Шоколадное драже M&M\'S Caramel с карамелью', 2, '', 'imgs\\233.png', 300, '80.2 г.'),
(234, 'Шоколадное драже M&M\'s Pretzel с крендельками', 2, '', 'imgs\\234.png', 300, '80.2 г.'),
(236, 'Шоколадное драже M&M\'s Crunchy caramel с хрустящей карамелью', 2, '', 'imgs\\236.png', 150, '36 г.'),
(237, 'Шоколадное драже M&M\'S Salted Caramel с карамелью и солью', 2, '', 'imgs\\237.png', 300, '70 г.'),
(238, 'Шоколадное драже M&M\'S Salted Caramel с карамелью и солью', 2, '', 'imgs\\238.png', 150, '36 г.'),
(239, 'Шоколадное драже M&M\'S Eggs Пасхальные яйца', 2, '', 'imgs\\239.png', 400, '130 г.'),
(240, 'Шоколадное драже M&M\'s Crunchy caramel с хрустящей карамелью\r\n', 2, '', 'imgs\\240.png', 400, '109 г.'),
(241, 'Шоколадное драже M&M\'S Mix Treat Bag ', 2, '', 'imgs\\241.png', 300, '80 г.'),
(242, 'Драже M&M\'s Fudge Brownie с шоколадной помадкой', 2, '', 'imgs\\242.png', 200, '40 г.'),
(243, 'Шоколадное драже M&M\'s Minis с молочным шоколадом', 2, '', 'imgs\\243.png', 150, '30,6 г.'),
(244, 'Шоколадное драже M&M\'s Brownie с шоколадной начинкой ', 2, '', 'imgs\\244.png', 200, '36 г.'),
(245, 'Шоколадное драже M&M\'S crunchy mint мятные', 2, '', 'imgs\\245.png', 300, '80 г.'),
(246, 'Шоколадное драже M&M\'s Peanut butter c арахисовым маслом ', 2, '', 'imgs\\246.png', 300, '80.2 г.'),
(247, 'Маршмеллоу Fini Clouds Cool Marshmellow', 2, '', 'imgs\\247.png', 200, ' 80 г.'),
(248, 'Маршмеллоу Fini Clouds Marshmallow', 2, '', 'imgs\\248.png', 200, '80 г.'),
(249, 'Маршмеллоу Fini Delices Mallow Fizz ', 2, '', 'imgs\\249.png', 200, '80 г.'),
(250, 'Nawarra Marshmallow cream', 2, '', 'imgs\\250.png', 300, '180 г.'),
(310, 'Напиток Vinut с соком Лонгана', 3, '', 'imgs\\310.png', 240, '0.33 л.'),
(311, 'Mountain Dew Voltage со вкусом малины и цитруса', 3, '', 'imgs\\311.png', 240, '0.33 л.'),
(312, 'Напиток Vinut с соком Ананаса', 3, '', 'imgs\\312.png', 240, '1.5 л.'),
(313, 'Mountain Dew Mango Gem со вкусом манго', 3, '', 'imgs\\313.png', 240, '0.33 л.'),
(314, 'Газировка Schweppes Cola со вкусом Колы', 3, '', 'imgs\\314.png', 240, '0.33 л.'),
(315, 'Напиток Green Cola со стевией со вкусом лимона', 3, '', 'imgs\\315.png', 240, '0.33 л.'),
(316, 'Газировка Canada Dry Ginger Ale с имбирным элем', 3, '', 'imgs\\316.png', 240, '1.5 л.'),
(317, 'Напиток Coca-Cola zero Creations Marshmello limited edition', 3, '', 'imgs\\317.png', 240, '0.33 л.'),
(318, 'Напиток Vinut тропический микс', 3, '', 'imgs\\318.png', 240, '0.33 л.'),
(319, 'Mountain Dew Baja Gold со вкусом ананаса', 3, '', 'imgs\\319.png', 240, '1.5 л.'),
(320, 'Напиток Vinut с соком алоэ вера', 3, '', 'imgs\\320.png', 240, '0.33 л.'),
(321, 'Газированный напиток Coca Cola Vanilla с ванилью', 3, '', 'imgs\\321.png', 240, '0.33 л.'),
(322, 'Газированный напиток Fanta Cream Soda', 3, '', 'imgs\\322.png', 240, '0.33 л.'),
(323, 'Напиток Vinut с соком красной питахайи', 3, '', 'imgs\\323.png', 240, '1.5 л.'),
(324, 'Напиток Coca-Cola zero Creations Intergalactic limited editon ', 3, '', 'imgs\\324.png', 240, '0.33 л.'),
(325, 'Напиток безалкогольный Chupa Chups со вкусом клубники со сливками', 3, '', 'imgs\\325.png', 240, '0.33 л.'),
(326, 'Напиток Green Cola со стевией со вкусом мохито', 3, '', 'imgs\\326.png', 240, '1.5 л.'),
(327, 'Газировка Jelly Belly Французская ваниль', 3, '', 'imgs\\327.png', 240, '0.33 л.'),
(328, 'Газировка Fanta XaXi Sarsi из Вьетнама со вкусом ягоды Сарси', 3, '', 'imgs\\328.png', 240, '0.33 л.'),
(329, 'Газированный напиток Fanta Grape с виноградом', 3, '', 'imgs\\329.png', 240, '1.5 л.'),
(330, 'Газировка Fanta Strawberry&Kiwi с клубникой и киви', 3, '', 'imgs\\330.png', 240, '0.33 л.'),
(331, 'Газировка Fanta Blackberry с черникой из Вьетнама', 3, '', 'imgs\\331.png', 240, '0.33 л.'),
(332, 'Холодный чай Arizona Greеn tea с мёдом', 3, '', 'imgs\\332.png', 240, '1.5 л.'),
(333, 'Напиток безалкогольный Chupa Chups со вкусом винограда', 3, '', 'imgs\\333.png', 240, '0.33 л.'),
(334, 'Вьетнамский напиток Vinut с Саподиллой', 3, '', 'imgs\\334.png', 240, '0.33 л.'),
(335, 'Холодный чай Arizona со вкусом граната', 3, '', 'imgs\\335.png', 240, '0.33 л.'),
(336, 'Напиток Fanta Madness со вкусом винограда', 3, '', 'imgs\\336.png', 240, '1.5 л.'),
(337, 'Газировка Sangaria Melon со вкусом дыни', 3, '', 'imgs\\337.png', 240, '0.33 л.'),
(338, 'Газировка Schweppes Orange', 3, '', 'imgs\\338.png', 240, '0.33 л.'),
(339, 'Газировка Fanta Elderflower&Lemon с бузиной и лимоном', 3, '', 'imgs\\339.png', 240, '1.5 л.'),
(340, 'Газировка Schweppes Mojito', 3, '', 'imgs\\340.png', 240, '0.33 л.'),
(341, 'Газировка Fanta Orange Zero без сахара', 3, '', 'imgs\\341.png', 240, '0.33 л.'),
(410, 'Жвачка Toxic Waste Goop Gum с кислым центром', 4, '', 'imgs\\410.png', 250, ' 43,5 г.'),
(411, 'Жвачка Hubba Bubba Малина', 4, '', 'imgs\\411.png', 250, '56 г.'),
(412, 'Жвачка Big League Chew Original ', 4, '', 'imgs\\412.png', 250, '60 г.'),
(413, 'Жвачка Hubba Bubba Fancy Fruit Фруктовый микс ', 4, '', 'imgs\\413.png', 250, '56 г.'),
(414, 'Жвачка STARBURST Juicy Fruit Cherry', 4, '', 'imgs\\414.png', 250, ''),
(415, 'Жвачка Ice Breakers Ice Cubes Peppermint ', 4, '', 'imgs\\415.png', 190, '23 г.'),
(416, 'Жвачка Trident Dragon Fruit Lychee ', 4, '', 'imgs\\416.png', 200, '30 г.'),
(510, 'Мармелад Trolli Супер мозг', 5, '', 'imgs\\510.png', 300, ''),
(511, 'Жевательный мармелад Katjes - Wonderland Black Edition', 5, '', 'imgs\\511.png', 300, ''),
(512, 'Мармелад Fini Pirate Skulls Черепа с начинкой', 5, '', 'imgs\\512.png', 300, ''),
(513, 'Жевательный мармелад Katjes Ушки Мишки', 5, '', 'imgs\\513.png', 300, ''),
(514, 'Мармелад Fini Worms червячки прозрачные без сахара', 5, '', 'imgs\\514.png', 300, ''),
(515, 'Мармелад Vidal Bottles со вкусом Тутти-Фрутти\r\n', 5, '', 'imgs\\515.png', 300, ''),
(610, 'Вафли Ferrero Hanuta', 6, '', 'imgs\\610.png', 350, ''),
(611, 'Печенье Twix Soft Centres с начинкой', 6, '', 'imgs\\611.png', 350, ''),
(612, 'Печенье Milka Jaffa Raspberry с малиновым джемом', 6, '', 'imgs\\612.png', 350, ''),
(613, 'Десерт Pop Tarts Chocolate Chip - Шоколадные капельки', 6, '', 'imgs\\613.png', 350, ''),
(614, 'Печенье Milka Cookie Loop', 6, '', 'imgs\\614.png', 350, ''),
(615, 'Палочки с кремом Oreo Wafer Roll Choco', 6, '', 'imgs\\615.png', 350, ''),
(616, 'Палочки с кремом Oreo Wafer Roll', 6, '', 'imgs\\616.png', 350, ''),
(617, 'Печенье Milka Lila Stix в молочном шоколаде', 6, '', 'imgs\\617.png', 350, ''),
(618, 'Бисквиты Kinder Happy Hippo с фундуком', 6, '', 'imgs\\618.png', 350, ''),
(619, 'Бисквиты Kinder Happy Hippo Cacao с шоколадно-молочной начинкой', 6, '', 'imgs\\619.png', 350, ''),
(620, 'Шоколад Kinder Chocolate Mini', 6, '', 'imgs\\620.png', 350, '120 г.'),
(621, 'Milka Moments Oreo', 6, '', 'imgs\\621.png', 350, ''),
(622, 'Печенье M&M\'s Double Chocolate Cookies', 6, '', 'imgs\\622.png', 350, ''),
(710, 'Молочный Коктейль Nesquik Шоколад', 7, '', 'imgs\\710.png', 300, '350 мл.');

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text_review` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'принят'),
(3, 'в доставке'),
(4, 'доставлен');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `role` tinyint(1) DEFAULT '0',
  `id_addr` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`, `id_addr`) VALUES
(26, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, NULL),
(56, 'mmm', 'mm22@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '87123486126', NULL, 29);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `status` (`id_status`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_addr` (`id_addr`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `basket_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_addr`) REFERENCES `address` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
