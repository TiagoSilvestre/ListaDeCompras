-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06-Mar-2017 às 01:09
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listadecompras`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `img_produto` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `preco` float NOT NULL,
  `estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `img_produto`, `id_categoria`, `preco`, `estoque`) VALUES
(1, 'Camisa Manga Larga', 'images/home/gallery2.jpg', 2, 39.99, 10),
(2, 'Vestido Preto', 'images/home/product3.jpg', 2, 19.99, 20),
(3, 'Sueter Azul', 'images/home/product5.jpg', 2, 29.99, 20),
(4, 'Camiseta Branca', 'images/home/product6.jpg', 2, 10.55, 15),
(5, 'Camisa Manga Larga', 'images/home/gallery2.jpg', 2, 39.99, 10),
(6, 'Vestido Preto', 'images/home/product3.jpg', 2, 19.99, 20),
(7, 'Sueter Azul', 'images/home/product5.jpg', 2, 29.99, 20),
(8, 'Camiseta Branca', 'images/home/product6.jpg', 2, 13.99, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
