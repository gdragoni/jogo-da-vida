-- -------------------------------------------------------------
-- TablePlus 3.6.1(320)
--
-- https://tableplus.com/
--
-- Database: jogodavida
-- Generation Time: 2020-06-18 00:52:19.4760
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Jogador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `JogadorPartida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jogador` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `posicao_atual` int(11) NOT NULL,
  `salario_atual` float NOT NULL,
  `dinheiro_atual` float NOT NULL,
  `promissoria_atual` float NOT NULL,
  `id_acao` int(11) DEFAULT NULL,
  `primeiro_numero_roleta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_partida` (`id_partida`),
  KEY `id_jogador` (`id_jogador`) USING BTREE,
  KEY `id_acao` (`id_acao`),
  CONSTRAINT `JogadorPartida_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `Jogador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `JogadorPartida_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `Partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `JogadorPartida_ibfk_3` FOREIGN KEY (`id_acao`) REFERENCES `Acao` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Partida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jogador_turno_atual` int(11) DEFAULT NULL,
  `jogador_vencedor` int(11) DEFAULT NULL,
  `ativa` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jogador_turno_atual` (`jogador_turno_atual`),
  KEY `jogador_vencedor` (`jogador_vencedor`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Acao` (`id`, `descricao`) VALUES
('1', 'Decisão do turno inicial'),
('2', 'Sua vez'),
('3', 'Andar 1 casa'),
('4', 'Andar 2 casas'),
('5', 'Andar 3 casas'),
('6', 'Andar 4 casas'),
('7', 'Andar 5 casas'),
('8', 'Andar 6 casas'),
('9', 'Andar 7 casas'),
('10', 'Andar 8 casas'),
('11', 'Andar 9 casas'),
('12', 'Andar 10 casas'),
('13', 'Entrou na faculdade'),
('14', 'Nova profissão Médico'),
('15', 'Nova profissão Engenheiro'),
('16', 'Nova profissão Enfermeiro'),
('17', 'Nova profissão Quimico'),
('18', 'Nova profissão Empresário'),
('19', 'Nova profissão Dono de lava rápido'),
('20', 'Nova profissão lixeiro'),
('21', 'Ganhou um carro'),
('22', 'Ganhou dinheiro'),
('23', 'Ganhou uma casa'),
('24', 'Ganhou um apartamento'),
('25', 'Ganhou um cachorro'),
('26', 'Ganhou um gato'),
('27', 'Ganhou uma moto'),
('28', 'Comprou uma casa'),
('29', 'Comprou um carro'),
('30', 'Comprou um apartamento'),
('31', 'Comprou um cachorro'),
('32', 'Comprou um gato'),
('33', 'Comprou uma moto'),
('34', 'Comprou um predio'),
('35', 'Vendeu a casa'),
('36', 'Vendeu o carro'),
('37', 'Vendeu o cachorro'),
('38', 'Vendeu o gato'),
('39', 'Vendeu o apartamento'),
('40', 'Vendeu a moto'),
('41', 'Vendeu o predio'),
('42', 'Casou'),
('43', 'Foi na balada'),
('44', 'Ganhou um herança'),
('45', 'Morreu um parente'),
('46', 'Nova profissão bancário'),
('47', 'Comprou um banco'),
('48', 'Nova profissão caixa'),
('49', 'Nova profissão financeiro'),
('50', 'Começou a namorar'),
('51', 'Roubou dinheiro'),
('52', 'Roubou o bens de um amigo'),
('53', 'Robou a namorada do amigo'),
('54', 'Matou um parente'),
('55', 'Matou a esposa');

INSERT INTO `HistoricoPartida` (`id`, `id_partida`, `id_jogador`, `id_acao`, `data`) VALUES
('41', '142', '1', '1', '2020-06-18 02:49:44'),
('42', '142', '2', '1', '2020-06-18 02:49:44'),
('43', '142', '2', '2', '2020-06-18 02:49:44');

INSERT INTO `Jogador` (`id`, `nome`, `senha`) VALUES
('1', 'Gabriel Dragoni', 'abc'),
('2', 'Leo Leite', '123'),
('3', 'Marcos Dragoni', '123');

INSERT INTO `JogadorPartida` (`id`, `id_jogador`, `id_partida`, `posicao_atual`, `salario_atual`, `dinheiro_atual`, `promissoria_atual`, `id_acao`, `primeiro_numero_roleta`) VALUES
('17', '1', '142', '0', '0', '10000', '0', '2', '8'),
('18', '2', '142', '0', '0', '10000', '0', '2', '9');

INSERT INTO `Partida` (`id`, `jogador_turno_atual`, `jogador_vencedor`, `ativa`) VALUES
('142', '1', '0', '1');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;