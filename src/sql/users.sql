-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 09:37 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `authorities` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `username`, `authorities`) VALUES
(2, '$2a$10$VWpOaEIzvYn3v3KagH2zz.RrjawlOZVrARKuyPIWybO6vJ3x11xAm', 'user', 'user'),
(24, '$2a$10$.b./c.KBDQ6roVutoL7E2OLHVnZGNJ7Akyhm0Af.Rfwmd2g0aeHMO', 'admin69', 'admin'),
(25, '$2a$10$7Hgox4nk0reYtkjWSkEgpeS3kAS6WawUfSStxaZq0RgIyoJxwxDjO', 'Arvydas', 'admin'),
(26, '$2a$10$6KU2BrcViwNKIvaBTo5TzujpsOir8y5z71zrK4jCFwU.8dolbII16', 'user2', 'user'),
(27, '$2a$10$JfXaR50pGX9hq2.DFmednu8G9EQ4WcFhjpaIqUviIrSxS8TEmDp3S', 'user3', 'user'),
(28, '$2a$10$pKaXElwr3wjG4eO7JmYRXez4DI6Gjq6i44/imLZPwdBW1AEoguLP.', 'user4', 'user'),
(29, '$2a$10$eDoRrYFlRkJCA/5F/mH9A.tq8qfSZEjJKLOEZ0pSCoSm/bjd4rxsu', 'user5', 'user'),
(30, '$2a$10$wjzq6ITIesRcmExx2fw/T.OUCcDxZBTaxn19qlgRLG6NkfX9DOpRO', 'Petras', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
