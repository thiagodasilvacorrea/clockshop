-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 27/07/2015 às 22:36
-- Versão do servidor: 5.5.43-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `clockshop`
--
CREATE DATABASE IF NOT EXISTS `clockshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `clockshop`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `password` varchar(11) NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
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
-- Fazendo dump de dados para tabela `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Rel&oacute;gio Tommi Couro Marrom', 'Rel&oacute;gio masculino com pulseira de couro na cor marrom e caixa com fundo azul marinho.', 'vivara-tommi.jpg', '200.50'),
(2, 'PD1002', 'Rel&oacute;gio Tommi Prata Fundo Azul', 'Rel&oacute;gio masculino da Tommi Hilfiger com pulseira de a&ccedil;o na cor prata e caixa com fundo azul marinho.', 'vivara-tommi-2.jpg', '500.85'),
(3, 'PD1003', 'Rel&oacute;gio Prata Borda Vermelha', 'Rel&oacute;gio masculino da Tommi Hilfiger com pulseira em a&ccedil;o, cor prata e borda da caixa em cor vermelha. Fundo da caixa na cor cinza escuro.', 'vivara-tommi-3.jpg', '100.00'),
(4, 'PD1004', 'Rel&oacute;gio Azul Marinho Tommi', 'Rel&oacute;gio masculino com pulseira de borracha e caixa cor azul marinho, estilo esportivo.', 'vivara-tommi-4.jpg', '400.30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
