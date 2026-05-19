-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2026 às 21:53
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
-- Banco de dados: `mural_digital`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `data` date NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `anuncios`
--

INSERT INTO `anuncios` (`id`, `titulo`, `descricao`, `data`, `imagem`) VALUES
(13, 'Vaga de Estágio em Administração', 'Empresa local está contratando estagiário para auxiliar nas rotinas administrativas. Requisitos: estar cursando ensino superior e ter conhecimento básico em Excel.', '2026-05-07', '2.jpg'),
(14, 'Vaga de Estágio em Administração', 'Empresa local está contratando estagiário para auxiliar nas rotinas administrativas. Requisitos: estar cursando ensino superior e ter conhecimento básico em Excel.', '2026-04-30', '4.png'),
(15, 'Sistema Manutenção ', 'Empresa local está contratando estagiário para auxiliar nas rotinas administrativas. Requisitos: estar cursando ensino superior e ter conhecimento básico em Excel.', '2026-04-28', '3.png'),
(16, 'Feira de Ciências 2026', 'Participe da feira de ciências da escola com projetos inovadores.', '2026-05-27', '1.jpg'),
(17, 'Semana da Tecnologia 2026', 'Entre os dias 20 e 24 de maio acontecerá a Semana da Tecnologia 2026 no auditório principal da instituição. O evento contará com palestras sobre desenvolvimento web, inteligência artificial, segurança da informação, redes de computadores e mercado de trabalho na área de TI. Também haverá minicursos práticos voltados para programação em PHP, Python e desenvolvimento mobile. Todos os alunos estão convidados a participar gratuitamente.', '2026-05-11', '11.jpg'),
(18, 'Vaga de Estágio para Desenvolvimento de Sistemas', 'Uma empresa parceira da instituição abriu vagas de estágio destinadas aos alunos dos cursos técnicos de Informática e Desenvolvimento de Sistemas. O estágio oferece bolsa auxílio, vale transporte e possibilidade de efetivação. Os candidatos devem possuir conhecimentos básicos em lógica de programação, banco de dados e desenvolvimento web. Os interessados devem enviar currículo atualizado para a coordenação até o final desta semana.', '2026-05-13', '4.png'),
(19, 'Campeonato Interno de Futsal', 'Estão oficialmente abertas as inscrições para o campeonato interno de futsal da escola. As equipes poderão ser formadas por alunos de todos os cursos e períodos. O torneio será realizado aos sábados no ginásio esportivo e contará com premiação para os primeiros colocados. O objetivo do evento é incentivar a prática esportiva, integração entre os estudantes e promover momentos de lazer durante o semestre letivo.', '2026-05-14', '10.png'),
(20, 'Feira de Ciências e Inovação', 'A Feira de Ciências e Inovação acontecerá no próximo mês reunindo diversos projetos desenvolvidos pelos alunos da instituição. Serão apresentados trabalhos nas áreas de robótica, automação, sustentabilidade, programação, matemática e ciências naturais. O evento será aberto ao público e contará com exposição de protótipos, apresentações interativas e avaliação dos melhores projetos por professores convidados.', '2026-05-15', '1.jpg'),
(21, 'Curso Gratuito de Excel', 'A coordenação pedagógica está oferecendo um curso gratuito de Excel básico e intermediário para alunos e comunidade externa. Durante as aulas serão abordados temas como fórmulas, funções, gráficos, tabelas dinâmicas e organização de dados. O curso será realizado no laboratório de informática durante o período noturno e as vagas são limitadas. Os participantes receberão certificado ao final das atividades.', '2026-05-16', '9.png'),
(22, 'Aviso Importante da Biblioteca', 'A biblioteca da instituição informa que estará fechada temporariamente na próxima sexta-feira devido à realização de manutenção nos computadores e atualização do sistema de empréstimos. Durante esse período não será possível realizar devoluções, renovações ou retirada de livros. Os alunos que possuírem materiais com vencimento na data informada terão o prazo prorrogado automaticamente sem aplicação de multas.', '2026-05-17', '8.jpg'),
(23, 'Palestra sobre Mercado de Trabalho', 'Profissionais das áreas de tecnologia, administração e contabilidade participarão de uma palestra especial sobre mercado de trabalho, oportunidades de estágio e tendências profissionais para os próximos anos. O encontro acontecerá no auditório principal e permitirá aos alunos esclarecer dúvidas diretamente com especialistas e recrutadores convidados. A participação valerá horas complementares.', '2026-05-18', '7.jpg'),
(24, 'Campanha de Doação de Sangue', 'A instituição realizará uma campanha solidária de doação de sangue em parceria com o hemocentro regional. A ação tem como objetivo conscientizar alunos e servidores sobre a importância da doação para salvar vidas. Os voluntários receberão orientações médicas antes da coleta e poderão agendar horários previamente para melhor organização do atendimento.', '2026-05-19', '6.jpg'),
(25, 'Curso Intensivo de PHP e MySQL', 'Estão abertas as inscrições para o curso intensivo de PHP e MySQL voltado para iniciantes no desenvolvimento web. Durante as aulas os participantes aprenderão criação de sistemas, formulários, autenticação de usuários, integração com banco de dados e operações CRUD completas. O curso terá atividades práticas desenvolvidas em laboratório e emissão de certificado ao término.', '2026-05-20', '5.jpg'),
(26, 'Manutenção no Laboratório de Informática', 'A direção informa que o laboratório 3 ficará temporariamente interditado durante esta semana para realização de manutenção preventiva nos computadores e atualização dos softwares utilizados nas aulas práticas. As turmas afetadas serão remanejadas para outros laboratórios conforme orientação dos professores. A previsão é que o espaço seja liberado novamente na próxima segunda-feira.', '2026-05-21', '3.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'Admin', 'admin@admin.com', '2003', 'Administrador'),
(2, 'gab', 'gab@gmail.com', '1234', 'usuario'),
(5, 'juao', 'juanzinho123@gmail.com', '74125', 'Usuário');

-- --------------------------------------------------------

--
-- Estrutura para tabela `visualizacoes`
--

CREATE TABLE `visualizacoes` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_anuncio` int(11) DEFAULT NULL,
  `data_visualizacao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `visualizacoes`
--

INSERT INTO `visualizacoes` (`id`, `id_usuario`, `id_anuncio`, `data_visualizacao`) VALUES
(1, 2, 5, '2026-05-10 01:10:58'),
(2, 2, 4, '2026-05-10 01:10:58'),
(3, 2, 3, '2026-05-10 01:10:58'),
(4, 2, 2, '2026-05-10 01:10:58'),
(5, 2, 1, '2026-05-10 01:10:58'),
(6, 5, 5, '2026-05-10 01:12:11'),
(7, 5, 4, '2026-05-10 01:12:11'),
(8, 5, 3, '2026-05-10 01:12:11'),
(9, 5, 2, '2026-05-10 01:12:11'),
(10, 5, 1, '2026-05-10 01:12:11'),
(11, 2, 6, '2026-05-10 19:18:39'),
(12, 2, 16, '2026-05-10 20:09:42'),
(13, 2, 15, '2026-05-10 20:09:42'),
(14, 2, 14, '2026-05-10 20:09:42'),
(15, 2, 13, '2026-05-10 20:09:42'),
(16, 5, 16, '2026-05-10 20:15:25'),
(17, 5, 15, '2026-05-10 20:15:25'),
(18, 5, 14, '2026-05-10 20:15:25'),
(19, 5, 13, '2026-05-10 20:15:25'),
(20, 2, 26, '2026-05-12 16:27:59'),
(21, 2, 25, '2026-05-12 16:27:59'),
(22, 2, 24, '2026-05-12 16:27:59'),
(23, 2, 23, '2026-05-12 16:27:59'),
(24, 2, 22, '2026-05-12 16:27:59'),
(25, 2, 21, '2026-05-12 16:27:59'),
(26, 2, 20, '2026-05-12 16:27:59'),
(27, 2, 19, '2026-05-12 16:27:59'),
(28, 2, 18, '2026-05-12 16:27:59'),
(29, 2, 17, '2026-05-12 16:27:59');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `visualizacoes`
--
ALTER TABLE `visualizacoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `visualizacoes`
--
ALTER TABLE `visualizacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
