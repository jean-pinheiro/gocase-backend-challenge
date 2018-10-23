-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Out-2018 às 03:40
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gocase`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-10-21 12:44:55', '2018-10-21 12:44:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `purchase_channel` varchar(255) DEFAULT NULL,
  `orders` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `batches`
--

INSERT INTO `batches` (`id`, `reference`, `purchase_channel`, `orders`, `created_at`, `updated_at`) VALUES
(1, '201803-54', 'Site BR', '{BR10203, BR204050, BR502030}', '2018-10-21 20:40:05', '2018-10-21 20:40:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `purchase_channel` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `address` text,
  `delivery_service` varchar(255) DEFAULT NULL,
  `total_value` float DEFAULT NULL,
  `line_items` text,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `reference`, `purchase_channel`, `client_name`, `address`, `delivery_service`, `total_value`, `line_items`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BR102030', 'SiteBR', 'Rogerio Lima', 'Rua Padre Valdevino, 2475 - Aldeota, Fortaleza - CE, 60135-041', 'SEDEX', 123.3, '[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]', 'production', '2018-10-21 20:40:05', '2018-10-21 20:40:05'),
(2, 'DE102030', 'SiteDE', 'Johan Schultz', 'Altenberger Str. 13 50668 Köln, Deutschland', 'FEDEX', 123.3, '[{sku: earphone-standard, color: white}, {sku: powebank-sunshine, capacity: 10000mah}]', 'ready', '2018-10-21 20:40:05', '2018-10-21 20:40:05'),
(3, 'NL102030', 'SiteNL', 'Matjis Snowden', 'Alberdingk Thijmstraat 8II 1054 AJ, Amsterdam, Netherlands', 'NEDEX', 123.3, '[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: earphone-standard, color: white}]', 'ready', '2018-10-21 20:40:05', '2018-10-21 20:40:05'),
(4, 'BR204050', 'SiteBR', 'Diogo Silva', 'Rua Padre Mororo, 475 - Centro, Fortaleza - CE 60015-220', 'SEDEX', 123.3, '[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: earphone-standard, color: white}, {sku: powebank-sunshine, capacity: 10000mah}]', 'ready', '2018-10-21 20:40:05', '2018-10-21 20:40:05'),
(5, 'BR502030', 'SiteBR', 'Mario Sergio', 'R. Ana Bilhar, 572 - Meireles, Fortaleza - CE, 60160-110', 'SEDEX', 123.3, '[{sku: powebank-sunshine, capacity: 10000mah}, {sku: earphone-standard, color: white}]', 'ready', '2018-10-21 20:40:05', '2018-10-21 20:40:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20181021114835'),
('20181021115202');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
