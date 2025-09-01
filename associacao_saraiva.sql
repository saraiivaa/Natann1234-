-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 13:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_saraiva`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associados` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `data_de_associados` date NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `profissao` varchar(255) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associados`, `nome_completo`, `e_mail`, `cidade`, `comunidade`, `cep`, `data_de_associados`, `telefone`, `profissao`, `cpf`) VALUES
(1, 'saraiva', 'saraiva12@gmail.com', 'São Francisco', 'morro', '39300000', '2023-06-10', '38997409872', 'estudante', '132.456.987'),
(2, 'joao', 'joao121@gmail.com', 'São romao', 'icarai', '39343000', '2023-02-10', '38999309872', 'professor', '112.476.097'),
(3, 'pedro', 'pedro012@gmail.com', 'São Paulo', 'zona norte', '28700000', '0000-00-00', '38997489872', 'programador', '046.424.098'),
(4, 'bernardo', 'benarado69@gmail.com', 'Belo Horizonte', 'zona sul', '06700000', '0000-00-00', '38990345872', 'trabalhador rural', '987.043.987'),
(5, 'yuri', 'yuri132@gmail.com', 'icarai', 'vilarica', '87\r\n 143000', '2025-06-24', '38999209872', 'caminhoneiro', '938.234.987');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuidor` int(255) NOT NULL,
  `data_de_vencimento` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_e_ano_referencia` varchar(255) NOT NULL,
  `pedencia` varchar(255) NOT NULL,
  `data_de_pagamento` date NOT NULL,
  `status` int(255) NOT NULL,
  `id_associados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contribuicao`
--

INSERT INTO `contribuicao` (`id_contribuidor`, `data_de_vencimento`, `valor_pago`, `mes_e_ano_referencia`, `pedencia`, `data_de_pagamento`, `status`, `id_associados`) VALUES
(1, '0000-00-00', 2025, '23,54', 'nao possui', '2025-08-28', 0, 1),
(2, '0000-00-00', 2025, '98,54', 'nao possui', '2025-09-29', 0, 2),
(3, '0000-00-00', 2025, '50', 'possui', '2025-12-12', 0, 3),
(4, '0000-00-00', 2025, '35,78', 'nao possui', '2025-06-23', 0, 4),
(5, '0000-00-00', 2025, '29,72', 'possui', '2025-02-13', 0, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associados`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuidor`),
  ADD KEY `id_associados` (`id_associados`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD CONSTRAINT `contribuicao_ibfk_1` FOREIGN KEY (`id_associados`) REFERENCES `associados` (`id_associados`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
