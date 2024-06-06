-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 08:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `detail_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `image`, `title`, `date`, `location`, `detail_link`) VALUES
(1, 'Treasure.jpeg', 'Treasure Relay Tour Reboot 2024', '29 - 30 Maret 2024', 'Jakarta', 'Detail.php'),
(2, 'Sounds Of Downtown.webp', 'Sounds Of Downtown Vol.6', '3 - 4 Agustus 2024', 'Surabaya', '#'),
(3, 'Davemovat.webp', 'Dave Moffatt Asia Tour 2024, Jakarta', '21 April 2024', 'Jakarta', '#'),
(4, 'michael.webp', 'Michael Guang Liang Live In Jakarta', '31 Maret 2024', 'Jakarta', '#'),
(5, 'showwat.webp', 'IVE THE 1ST WORLD TOUR', '24 Agustus 2024', 'Banten', '#'),
(6, 'package.webp', 'Package Collective at Atlas Beach Fest', '20 Maret 2024', 'Bali', '#');

-- --------------------------------------------------------

--
-- Table structure for table `events2`
--

CREATE TABLE `events2` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `detail_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events2`
--

INSERT INTO `events2` (`id`, `title`, `date`, `time`, `location`, `description`, `image`, `detail_link`) VALUES
(1, '2024 Treasurer Relay Tour', '29 April 2024', '18:30 WIB', 'Indonesia GBK Arena Gejayan', 'Para penggemar K-Pop di Indonesia, bersiaplah! TREASURE, grup idola Korea Selatan yang sedang populer, akan kembali mengadakan konser di Jakarta.', 'Treasure.jpeg', 'id=1'),
(2, 'Sounds Of Downtown Vol.6', '3 Agustus 2024 & 4 Agustus 2024', '18.00 WIB - Selesai', 'Bumi Marinir Karang Pilang Surabaya', 'Sounds Of Downtown Vol.6 adalah festival musik tahunan yang digelar di Surabaya, menampilkan beragam artis lokal dan internasional. Acara ini diadakan pada tanggal 3 dan 4 Agustus 2024 di Bumi Marinir Karang Pilang Surabaya. Festival ini terkenal dengan suasana meriah dan lineup yang variatif, mencakup berbagai genre musik dari pop, rock, hip-hop, hingga elektronik. Pengunjung dapat menikmati penampilan live yang enerjik dan mengesankan dari seniman-seniman favorit mereka, sekaligus menemukan bakat-bakat baru di panggung musik. Dengan dimulai pukul 18.00 WIB hingga selesai setiap harinya, Sounds Of Downtown Vol.6 menjanjikan pengalaman musikal yang tak terlupakan bagi para penikmat musik dari berbagai kalangan. \r\n', 'Sounds Of Downtown.webp', 'id=2'),
(3, 'Dave Moffatt Asia Tour 2024, Jakarta', '21 April 2024', '20.00', 'Jakarta', ' Dave Moffatt, mantan anggota band pop legendaris The Moffatts, akan menggelar konser solo di Jakarta sebagai bagian dari tur Asia-nya pada tahun 2024. Konser ini akan berlangsung pada tanggal 21 April 2024 di Bengkel Space, Fairgrounds SCBD Lot 14, Jl Jakarta. Mulai pukul 19:00 WIB hingga selesai, Dave akan membawakan hits klasik dari masa kejayaannya bersama The Moffatts serta lagu-lagu baru dari karier solonya. Dengan vokal yang khas dan penampilan yang karismatik, konser ini menjanjikan malam penuh nostalgia dan kehangatan bagi para penggemar lama maupun baru. Jangan lewatkan kesempatan untuk menikmati lagu-lagu seperti \"Miss You Like Crazy\" dan \"If Life Is So Short\" secara live di salah satu venue paling ikonik di Jakarta.\r\n', 'Davemovat.webp', 'id=3');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `ticket_type` varchar(50) NOT NULL,
  `ticket_quantity` int(11) NOT NULL,
  `ticket_price` decimal(10,2) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Ezra', '$2y$10$kYv671aFqRndsFkR0JtqtuHNVjLBwr0JMXLhh921.un2QyTrFakmO'),
(2, 'Yohanes', '$2y$10$ezw/fljvyxSZR3Z75S2DOuiHfVX3PjqCZcrF5WrZrxgLKkCmiGL3u'),
(3, 'NAHASON', '$2y$10$FFLGjr1HZrLrqkYE.rrzeep/2QGEIYBi8HtMaqmcTrA/7nSXlFjbK'),
(6, 'Kazu', '$2y$10$XYaFjCKzLmp2942Soarrb.yTDVIES20s/AoK/n8YjQt5WYYsYq70C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events2`
--
ALTER TABLE `events2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events2`
--
ALTER TABLE `events2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
