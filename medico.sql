-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 19:01
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr.Carlos Souza', 'Cardiologista', '1111-2222', 'CRM12345'),
(2, 'Dra. Ana Lima', 'Pediatra', '7878-0000', 'CRM7890'),
(3, 'Dr. Marcos Alves', 'Dermatologista', '8889-8987', 'CRM11223'),
(4, 'Dr. Luisa Costa', 'Ginecologista', '9998-9090', 'CRM44556'),
(5, 'Dr. Mark Sloan', 'Ciruegião Plastico', '2345-5658', 'CRM20084'),
(6, 'Dra. Addison Montgomory', 'Neonatal', '3344-5566', 'CRM0406'),
(7, 'Dra. Arizona Robbins', 'Pediatra', '1111-1111', 'CRM54321'),
(8, 'Dra.Callie Torres', 'Ortopedista', '2324-5659', 'CRM9875'),
(9, 'Dr. Carina DeLuca', 'Ginecologista/Obstetra', '9696-2324', 'CRM9876'),
(10, 'Dr. Carina DeLuca', 'Ginecologista/Obstetra', '9696-2324', 'CRM9876');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
