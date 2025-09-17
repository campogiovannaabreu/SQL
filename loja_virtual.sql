-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:50
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
-- Banco de dados: `loja_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `Endereco` text DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Estado` varchar(2) DEFAULT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `DataCadastro` datetime NOT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nome`, `Email`, `Senha`, `CPF`, `Endereco`, `Cidade`, `Estado`, `CEP`, `DataCadastro`, `data_cadastro`) VALUES
(1, 'Ana Souza', 'ana.souza@email.com', 'senha123', '123.456.789-00', 'Rua das Flores, 123', 'São Paulo', 'SP', '01234-567', '0000-00-00 00:00:00', '2023-01-10'),
(2, 'Carlos Silva', 'carlos.silva@email.com', 'senha456', '987.654.321-00', 'Avenida Brasil, 456', 'Rio de Janeiro', 'RJ', '23456-789', '0000-00-00 00:00:00', '2023-02-20'),
(3, 'Fernanda Almeida', 'fernanda.almeida@email.com', 'senha789', '111.222.333-44', 'Praça Central, 789', 'Belo Horizonte', 'MG', '34567-890', '0000-00-00 00:00:00', '2023-03-15'),
(4, 'Marcos Oliveira', 'marcos.oliveira@email.com', 'senha101112', '444.555.666-77', 'Rua dos Ipês, 101', 'Curitiba', 'PR', '45678-901', '0000-00-00 00:00:00', '2023-04-05'),
(5, 'Juliana Santos', 'juliana.santos@email.com', 'senha131415', '777.888.999-00', 'Rua do Sol, 202', 'Porto Alegre', 'RS', '56789-012', '0000-00-00 00:00:00', '2023-05-22'),
(6, 'Ricardo Pereira', 'ricardo.pereira@email.com', 'senha161718', '222.333.444-55', 'Rua dos Limoeiros, 303', 'Fortaleza', 'CE', '67890-123', '0000-00-00 00:00:00', '2023-06-30'),
(7, 'Camila Costa', 'camila.costa@email.com', 'senha192021', '555.666.777-88', 'Rua das Palmeiras, 404', 'Salvador', 'BA', '78901-234', '0000-00-00 00:00:00', '2023-07-18'),
(8, 'Felipe Rocha', 'felipe.rocha@email.com', 'senha222324', '888.999.000-11', 'Rua do Povo, 505', 'Recife', 'PE', '89012-345', '0000-00-00 00:00:00', '2023-08-02'),
(9, 'Patrícia Martins', 'patricia.martins@email.com', 'senha252627', '999.000.111-22', 'Rua dos Cedros, 606', 'Brasília', 'DF', '90123-456', '0000-00-00 00:00:00', '2023-09-01'),
(10, 'Eduardo Lima', 'eduardo.lima@email.com', 'senha282930', '333.444.555-66', 'Rua dos Eucaliptos, 707', 'Manaus', 'AM', '01234-678', '0000-00-00 00:00:00', '2023-09-12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `ID_ItemPedido` int(11) NOT NULL,
  `ID_Pedido` int(11) NOT NULL,
  `ID_Produto` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `PrecoUnitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`ID_ItemPedido`, `ID_Pedido`, `ID_Produto`, `Quantidade`, `PrecoUnitario`) VALUES
(1, 1, 1, 2, 39.9),
(2, 2, 2, 1, 199.9),
(3, 3, 3, 3, 89.9),
(4, 4, 4, 1, 1799),
(5, 5, 5, 1, 3599),
(6, 6, 6, 2, 299.9),
(7, 7, 7, 1, 59.9),
(8, 8, 8, 1, 169.9),
(9, 9, 9, 1, 129.9),
(10, 10, 10, 1, 799);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_Pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `DataPedido` datetime NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ValorTotal` double NOT NULL,
  `EnderecoEntrega` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`ID_Pedido`, `ID_Cliente`, `DataPedido`, `Status`, `ValorTotal`, `EnderecoEntrega`) VALUES
(1, 1, '2023-01-15 00:00:00', 'Em andamento', 250.75, 'Rua das Flores, 123, São Paulo, SP'),
(2, 2, '2023-02-20 00:00:00', 'Finalizado', 450, 'Avenida Brasil, 456, Rio de Janeiro, RJ'),
(3, 3, '2023-03-10 00:00:00', 'Cancelado', 120.5, 'Praça Central, 789, Belo Horizonte, MG'),
(4, 4, '2023-04-05 00:00:00', 'Em andamento', 320, 'Rua dos Ipês, 101, Curitiba, PR'),
(5, 5, '2023-05-12 00:00:00', 'Finalizado', 600.99, 'Rua do Sol, 202, Porto Alegre, RS'),
(6, 6, '2023-06-30 00:00:00', 'Em andamento', 180.2, 'Rua dos Limoeiros, 303, Fortaleza, CE'),
(7, 7, '2023-07-18 00:00:00', 'Finalizado', 150.75, 'Rua das Palmeiras, 404, Salvador, BA'),
(8, 8, '2023-08-02 00:00:00', 'Em andamento', 210.4, 'Rua do Povo, 505, Recife, PE'),
(9, 9, '2023-09-01 00:00:00', 'Finalizado', 350.6, 'Rua dos Cedros, 606, Brasília, DF'),
(10, 10, '2023-09-12 00:00:00', 'Em andamento', 420, 'Rua dos Eucaliptos, 707, Manaus, AM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preco` double NOT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `Estoque` int(11) NOT NULL,
  `DataCriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`ID_Produto`, `Nome`, `Descricao`, `Preco`, `SKU`, `Estoque`, `DataCriacao`) VALUES
(1, 'Cadeira Gamer', 'Cadeira ergonômica com apoio para os braços e ajuste de altura\n', 799, 'CAD010', 25, '2023-09-10 15:00:00'),
(2, 'Bola de Basquete', 'Bola tamanho masculino', 33.99, '09876', 15, '2024-06-23 06:00:00'),
(3, 'Bola de Basquete', 'Bola tamanho masculino', 33.99, '09876', 15, '2024-06-23 10:00:00'),
(4, 'Bola de Basquete', 'Bola tamanho masculino', 33.99, '09876', 15, '2024-06-23 11:00:00'),
(5, 'Tênis Esportivo', 'Tênis ideal para atividades físicas e caminhadas', 199.9, 'TEN002', 50, '2023-02-10 13:00:00'),
(6, 'Mochila Escolar', 'Mochila com diversos compartimentos para material escolar', 89.9, 'MOC003', 200, '2023-03-15 19:00:00'),
(7, 'Smartphone Galaxy', 'Smartphone de última geração com câmera de alta resolução', 1799, 'SMA004', 30, '2023-04-20 14:00:00'),
(8, 'Notebook Dell', 'Notebook com 16GB de RAM e 512GB SSD', 3599, 'NOT005', 15, '2023-05-05 16:00:00'),
(9, 'Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído', 299.9, 'FON006', 75, '2023-06-10 04:00:00'),
(10, 'Relógio Digital', 'Relógio digital com cronômetro e alarme', 59.9, 'REL007', 120, '2023-07-25 20:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`ID_ItemPedido`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Produto` (`ID_Produto`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_Pedido`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `ID_ItemPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedidos` (`ID_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`ID_Produto`) REFERENCES `produtos` (`ID_Produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
