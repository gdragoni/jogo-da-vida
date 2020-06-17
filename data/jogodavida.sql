-- -------------------------------------------------------------
-- TablePlus 3.6.1(320)
--
-- https://tableplus.com/
--
-- Database: jogodavida
-- Generation Time: 2020-06-17 09:31:49.3420
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `Acao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `HistoricoPartida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_partida` int(11) NOT NULL,
  `id_jogador` int(11) DEFAULT NULL,
  `id_acao` int(11) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_jogador` (`id_jogador`),
  KEY `id_partida` (`id_partida`),
  KEY `id_acao` (`id_acao`),
  CONSTRAINT `HistoricoPartida_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `Jogador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `HistoricoPartida_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `Partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `HistoricoPartida_ibfk_3` FOREIGN KEY (`id_acao`) REFERENCES `Acao` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Jogador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `JogadorPartida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jogador` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `posicao_atual` int(11) NOT NULL,
  `salario_atual` float NOT NULL,
  `dinheiro_atual` float NOT NULL,
  `promissoria_atual` float NOT NULL,
  `id_acao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_partida` (`id_partida`),
  KEY `id_jogador` (`id_jogador`) USING BTREE,
  KEY `id_acao` (`id_acao`),
  CONSTRAINT `JogadorPartida_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `Jogador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `JogadorPartida_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `Partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `JogadorPartida_ibfk_3` FOREIGN KEY (`id_acao`) REFERENCES `Acao` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Partida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jogador_turno_atual` int(11) DEFAULT NULL,
  `jogador_vencedor` int(11) DEFAULT NULL,
  `ativa` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jogador_turno_atual` (`jogador_turno_atual`),
  KEY `jogador_vencedor` (`jogador_vencedor`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Acao` (`id`, `descricao`) VALUES
('1', 'Decisão do turno inicial'),
('2', 'Sua vez'),
('3', 'Andar 1 casa'),
('4', 'Andar 2 casas'),
('5', 'Andar 3 casas'),
('6', 'Andar 4 casas'),
('7', 'Andar 5 casas'),
('8', 'Andar 6 casas'),
('9', 'Entrou na faculdade'),
('10', 'Nova profissão Médico'),
('11', 'Nova profissão Engenheiro'),
('12', 'Nova profissão Enfermeiro'),
('13', 'Nova profissão Quimico'),
('14', 'Nova profissão Empresário'),
('15', 'Nova profissão Dono de lava rápido'),
('16', 'Nova profissão lixeiro'),
('17', 'Ganhou um carro'),
('18', 'Ganhou dinheiro'),
('19', 'Ganhou uma casa'),
('20', 'Ganhou um apartamento'),
('21', 'Ganhou um cachorro'),
('22', 'Ganhou um gato'),
('23', 'Ganhou uma moto'),
('24', 'Comprou uma casa'),
('25', 'Comprou um carro'),
('26', 'Comprou um apartamento'),
('27', 'Comprou um cachorro'),
('28', 'Comprou um gato'),
('29', 'Comprou uma moto'),
('30', 'Comprou um predio'),
('31', 'Vendeu a casa'),
('32', 'Vendeu o carro'),
('33', 'Vendeu o cachorro'),
('34', 'Vendeu o gato'),
('35', 'Vendeu o apartamento'),
('36', 'Vendeu a moto'),
('37', 'Vendeu o predio'),
('38', 'Casou'),
('39', 'Foi na balada'),
('40', 'Ganhou um herança'),
('41', 'Morreu um parente'),
('42', 'Nova profissão bancário'),
('43', 'Comprou um banco'),
('44', 'Nova profissão caixa'),
('45', 'Nova profissão financeiro'),
('46', 'Começou a namorar'),
('47', 'Roubou dinheiro'),
('48', 'Roubou o bens de um amigo'),
('49', 'Robou a namorada do amigo'),
('50', 'Matou um parente');

INSERT INTO `HistoricoPartida` (`id`, `id_partida`, `id_jogador`, `id_acao`, `data`) VALUES
('4', '1', '1', '1', '2020-06-17 12:06:30'),
('5', '1', '2', '1', '2020-06-17 12:06:30'),
('6', '1', '1', '2', '2020-06-17 12:06:30');

INSERT INTO `Jogador` (`id`, `nome`, `senha`) VALUES
('1', 'Gabriel Dragoni', '123'),
('2', 'Leo Leite', '123');

INSERT INTO `JogadorPartida` (`id`, `id_jogador`, `id_partida`, `posicao_atual`, `salario_atual`, `dinheiro_atual`, `promissoria_atual`, `id_acao`) VALUES
('3', '1', '1', '0', '0', '10000', '0', '2'),
('4', '2', '1', '0', '0', '10000', '0', '1');

INSERT INTO `Partida` (`id`, `jogador_turno_atual`, `jogador_vencedor`, `ativa`) VALUES
('1', '1', '0', '1');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;