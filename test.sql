-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Jul-2015 às 23:14
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Rel&oacute;gio Tommi Couro Marrom', 'Rel&oacute;gio masculino com pulseira de couro na cor marrom e caixa com fundo azul marinho.', 'vivara-tommi.jpg', '200.50'),
(2, 'PD1002', 'Rel&oacute;gio Tommi Prata Fundo Azul', 'Rel&oacute;gio masculino da Tommi Hilfiger com pulseira de a&ccedil;o na cor prata e caixa com fundo azul marinho.', 'vivara-tommi-2.jpg', '500.85'),
(3, 'PD1003', 'Rel&oacute;gio Prata Borda Vermelha', 'Rel&oacute;gio masculino da Tommi Hilfiger com pulseira em a&ccedil;o, cor prata e borda da caixa em cor vermelha. Fundo da caixa na cor cinza escuro.', 'vivara-tommi-3.jpg', '100.00'),
(4, 'PD1004', 'Rel&oacute;gio Azul Marinho Tommi', 'Rel&oacute;gio masculino com pulseira de borracha e caixa cor azul marinho, estilo esportivo.', 'vivara-tommi-4.jpg', '400.30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
