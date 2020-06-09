-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 09/06/2020 às 21:26
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
  `id_jogador` int NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Jogador`
--

CREATE TABLE `Jogador` (
  `id` int NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `acao_numero_atual` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Partida`
--

CREATE TABLE `Partida` (
  `id` int NOT NULL,
  `jogador_turno_atual` int NOT NULL,
  `jogador_vencedor` int NOT NULL,
  `ativa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `HistoricoPartida`
--
ALTER TABLE `HistoricoPartida`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Jogador`
--
ALTER TABLE `Jogador`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `JogadorPartida`
--
ALTER TABLE `JogadorPartida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Partida`
--
ALTER TABLE `Partida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `JogadorPartida`
--
ALTER TABLE `JogadorPartida`
  ADD CONSTRAINT `JogadorPartida_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `Jogador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `JogadorPartida_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `Partida` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
