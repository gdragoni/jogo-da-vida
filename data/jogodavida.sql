-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 14/06/2020 às 21:48
-- Versão do servidor: 8.0.20
-- Versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogodavida`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `HistoricoPartida`
--

CREATE TABLE `HistoricoPartida` (
  `id` int NOT NULL,
  `id_partida` int NOT NULL,
  `id_jogador` int DEFAULT NULL,
  `descricao` varchar(300) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `HistoricoPartida`
--

INSERT INTO `HistoricoPartida` (`id`, `id_partida`, `id_jogador`, `descricao`, `data`) VALUES
(118, 51, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 4', '2020-06-14 21:25:32'),
(119, 51, 2, 'Decisão de turno inicial: Leo Leite rodou 1', '2020-06-14 21:25:32'),
(120, 51, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:32'),
(121, 52, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 10', '2020-06-14 21:25:33'),
(122, 52, 2, 'Decisão de turno inicial: Leo Leite rodou 5', '2020-06-14 21:25:33'),
(123, 52, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:33'),
(124, 53, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 6', '2020-06-14 21:25:34'),
(125, 53, 2, 'Decisão de turno inicial: Leo Leite rodou 1', '2020-06-14 21:25:34'),
(126, 53, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:34'),
(127, 54, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 4', '2020-06-14 21:25:35'),
(128, 54, 2, 'Decisão de turno inicial: Leo Leite rodou 9', '2020-06-14 21:25:35'),
(129, 54, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:35'),
(130, 55, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 9', '2020-06-14 21:25:36'),
(131, 55, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:25:36'),
(132, 55, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:36'),
(133, 56, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 4', '2020-06-14 21:25:37'),
(134, 56, 2, 'Decisão de turno inicial: Leo Leite rodou 5', '2020-06-14 21:25:37'),
(135, 56, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:37'),
(136, 57, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 3', '2020-06-14 21:25:37'),
(137, 57, 2, 'Decisão de turno inicial: Leo Leite rodou 10', '2020-06-14 21:25:37'),
(138, 57, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:37'),
(139, 58, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 2', '2020-06-14 21:25:38'),
(140, 58, 2, 'Decisão de turno inicial: Leo Leite rodou 8', '2020-06-14 21:25:38'),
(141, 58, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:38'),
(142, 59, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 2', '2020-06-14 21:25:39'),
(143, 59, 2, 'Decisão de turno inicial: Leo Leite rodou 1', '2020-06-14 21:25:39'),
(144, 59, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:39'),
(145, 60, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 10', '2020-06-14 21:25:40'),
(146, 60, 2, 'Decisão de turno inicial: Leo Leite rodou 6', '2020-06-14 21:25:40'),
(147, 60, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:40'),
(148, 61, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 3', '2020-06-14 21:25:53'),
(149, 61, 2, 'Decisão de turno inicial: Leo Leite rodou 8', '2020-06-14 21:25:53'),
(150, 61, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:53'),
(151, 62, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 8', '2020-06-14 21:25:53'),
(152, 62, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:25:53'),
(153, 62, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:53'),
(154, 63, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 2', '2020-06-14 21:25:54'),
(155, 63, 2, 'Decisão de turno inicial: Leo Leite rodou 4', '2020-06-14 21:25:54'),
(156, 63, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:54'),
(157, 64, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 9', '2020-06-14 21:25:55'),
(158, 64, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:25:55'),
(159, 64, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:55'),
(160, 65, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 9', '2020-06-14 21:25:55'),
(161, 65, 2, 'Decisão de turno inicial: Leo Leite rodou 5', '2020-06-14 21:25:55'),
(162, 65, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:55'),
(163, 66, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 3', '2020-06-14 21:25:56'),
(164, 66, 2, 'Decisão de turno inicial: Leo Leite rodou 6', '2020-06-14 21:25:56'),
(165, 66, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:56'),
(166, 67, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 7', '2020-06-14 21:25:56'),
(167, 67, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:25:56'),
(168, 67, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:56'),
(169, 68, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 4', '2020-06-14 21:25:57'),
(170, 68, 2, 'Decisão de turno inicial: Leo Leite rodou 6', '2020-06-14 21:25:57'),
(171, 68, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:57'),
(172, 69, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 10', '2020-06-14 21:25:58'),
(173, 69, 2, 'Decisão de turno inicial: Leo Leite rodou 6', '2020-06-14 21:25:58'),
(174, 69, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:25:58'),
(175, 70, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 4', '2020-06-14 21:25:58'),
(176, 70, 2, 'Decisão de turno inicial: Leo Leite rodou 8', '2020-06-14 21:25:58'),
(177, 70, NULL, 'Turno de Leo Leite', '2020-06-14 21:25:58'),
(178, 71, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 9', '2020-06-14 21:26:12'),
(179, 71, 2, 'Decisão de turno inicial: Leo Leite rodou 2', '2020-06-14 21:26:12'),
(180, 71, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:12'),
(181, 72, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 8', '2020-06-14 21:26:13'),
(182, 72, 2, 'Decisão de turno inicial: Leo Leite rodou 7', '2020-06-14 21:26:13'),
(183, 72, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:13'),
(184, 73, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 7', '2020-06-14 21:26:13'),
(185, 73, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:26:13'),
(186, 73, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:13'),
(187, 74, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 1', '2020-06-14 21:26:14'),
(188, 74, 2, 'Decisão de turno inicial: Leo Leite rodou 4', '2020-06-14 21:26:14'),
(189, 74, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:14'),
(190, 75, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 6', '2020-06-14 21:26:15'),
(191, 75, 2, 'Decisão de turno inicial: Leo Leite rodou 5', '2020-06-14 21:26:15'),
(192, 75, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:15'),
(193, 76, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 3', '2020-06-14 21:26:15'),
(194, 76, 2, 'Decisão de turno inicial: Leo Leite rodou 8', '2020-06-14 21:26:15'),
(195, 76, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:15'),
(196, 77, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 8', '2020-06-14 21:26:16'),
(197, 77, 2, 'Decisão de turno inicial: Leo Leite rodou 5', '2020-06-14 21:26:16'),
(198, 77, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:16'),
(199, 78, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 10', '2020-06-14 21:26:16'),
(200, 78, 2, 'Decisão de turno inicial: Leo Leite rodou 6', '2020-06-14 21:26:16'),
(201, 78, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:16'),
(202, 79, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 3', '2020-06-14 21:26:17'),
(203, 79, 2, 'Decisão de turno inicial: Leo Leite rodou 9', '2020-06-14 21:26:17'),
(204, 79, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:17'),
(205, 80, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 1', '2020-06-14 21:26:18'),
(206, 80, 2, 'Decisão de turno inicial: Leo Leite rodou 4', '2020-06-14 21:26:18'),
(207, 80, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:18'),
(208, 81, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 6', '2020-06-14 21:26:32'),
(209, 81, 2, 'Decisão de turno inicial: Leo Leite rodou 7', '2020-06-14 21:26:32'),
(210, 81, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:32'),
(211, 82, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 4', '2020-06-14 21:26:32'),
(212, 82, 2, 'Decisão de turno inicial: Leo Leite rodou 1', '2020-06-14 21:26:32'),
(213, 82, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:32'),
(214, 83, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 7', '2020-06-14 21:26:32'),
(215, 83, 2, 'Decisão de turno inicial: Leo Leite rodou 9', '2020-06-14 21:26:32'),
(216, 83, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:32'),
(217, 84, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 7', '2020-06-14 21:26:33'),
(218, 84, 2, 'Decisão de turno inicial: Leo Leite rodou 10', '2020-06-14 21:26:33'),
(219, 84, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:33'),
(220, 85, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 5', '2020-06-14 21:26:33'),
(221, 85, 2, 'Decisão de turno inicial: Leo Leite rodou 2', '2020-06-14 21:26:33'),
(222, 85, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:33'),
(223, 86, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 5', '2020-06-14 21:26:34'),
(224, 86, 2, 'Decisão de turno inicial: Leo Leite rodou 1', '2020-06-14 21:26:34'),
(225, 86, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:26:34'),
(226, 87, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 3', '2020-06-14 21:26:34'),
(227, 87, 2, 'Decisão de turno inicial: Leo Leite rodou 9', '2020-06-14 21:26:34'),
(228, 87, NULL, 'Turno de Leo Leite', '2020-06-14 21:26:34'),
(229, 88, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 5', '2020-06-14 21:27:33'),
(230, 88, 2, 'Decisão de turno inicial: Leo Leite rodou 7', '2020-06-14 21:27:33'),
(231, 88, NULL, 'Turno de Leo Leite', '2020-06-14 21:27:33'),
(232, 89, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 8', '2020-06-14 21:27:35'),
(233, 89, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:27:35'),
(234, 89, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:27:35'),
(235, 90, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 6', '2020-06-14 21:27:37'),
(236, 90, 2, 'Decisão de turno inicial: Leo Leite rodou 7', '2020-06-14 21:27:37'),
(237, 90, NULL, 'Turno de Leo Leite', '2020-06-14 21:27:37'),
(238, 91, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 5', '2020-06-14 21:27:38'),
(239, 91, 2, 'Decisão de turno inicial: Leo Leite rodou 3', '2020-06-14 21:27:38'),
(240, 91, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:27:38'),
(241, 92, 1, 'Decisão de turno inicial: Gabriel Dragoni rodou 9', '2020-06-14 21:27:39'),
(242, 92, 2, 'Decisão de turno inicial: Leo Leite rodou 5', '2020-06-14 21:27:39'),
(243, 92, NULL, 'Turno de Gabriel Dragoni', '2020-06-14 21:27:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Jogador`
--

CREATE TABLE `Jogador` (
  `id` int NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Jogador`
--

INSERT INTO `Jogador` (`id`, `nome`, `senha`) VALUES
(1, 'Gabriel Dragoni', '123'),
(2, 'Leo Leite', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `JogadorPartida`
--

CREATE TABLE `JogadorPartida` (
  `id` int NOT NULL,
  `id_jogador` int NOT NULL,
  `id_partida` int NOT NULL,
  `posicao_atual` int NOT NULL,
  `salario_atual` float NOT NULL,
  `dinheiro_atual` float NOT NULL,
  `promissoria_atual` float NOT NULL,
  `acao_numero_atual` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `JogadorPartida`
--

INSERT INTO `JogadorPartida` (`id`, `id_jogador`, `id_partida`, `posicao_atual`, `salario_atual`, `dinheiro_atual`, `promissoria_atual`, `acao_numero_atual`) VALUES
(1, 1, 1, 0, 0, 10000, 0, NULL),
(2, 2, 2, 0, 0, 10000, 0, NULL),
(3, 1, 2, 0, 0, 10000, 0, NULL),
(4, 1, 1, 0, 0, 10000, 0, NULL),
(5, 2, 1, 0, 0, 10000, 0, NULL),
(10, 1, 12, 0, 0, 10000, 0, NULL),
(11, 2, 12, 0, 0, 10000, 0, NULL),
(12, 1, 13, 0, 0, 10000, 0, NULL),
(13, 2, 13, 0, 0, 10000, 0, NULL),
(14, 1, 14, 0, 0, 10000, 0, NULL),
(15, 2, 14, 0, 0, 10000, 0, NULL),
(16, 1, 15, 0, 0, 10000, 0, NULL),
(17, 2, 15, 0, 0, 10000, 0, NULL),
(18, 1, 16, 0, 0, 10000, 0, NULL),
(19, 2, 16, 0, 0, 10000, 0, NULL),
(20, 1, 17, 0, 0, 10000, 0, NULL),
(21, 2, 17, 0, 0, 10000, 0, NULL),
(22, 1, 18, 0, 0, 10000, 0, NULL),
(23, 2, 18, 0, 0, 10000, 0, NULL),
(24, 1, 19, 0, 0, 10000, 0, NULL),
(25, 2, 19, 0, 0, 10000, 0, NULL),
(26, 1, 20, 0, 0, 10000, 0, NULL),
(27, 2, 20, 0, 0, 10000, 0, NULL),
(28, 1, 21, 0, 0, 10000, 0, NULL),
(29, 2, 21, 0, 0, 10000, 0, NULL),
(30, 1, 22, 0, 0, 10000, 0, NULL),
(31, 2, 22, 0, 0, 10000, 0, NULL),
(32, 1, 23, 0, 0, 10000, 0, NULL),
(33, 2, 23, 0, 0, 10000, 0, NULL),
(34, 1, 24, 0, 0, 10000, 0, NULL),
(35, 2, 24, 0, 0, 10000, 0, NULL),
(36, 1, 25, 0, 0, 10000, 0, NULL),
(37, 2, 25, 0, 0, 10000, 0, NULL),
(38, 1, 26, 0, 0, 10000, 0, NULL),
(39, 2, 26, 0, 0, 10000, 0, NULL),
(40, 1, 27, 0, 0, 10000, 0, NULL),
(41, 2, 27, 0, 0, 10000, 0, NULL),
(42, 1, 28, 0, 0, 10000, 0, NULL),
(43, 2, 28, 0, 0, 10000, 0, NULL),
(44, 1, 29, 0, 0, 10000, 0, NULL),
(45, 2, 29, 0, 0, 10000, 0, NULL),
(46, 1, 30, 0, 0, 10000, 0, NULL),
(47, 2, 30, 0, 0, 10000, 0, NULL),
(48, 1, 31, 0, 0, 10000, 0, NULL),
(49, 2, 31, 0, 0, 10000, 0, NULL),
(50, 1, 32, 0, 0, 10000, 0, NULL),
(51, 2, 32, 0, 0, 10000, 0, NULL),
(52, 1, 33, 0, 0, 10000, 0, NULL),
(53, 2, 33, 0, 0, 10000, 0, NULL),
(54, 1, 34, 0, 0, 10000, 0, NULL),
(55, 2, 34, 0, 0, 10000, 0, NULL),
(56, 1, 35, 0, 0, 10000, 0, NULL),
(57, 2, 35, 0, 0, 10000, 0, NULL),
(58, 1, 36, 0, 0, 10000, 0, NULL),
(59, 2, 36, 0, 0, 10000, 0, NULL),
(60, 1, 37, 0, 0, 10000, 0, NULL),
(61, 2, 37, 0, 0, 10000, 0, NULL),
(62, 1, 38, 0, 0, 10000, 0, NULL),
(63, 2, 38, 0, 0, 10000, 0, NULL),
(64, 1, 39, 0, 0, 10000, 0, NULL),
(65, 2, 39, 0, 0, 10000, 0, NULL),
(66, 1, 40, 0, 0, 10000, 0, NULL),
(67, 2, 40, 0, 0, 10000, 0, NULL),
(68, 1, 41, 0, 0, 10000, 0, NULL),
(69, 2, 41, 0, 0, 10000, 0, NULL),
(70, 1, 42, 0, 0, 10000, 0, NULL),
(71, 2, 42, 0, 0, 10000, 0, NULL),
(72, 1, 43, 0, 0, 10000, 0, NULL),
(73, 2, 43, 0, 0, 10000, 0, NULL),
(74, 1, 44, 0, 0, 10000, 0, NULL),
(75, 2, 44, 0, 0, 10000, 0, NULL),
(76, 1, 45, 0, 0, 10000, 0, NULL),
(77, 2, 45, 0, 0, 10000, 0, NULL),
(78, 1, 46, 0, 0, 10000, 0, NULL),
(79, 2, 46, 0, 0, 10000, 0, NULL),
(80, 1, 47, 0, 0, 10000, 0, NULL),
(81, 2, 47, 0, 0, 10000, 0, NULL),
(82, 1, 48, 0, 0, 10000, 0, NULL),
(83, 2, 48, 0, 0, 10000, 0, NULL),
(84, 1, 49, 0, 0, 10000, 0, NULL),
(85, 2, 49, 0, 0, 10000, 0, NULL),
(86, 1, 50, 0, 0, 10000, 0, NULL),
(87, 2, 50, 0, 0, 10000, 0, NULL),
(88, 1, 51, 0, 0, 10000, 0, NULL),
(89, 2, 51, 0, 0, 10000, 0, NULL),
(90, 1, 52, 0, 0, 10000, 0, NULL),
(91, 2, 52, 0, 0, 10000, 0, NULL),
(92, 1, 53, 0, 0, 10000, 0, NULL),
(93, 2, 53, 0, 0, 10000, 0, NULL),
(94, 1, 54, 0, 0, 10000, 0, NULL),
(95, 2, 54, 0, 0, 10000, 0, NULL),
(96, 1, 55, 0, 0, 10000, 0, NULL),
(97, 2, 55, 0, 0, 10000, 0, NULL),
(98, 1, 56, 0, 0, 10000, 0, NULL),
(99, 2, 56, 0, 0, 10000, 0, NULL),
(100, 1, 57, 0, 0, 10000, 0, NULL),
(101, 2, 57, 0, 0, 10000, 0, NULL),
(102, 1, 58, 0, 0, 10000, 0, NULL),
(103, 2, 58, 0, 0, 10000, 0, NULL),
(104, 1, 59, 0, 0, 10000, 0, NULL),
(105, 2, 59, 0, 0, 10000, 0, NULL),
(106, 1, 60, 0, 0, 10000, 0, NULL),
(107, 2, 60, 0, 0, 10000, 0, NULL),
(108, 1, 61, 0, 0, 10000, 0, NULL),
(109, 2, 61, 0, 0, 10000, 0, NULL),
(110, 1, 62, 0, 0, 10000, 0, NULL),
(111, 2, 62, 0, 0, 10000, 0, NULL),
(112, 1, 63, 0, 0, 10000, 0, NULL),
(113, 2, 63, 0, 0, 10000, 0, NULL),
(114, 1, 64, 0, 0, 10000, 0, NULL),
(115, 2, 64, 0, 0, 10000, 0, NULL),
(116, 1, 65, 0, 0, 10000, 0, NULL),
(117, 2, 65, 0, 0, 10000, 0, NULL),
(118, 1, 66, 0, 0, 10000, 0, NULL),
(119, 2, 66, 0, 0, 10000, 0, NULL),
(120, 1, 67, 0, 0, 10000, 0, NULL),
(121, 2, 67, 0, 0, 10000, 0, NULL),
(122, 1, 68, 0, 0, 10000, 0, NULL),
(123, 2, 68, 0, 0, 10000, 0, NULL),
(124, 1, 69, 0, 0, 10000, 0, NULL),
(125, 2, 69, 0, 0, 10000, 0, NULL),
(126, 1, 70, 0, 0, 10000, 0, NULL),
(127, 2, 70, 0, 0, 10000, 0, NULL),
(128, 1, 71, 0, 0, 10000, 0, NULL),
(129, 2, 71, 0, 0, 10000, 0, NULL),
(130, 1, 72, 0, 0, 10000, 0, NULL),
(131, 2, 72, 0, 0, 10000, 0, NULL),
(132, 1, 73, 0, 0, 10000, 0, NULL),
(133, 2, 73, 0, 0, 10000, 0, NULL),
(134, 1, 74, 0, 0, 10000, 0, NULL),
(135, 2, 74, 0, 0, 10000, 0, NULL),
(136, 1, 75, 0, 0, 10000, 0, NULL),
(137, 2, 75, 0, 0, 10000, 0, NULL),
(138, 1, 76, 0, 0, 10000, 0, NULL),
(139, 2, 76, 0, 0, 10000, 0, NULL),
(140, 1, 77, 0, 0, 10000, 0, NULL),
(141, 2, 77, 0, 0, 10000, 0, NULL),
(142, 1, 78, 0, 0, 10000, 0, NULL),
(143, 2, 78, 0, 0, 10000, 0, NULL),
(144, 1, 79, 0, 0, 10000, 0, NULL),
(145, 2, 79, 0, 0, 10000, 0, NULL),
(146, 1, 80, 0, 0, 10000, 0, NULL),
(147, 2, 80, 0, 0, 10000, 0, NULL),
(148, 1, 81, 0, 0, 10000, 0, NULL),
(149, 2, 81, 0, 0, 10000, 0, NULL),
(150, 1, 82, 0, 0, 10000, 0, NULL),
(151, 2, 82, 0, 0, 10000, 0, NULL),
(152, 1, 83, 0, 0, 10000, 0, NULL),
(153, 2, 83, 0, 0, 10000, 0, NULL),
(154, 1, 84, 0, 0, 10000, 0, NULL),
(155, 2, 84, 0, 0, 10000, 0, NULL),
(156, 1, 85, 0, 0, 10000, 0, NULL),
(157, 2, 85, 0, 0, 10000, 0, NULL),
(158, 1, 86, 0, 0, 10000, 0, NULL),
(159, 2, 86, 0, 0, 10000, 0, NULL),
(160, 1, 87, 0, 0, 10000, 0, NULL),
(161, 2, 87, 0, 0, 10000, 0, NULL),
(162, 1, 88, 0, 0, 10000, 0, NULL),
(163, 2, 88, 0, 0, 10000, 0, NULL),
(164, 1, 89, 0, 0, 10000, 0, NULL),
(165, 2, 89, 0, 0, 10000, 0, NULL),
(166, 1, 90, 0, 0, 10000, 0, NULL),
(167, 2, 90, 0, 0, 10000, 0, NULL),
(168, 1, 91, 0, 0, 10000, 0, NULL),
(169, 2, 91, 0, 0, 10000, 0, NULL),
(170, 1, 92, 0, 0, 10000, 0, NULL),
(171, 2, 92, 0, 0, 10000, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Partida`
--

CREATE TABLE `Partida` (
  `id` int NOT NULL,
  `jogador_turno_atual` int DEFAULT NULL,
  `jogador_vencedor` int DEFAULT NULL,
  `ativa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Partida`
--

INSERT INTO `Partida` (`id`, `jogador_turno_atual`, `jogador_vencedor`, `ativa`) VALUES
(1, 1, 0, 1),
(2, 1, 0, 1),
(12, 1, 0, 1),
(13, 1, 0, 1),
(14, 1, 0, 1),
(15, 1, 0, 1),
(16, 1, 0, 1),
(17, 1, 0, 1),
(18, 1, 0, 1),
(19, 1, 0, 1),
(20, 1, 0, 1),
(21, 1, 0, 1),
(22, 1, 0, 1),
(23, 1, 0, 1),
(24, 1, 0, 1),
(25, 1, 0, 1),
(26, 1, 0, 1),
(27, 1, 0, 1),
(28, 1, 0, 1),
(29, 1, 0, 1),
(30, 1, 0, 1),
(31, 1, 0, 1),
(32, 1, 0, 1),
(33, 1, 0, 1),
(34, 1, 0, 1),
(35, 1, 0, 1),
(36, 1, 0, 1),
(37, 1, 0, 1),
(38, 1, 0, 1),
(39, 1, 0, 1),
(40, 1, 0, 1),
(41, 1, 0, 1),
(42, 1, 0, 1),
(43, 1, 0, 1),
(44, 1, 0, 1),
(45, 1, 0, 1),
(46, 1, 0, 1),
(47, 1, 0, 1),
(48, 1, 0, 1),
(49, 1, 0, 1),
(50, 1, 0, 1),
(51, 1, 0, 1),
(52, 1, 0, 1),
(53, 1, 0, 1),
(54, 1, 0, 1),
(55, 1, 0, 1),
(56, 1, 0, 1),
(57, 1, 0, 1),
(58, 1, 0, 1),
(59, 1, 0, 1),
(60, 1, 0, 1),
(61, 1, 0, 1),
(62, 1, 0, 1),
(63, 1, 0, 1),
(64, 1, 0, 1),
(65, 1, 0, 1),
(66, 1, 0, 1),
(67, 1, 0, 1),
(68, 1, 0, 1),
(69, 1, 0, 1),
(70, 1, 0, 1),
(71, 1, 0, 1),
(72, 1, 0, 1),
(73, 1, 0, 1),
(74, 1, 0, 1),
(75, 1, 0, 1),
(76, 1, 0, 1),
(77, 1, 0, 1),
(78, 1, 0, 1),
(79, 1, 0, 1),
(80, 1, 0, 1),
(81, 1, 0, 1),
(82, 1, 0, 1),
(83, 1, 0, 1),
(84, 1, 0, 1),
(85, 1, 0, 1),
(86, 1, 0, 1),
(87, 1, 0, 1),
(88, 1, 0, 1),
(89, 1, 0, 1),
(90, 1, 0, 1),
(91, 1, 0, 1),
(92, 1, 0, 1);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `HistoricoPartida`
--
ALTER TABLE `HistoricoPartida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jogador` (`id_jogador`),
  ADD KEY `id_partida` (`id_partida`);

--
-- Índices de tabela `Jogador`
--
ALTER TABLE `Jogador`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `JogadorPartida`
--
ALTER TABLE `JogadorPartida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partida` (`id_partida`),
  ADD KEY `id_jogador` (`id_jogador`) USING BTREE;

--
-- Índices de tabela `Partida`
--
ALTER TABLE `Partida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jogador_turno_atual` (`jogador_turno_atual`),
  ADD KEY `jogador_vencedor` (`jogador_vencedor`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `HistoricoPartida`
--
ALTER TABLE `HistoricoPartida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT de tabela `Jogador`
--
ALTER TABLE `Jogador`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `JogadorPartida`
--
ALTER TABLE `JogadorPartida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de tabela `Partida`
--
ALTER TABLE `Partida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `HistoricoPartida`
--
ALTER TABLE `HistoricoPartida`
  ADD CONSTRAINT `HistoricoPartida_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `Jogador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `HistoricoPartida_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `Partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `JogadorPartida`
--
ALTER TABLE `JogadorPartida`
  ADD CONSTRAINT `JogadorPartida_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `Jogador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `JogadorPartida_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `Partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
