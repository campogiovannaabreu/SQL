-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 20:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` char(14) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `data_nascimento`) VALUES
(1, 'João Silva', '123.456.789-00', '(11) 98765-4321', 'joao.silva@email.com', 'Rua das Flores, 123 - SP', '1985-06-15'),
(2, 'Maria Oliveira', '234.567.890-11', '(21) 99876-5432', 'maria.oliveira@email.com', 'Av. Brasil, 456 - RJ', '1990-02-20'),
(3, 'Carlos Souza', '345.678.901-22', '(31) 91234-5678', 'carlos.souza@email.com', 'Rua 7 de Setembro, 789 - BH', '1982-11-12'),
(4, 'Fernanda Costa', '456.789.012-33', '(41) 92345-6789', 'fernanda.costa@email.com', 'Praça da Paz, 1010 - Curitiba', '1995-09-25'),
(5, 'Roberto Santos', '567.890.123-44', '(51) 93456-7890', 'roberto.santos@email.com', 'Rua do Sol, 2020 - Porto Alegre', '1980-12-03'),
(6, 'Patrícia Lima', '678.901.234-55', '(61) 94567-8901', 'patricia.lima@email.com', 'Alameda Rio Claro, 3030 - Brasília', '1988-03-30'),
(7, 'Eduardo Pereira', '789.012.345-66', '(71) 95678-9012', 'eduardo.pereira@email.com', 'Rua dos Ventos, 4040 - Salvador', '1992-07-14'),
(8, 'Ana Carolina', '890.123.456-77', '(81) 96789-0123', 'ana.carolina@email.com', 'Av. Atlântica, 5050 - Recife', '1986-10-05'),
(9, 'Lucas Almeida', '901.234.567-88', '(91) 97890-1234', 'lucas.almeida@email.com', 'Rua da Paz, 6060 - Belém', '1993-04-10'),
(10, 'Juliana Rocha', '012.345.678-99', '(85) 99801-2345', 'juliana.rocha@email.com', 'Rua do Campo, 7070 - Fortaleza', '1987-08-22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
