-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/06/2026 às 21:22
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
  `imagem` varchar(255) DEFAULT NULL,
  `criado_em` datetime DEFAULT current_timestamp(),
  `favorito` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `anuncios`
--

INSERT INTO `anuncios` (`id`, `titulo`, `descricao`, `imagem`, `criado_em`, `favorito`) VALUES
(13, 'Vaga de Estágio em Administração', 'A empresa Alfa Soluções Administrativas anunciou nesta semana a abertura de novas vagas de estágio para estudantes do curso de Administração. A iniciativa faz parte do programa de desenvolvimento de talentos da empresa, que busca proporcionar experiência prática aos universitários e prepará-los para o mercado de trabalho.\r\n\r\nOs estagiários atuarão diretamente no setor administrativo, auxiliando nas atividades de organização de documentos, elaboração de planilhas, controle de processos internos, atendimento aos colaboradores e suporte às rotinas financeiras e de Recursos Humanos. Durante o estágio, os participantes terão acompanhamento de profissionais experientes e receberão treinamentos voltados ao desenvolvimento de competências técnicas e comportamentais.\r\n\r\nDe acordo com a empresa, os candidatos devem estar regularmente matriculados em curso superior de Administração ou áreas correlatas, possuir conhecimentos básicos em informática, especialmente no pacote Microsoft Office, e demonstrar boa comunicação, organização e facilidade para trabalhar em equipe.\r\n\r\nA bolsa-auxílio é compatível com o mercado e inclui benefícios como vale-transporte, seguro de vida e possibilidade de efetivação ao término do contrato, conforme desempenho do estagiário e disponibilidade de vagas na empresa.\r\n\r\nAs inscrições permanecerão abertas até o dia 20 de maio. Os interessados deverão encaminhar currículo atualizado para o setor de Recursos Humanos por meio do e-mail disponibilizado no mural da instituição.\r\n\r\nSegundo a coordenação do curso, oportunidades como essa representam uma excelente forma de aplicar, na prática, os conhecimentos adquiridos em sala de aula, além de contribuir para o desenvolvimento profissional e facilitar a inserção dos estudantes no mercado de trabalho.', '2.jpg', '2026-06-22 18:41:30', 1),
(14, 'Vaga de Estágio em Administração', 'Empresa local está contratando estagiário para auxiliar nas rotinas administrativas. Requisitos: estar cursando ensino superior e ter conhecimento básico em Excel.', '4.png', '2026-06-22 18:41:30', 0),
(15, 'Sistema Manutenção ', 'Empresa local está contratando estagiário para auxiliar nas rotinas administrativas. Requisitos: estar cursando ensino superior e ter conhecimento básico em Excel.', '3.png', '2026-06-22 18:41:30', 1),
(16, 'Feira de Ciências 2026', 'Participe da feira de ciências da escola com projetos inovadores.', '1.jpg', '2026-06-22 18:41:30', 1),
(17, 'Semana da Tecnologia 2026', 'Entre os dias 20 e 24 de maio acontecerá a Semana da Tecnologia 2026 no auditório principal da instituição. O evento contará com palestras sobre desenvolvimento web, inteligência artificial, segurança da informação, redes de computadores e mercado de trabalho na área de TI. Também haverá minicursos práticos voltados para programação em PHP, Python e desenvolvimento mobile. Todos os alunos estão convidados a participar gratuitamente.', '11.jpg', '2026-06-22 18:41:30', 0),
(18, 'Vaga de Estágio para Desenvolvimento de Sistemas', 'Uma empresa parceira da instituição abriu vagas de estágio destinadas aos alunos dos cursos técnicos de Informática e Desenvolvimento de Sistemas. O estágio oferece bolsa auxílio, vale transporte e possibilidade de efetivação. Os candidatos devem possuir conhecimentos básicos em lógica de programação, banco de dados e desenvolvimento web. Os interessados devem enviar currículo atualizado para a coordenação até o final desta semana.', '4.png', '2026-06-22 18:41:30', 0),
(19, 'Campeonato Interno de Futsal', 'A coordenação de Esportes da instituição informa que estão oficialmente abertas as inscrições para o Campeonato Interno de Futsal 2026. O evento, que já se tornou uma tradição entre os estudantes, tem como principal objetivo promover a integração entre alunos dos diferentes cursos, incentivar a prática esportiva e proporcionar momentos de lazer, convivência e espírito de equipe durante o semestre letivo.\r\n\r\nPoderão participar estudantes regularmente matriculados em qualquer curso da instituição, independentemente do período ou modalidade de ensino. As equipes poderão ser formadas por alunos de diferentes turmas, favorecendo a interação entre os participantes e fortalecendo o ambiente acadêmico. Cada equipe deverá indicar um capitão responsável pela comunicação com a organização e pelo envio da documentação necessária para a inscrição.\r\n\r\nAs inscrições permanecerão abertas até o dia 25 de maio e deverão ser realizadas presencialmente na Coordenação de Esportes. No ato da inscrição será necessário informar o nome da equipe, a relação completa dos atletas e um representante oficial do grupo. A organização recomenda que as equipes realizem suas inscrições com antecedência, evitando imprevistos próximos ao encerramento do prazo.\r\n\r\nAs partidas serão disputadas aos sábados, sempre no ginásio poliesportivo da instituição, em horários previamente definidos pela comissão organizadora. O calendário completo da competição será divulgado após o encerramento das inscrições, permitindo que todas as equipes possam se organizar para participar dos jogos.\r\n\r\nA competição seguirá o regulamento oficial da modalidade, adaptado para atender às necessidades do ambiente escolar. Todas as partidas contarão com arbitragem especializada, cronometrista e apoio da equipe organizadora para garantir que os jogos ocorram de forma organizada, segura e respeitando os princípios do esporte.\r\n\r\nAlém da disputa pelo título, o campeonato busca incentivar valores importantes como respeito, disciplina, trabalho em equipe, responsabilidade e fair play. A comissão organizadora reforça que atitudes antidesportivas poderão resultar em advertências, suspensões ou até mesmo na eliminação das equipes envolvidas, conforme previsto no regulamento da competição.\r\n\r\nOs jogos prometem movimentar toda a comunidade acadêmica ao longo das próximas semanas. Professores, servidores, familiares e demais estudantes poderão acompanhar gratuitamente todas as partidas e torcer pelas equipes participantes. A expectativa é repetir o sucesso das edições anteriores, que reuniram grande público e proporcionaram momentos marcantes para os atletas e espectadores.\r\n\r\nAo final da competição, as equipes classificadas em primeiro, segundo e terceiro lugar receberão troféus e medalhas. Também serão entregues premiações individuais para o artilheiro do campeonato, o melhor goleiro, o jogador destaque da competição e a equipe mais disciplinada, valorizando não apenas o desempenho técnico, mas também o comportamento esportivo durante todo o torneio.\r\n\r\nSegundo a Coordenação de Esportes, a realização do campeonato faz parte das ações desenvolvidas pela instituição para estimular hábitos saudáveis entre os estudantes. A prática regular de atividades físicas contribui para a melhoria da qualidade de vida, do condicionamento físico, da concentração e do desempenho acadêmico, além de fortalecer os laços de amizade entre os alunos.\r\n\r\nA direção da instituição destaca que eventos esportivos como este complementam a formação dos estudantes, proporcionando experiências que vão além da sala de aula. Trabalhar em equipe, lidar com vitórias e derrotas, respeitar regras e desenvolver espírito de liderança são competências importantes tanto para a vida acadêmica quanto para o mercado de trabalho.\r\n\r\nA organização convida todos os estudantes interessados a montar suas equipes e participar da competição. Aqueles que não desejarem atuar como jogadores também poderão prestigiar os jogos nas arquibancadas, incentivando os colegas e contribuindo para criar um ambiente de integração e confraternização entre todos os cursos.\r\n\r\nMais informações sobre o regulamento, cronograma das partidas, critérios de inscrição e demais orientações poderão ser obtidas diretamente na Coordenação de Esportes ou por meio dos canais oficiais da instituição. A expectativa é que esta edição do Campeonato Interno de Futsal seja uma das maiores já realizadas, reunindo dezenas de equipes e promovendo um semestre repleto de esporte, lazer e integração entre toda a comunidade acadêmica.', '10.png', '2026-06-22 18:41:30', 1),
(20, 'Feira de Ciências e Inovação', 'A Feira de Ciências e Inovação acontecerá no próximo mês reunindo diversos projetos desenvolvidos pelos alunos da instituição. Serão apresentados trabalhos nas áreas de robótica, automação, sustentabilidade, programação, matemática e ciências naturais. O evento será aberto ao público e contará com exposição de protótipos, apresentações interativas e avaliação dos melhores projetos por professores convidados.', '1.jpg', '2026-06-22 18:41:30', 1),
(21, 'Curso Gratuito de Excel', 'A coordenação pedagógica está oferecendo um curso gratuito de Excel básico e intermediário para alunos e comunidade externa. Durante as aulas serão abordados temas como fórmulas, funções, gráficos, tabelas dinâmicas e organização de dados. O curso será realizado no laboratório de informática durante o período noturno e as vagas são limitadas. Os participantes receberão certificado ao final das atividades.', '9.png', '2026-06-22 18:41:30', 1),
(22, 'Aviso Importante da Biblioteca', 'A biblioteca da instituição informa que estará fechada temporariamente na próxima sexta-feira devido à realização de manutenção nos computadores e atualização do sistema de empréstimos. Durante esse período não será possível realizar devoluções, renovações ou retirada de livros. Os alunos que possuírem materiais com vencimento na data informada terão o prazo prorrogado automaticamente sem aplicação de multas.', '8.jpg', '2026-06-22 18:41:30', 1),
(23, 'Palestra sobre Mercado de Trabalho', 'Profissionais das áreas de tecnologia, administração e contabilidade participarão de uma palestra especial sobre mercado de trabalho, oportunidades de estágio e tendências profissionais para os próximos anos. O encontro acontecerá no auditório principal e permitirá aos alunos esclarecer dúvidas diretamente com especialistas e recrutadores convidados. A participação valerá horas complementares.', '7.jpg', '2026-06-22 18:41:30', 1),
(24, 'Campanha de Doação de Sangue', 'A instituição realizará uma campanha solidária de doação de sangue em parceria com o hemocentro regional. A ação tem como objetivo conscientizar alunos e servidores sobre a importância da doação para salvar vidas. Os voluntários receberão orientações médicas antes da coleta e poderão agendar horários previamente para melhor organização do atendimento.', '6.jpg', '2026-06-22 18:41:30', 0),
(25, 'Curso Intensivo de PHP e MySQL', 'Estão oficialmente abertas as inscrições para o Curso Intensivo de PHP e MySQL, promovido pelo Departamento de Tecnologia da instituição. O curso tem como principal objetivo capacitar alunos e membros da comunidade interessados em ingressar no desenvolvimento de sistemas para web utilizando tecnologias amplamente empregadas no mercado de trabalho.\r\n\r\nDurante as aulas, os participantes aprenderão desde os conceitos fundamentais da linguagem PHP até a criação de aplicações completas integradas com banco de dados MySQL. Entre os assuntos abordados estão estrutura de projetos, formulários HTML, validação de dados, autenticação de usuários, sessões, operações CRUD (Cadastro, Consulta, Alteração e Exclusão), organização de arquivos e boas práticas de programação.\r\n\r\nAlém da parte teórica, o curso contará com diversas atividades práticas em laboratório, nas quais cada participante desenvolverá um sistema completo utilizando os conhecimentos adquiridos ao longo das aulas. Os alunos também terão contato com ferramentas de versionamento de código, organização de projetos e integração entre front-end e back-end.\r\n\r\nAs aulas acontecerão durante quatro semanas, sempre no período noturno, no Laboratório de Informática 2. As vagas são limitadas e preenchidas por ordem de inscrição. Ao final do curso, todos os participantes que atingirem a frequência mínima exigida receberão certificado de conclusão, que poderá ser utilizado como horas complementares e enriquecimento curricular.\r\n\r\nOs interessados devem realizar a inscrição junto à coordenação do curso até a próxima sexta-feira. Em caso de dúvidas, a equipe organizadora estará disponível para prestar esclarecimentos presencialmente ou por meio dos canais oficiais da instituição.\r\n\r\nA organização reforça que esta é uma excelente oportunidade para estudantes que desejam iniciar seus conhecimentos em desenvolvimento web e aumentar suas chances de conquistar vagas de estágio ou emprego na área de tecnologia.', '5.jpg', '2026-06-22 18:41:30', 1),
(26, 'Manutenção no Laboratório de Informática', 'A Direção da instituição informa que o Laboratório de Informática 3 ficará temporariamente interditado durante esta semana para a realização de uma ampla manutenção preventiva em sua infraestrutura. A intervenção faz parte do cronograma anual de melhorias elaborado pelo setor de Tecnologia da Informação, que tem como objetivo garantir maior estabilidade, desempenho e segurança dos equipamentos utilizados diariamente por alunos, professores e servidores.\r\n\r\nDurante o período de manutenção, todos os computadores do laboratório passarão por uma revisão completa de hardware e software. Entre os serviços programados estão a limpeza interna dos equipamentos, substituição de componentes desgastados, atualização dos sistemas operacionais, instalação das versões mais recentes dos softwares utilizados nas aulas, correção de falhas identificadas durante o semestre letivo e otimização do desempenho geral das máquinas.\r\n\r\nAlém da manutenção dos computadores, também será realizada uma revisão completa da infraestrutura de rede do laboratório. Os técnicos responsáveis verificarão o funcionamento dos switches, roteadores, cabeamento estruturado e pontos de acesso à internet, buscando eliminar instabilidades de conexão que eventualmente tenham sido registradas pelos usuários. Também serão executados testes de velocidade, estabilidade e segurança para garantir que todos os equipamentos estejam operando dentro dos padrões estabelecidos pela instituição.\r\n\r\nOutro serviço previsto durante a manutenção será a reorganização física do laboratório. As bancadas serão revisadas, cadeiras passarão por manutenção, cabos serão reorganizados para aumentar a segurança dos usuários e alguns equipamentos antigos serão substituídos por modelos mais modernos. Essa reorganização também tem como objetivo proporcionar um ambiente mais confortável para a realização das aulas práticas e reduzir riscos relacionados ao desgaste natural da infraestrutura.\r\n\r\nA atualização dos softwares será um dos principais focos desta intervenção. Serão instaladas novas versões dos programas utilizados nas disciplinas de Programação, Banco de Dados, Desenvolvimento Web, Redes de Computadores, Sistemas Operacionais, Design Gráfico e demais componentes curriculares que utilizam o laboratório como ambiente de prática. Também serão instaladas correções de segurança disponibilizadas pelos fabricantes, garantindo maior proteção contra falhas e vulnerabilidades.\r\n\r\nSegundo a equipe de Tecnologia da Informação, diversos computadores apresentavam pequenas inconsistências decorrentes do uso intenso ao longo dos últimos meses. Embora esses problemas não impedissem o funcionamento das aulas, poderiam comprometer o desempenho dos equipamentos futuramente caso nenhuma intervenção preventiva fosse realizada. Por esse motivo, optou-se por realizar a manutenção durante esta semana, minimizando os impactos nas atividades acadêmicas.\r\n\r\nDurante o período em que o Laboratório 3 permanecer fechado, as turmas que normalmente utilizariam esse espaço serão remanejadas para outros laboratórios da instituição. Os professores já foram comunicados sobre as alterações e informarão previamente aos alunos os novos locais das aulas. Em alguns casos específicos, atividades poderão ser adaptadas temporariamente para salas multimídia ou ambientes virtuais de aprendizagem, garantindo que o cronograma acadêmico seja mantido sem prejuízo ao conteúdo previsto.\r\n\r\nA coordenação dos cursos reforça que nenhuma disciplina será cancelada em razão da manutenção. Todas as atividades práticas previstas para esta semana serão reorganizadas conforme disponibilidade dos demais laboratórios, evitando atrasos no calendário letivo e assegurando que os estudantes tenham acesso aos recursos necessários para o desenvolvimento das atividades.\r\n\r\nTambém serão realizados procedimentos de backup dos arquivos utilizados pelos professores nos computadores do laboratório. Esse processo garante que materiais didáticos, exercícios, projetos e demais arquivos importantes sejam preservados durante a atualização dos sistemas. Após a conclusão da manutenção, todos os documentos serão restaurados normalmente, permitindo que as aulas retornem sem qualquer perda de informação.\r\n\r\nAlém dos aspectos técnicos, a manutenção contempla melhorias relacionadas à segurança dos usuários. Os equipamentos elétricos serão inspecionados, estabilizadores e filtros de linha serão substituídos quando necessário, e todo o sistema elétrico do laboratório passará por uma avaliação preventiva. O objetivo é reduzir riscos de falhas elétricas e aumentar a vida útil dos equipamentos utilizados diariamente pelos estudantes.\r\n\r\nA instituição destaca que investimentos em infraestrutura tecnológica são fundamentais para garantir uma formação de qualidade, especialmente nos cursos da área de informática e tecnologia. Laboratórios atualizados permitem que os alunos desenvolvam atividades práticas utilizando ferramentas compatíveis com aquelas encontradas no mercado de trabalho, contribuindo para uma formação mais completa e alinhada às exigências profissionais.\r\n\r\nNos últimos anos, diversos investimentos foram realizados na modernização dos laboratórios da instituição, incluindo aquisição de novos computadores, melhoria da rede de internet, atualização dos softwares acadêmicos e implantação de novos recursos multimídia. A manutenção preventiva agora realizada faz parte desse processo contínuo de aperfeiçoamento da infraestrutura tecnológica.\r\n\r\nA previsão é de que todos os serviços sejam concluídos até o final desta semana. Após a realização dos testes finais, o Laboratório de Informática 3 será reaberto normalmente para utilização nas aulas da próxima segunda-feira. Caso ocorra qualquer alteração no cronograma, a comunidade acadêmica será comunicada por meio dos canais oficiais da instituição.\r\n\r\nA Direção agradece a compreensão de todos os alunos, professores e servidores durante o período de manutenção e reforça que as melhorias realizadas contribuirão para oferecer um ambiente mais moderno, seguro e eficiente para o desenvolvimento das atividades acadêmicas. A colaboração de todos é essencial para que os trabalhos sejam concluídos dentro do prazo previsto e para que o laboratório continue atendendo às necessidades da comunidade escolar com qualidade e confiabilidade.', '3.png', '2026-06-22 18:41:30', 0),
(27, 'test 66', 'A direção informa que o laboratório 3 ficará temporariamente interditado durante esta semana para realização de manutenção preventiva nos computadores e atualização dos softwares utilizados nas aulas práticas. As turmas afetadas serão remanejadas para outros laboratórios conforme orientação dos professores. A previsão é que o espaço seja liberado novamente na próxima segunda-feira.', '8.jpg', '2026-06-23 18:45:14', 0);

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
(5, 'juao', 'juanzinho123@gmail.com', '74125', 'Usuário'),
(6, 'Mitar Glavaš', 'mitar.glavas@example.com', '5555555', 'usuario'),
(7, 'Pedro Garrido', 'pedro.garrido@example.com', 'grinch', 'usuario'),
(8, 'Inès Francois', 'ines.francois@example.com', 'babydoll', 'usuario'),
(9, 'Venla Kari', 'venla.kari@example.com', 'cloud9', 'usuario'),
(10, 'Abdulrahman Wojcik', 'abdulrahman.wojcik@example.com', 'buzzard', 'usuario'),
(11, 'اميرعلي محمدخان', 'myraaly.mhmdkhn@example.com', 'newpass', 'usuario'),
(12, 'Axelle Gaillard', 'axelle.gaillard@example.com', 'qwaszx', 'usuario'),
(13, 'Benito Hidalgo', 'benito.hidalgo@example.com', 'show', 'usuario'),
(14, 'Laura Andersen', 'laura.andersen@example.com', 'mondeo', 'usuario'),
(15, 'Coşkun Sezek', 'coskun.sezek@example.com', '6666666', 'usuario'),
(16, 'Camille Harcourt', 'camille.harcourt@example.com', 'drew', 'usuario'),
(17, 'Rafael Riviere', 'rafael.riviere@example.com', 'shou', 'usuario'),
(18, 'Lucy Caldwell', 'lucy.caldwell@example.com', 'willard', 'usuario'),
(19, 'Juho Heino', 'juho.heino@example.com', 'tasha', 'usuario'),
(20, 'Marina Ferrer', 'marina.ferrer@example.com', '1976', 'usuario'),
(21, 'Ricardo Mathieu', 'ricardo.mathieu@example.com', 'raider', 'usuario'),
(22, 'Alexis Pelletier', 'alexis.pelletier@example.com', 'fatima', 'usuario'),
(23, 'Julia Koistinen', 'julia.koistinen@example.com', 'weasel', 'usuario'),
(24, 'Lijsje Terhorst', 'lijsje.terhorst@example.com', 'met2002', 'usuario'),
(25, 'آدرینا علیزاده', 'adryn.aalyzdh@example.com', 'vvvv', 'usuario'),
(26, 'Naziha Zijlstra', 'naziha.zijlstra@example.com', 'qwerty1', 'usuario'),
(27, 'Mads Djønne', 'mads.djonne@example.com', 'mutant', 'usuario'),
(28, 'پارمیس سلطانی نژاد', 'prmys.sltnynjd@example.com', 'fisher', 'usuario'),
(29, 'Brennan Willis', 'brennan.willis@example.com', 'futbol', 'usuario'),
(30, 'Silvija Nađ', 'silvija.nad@example.com', 'snooker', 'usuario'),
(31, 'Énio Teixeira', 'enio.teixeira@example.com', 'lemmein', 'usuario'),
(32, 'Aishwarya Raval', 'aishwarya.raval@example.com', 'news', 'usuario'),
(33, 'Irmtraud Henze', 'irmtraud.henze@example.com', 'newbie', 'usuario'),
(34, 'Enola Carpentier', 'enola.carpentier@example.com', 'fishhead', 'usuario'),
(35, 'Emma Petersen', 'emma.petersen@example.com', 'stinky', 'usuario'),
(36, 'Jen Harrison', 'jen.harrison@example.com', 'farley', 'usuario'),
(37, 'Brett Wells', 'brett.wells@example.com', 'eminem', 'usuario'),
(38, 'Florence Turner', 'florence.turner@example.com', 'gatsby', 'usuario'),
(39, 'Bill Holt', 'bill.holt@example.com', 'qwer', 'usuario'),
(40, 'Louis Carr', 'louis.carr@example.com', 'freeze', 'usuario'),
(41, 'Elena Orlić', 'elena.orlic@example.com', 'starr', 'usuario'),
(42, 'هستی سهيلي راد', 'hsty.shylyrd@example.com', 'single', 'usuario'),
(43, 'Gladimira Ribeiro', 'gladimira.ribeiro@example.com', 'dynasty', 'usuario'),
(44, 'Vasilije Tomašević', 'vasilije.tomasevic@example.com', 'cicero', 'usuario'),
(45, 'Emin Reinartz', 'emin.reinartz@example.com', 'cody', 'usuario'),
(46, 'Rosa Johnson', 'rosa.johnson@example.com', 'chuang', 'usuario'),
(47, 'Donald Carpenter', 'donald.carpenter@example.com', 'jessie', 'usuario'),
(48, 'Belmiro Carvalho', 'belmiro.carvalho@example.com', 'mephisto', 'usuario'),
(49, 'Vanessa Lowe', 'vanessa.lowe@example.com', 'angelica', 'usuario'),
(50, 'Sadhil Bhoja', 'sadhil.bhoja@example.com', 'mayhem', 'usuario'),
(51, 'Lauri Huhta', 'lauri.huhta@example.com', 'peepee', 'usuario'),
(52, 'Dominic Schenk', 'dominic.schenk@example.com', 'trapper', 'usuario'),
(53, 'Vseslava Kernickiy', 'vseslava.kernickiy@example.com', 'nolimit', 'usuario'),
(54, 'Joel Mikkola', 'joel.mikkola@example.com', 'cayman', 'usuario'),
(55, 'Simon Grewal', 'simon.grewal@example.com', 'beast', 'usuario'),
(56, 'Larisa Odarchenko', 'larisa.odarchenko@example.com', 'vides', 'usuario'),
(57, 'Jimmie Bryant', 'jimmie.bryant@example.com', 'catwoman', 'usuario'),
(58, 'Kathy Fitzgerald', 'kathy.fitzgerald@example.com', 'heaven', 'usuario'),
(59, 'Minea Lammi', 'minea.lammi@example.com', 'clown', 'usuario'),
(60, 'Blanca Hidalgo', 'blanca.hidalgo@example.com', 'ursula', 'usuario'),
(61, 'Friedhilde Kühne', 'friedhilde.kuhne@example.com', 'bertie', 'usuario'),
(62, 'Wyatt Diaz', 'wyatt.diaz@example.com', '1017', 'usuario'),
(63, 'Sebastián Giménez', 'sebastian.gimenez@example.com', 'female', 'usuario'),
(64, 'Jeremiah Pena', 'jeremiah.pena@example.com', 'invest', 'usuario'),
(65, 'Aiden Horton', 'aiden.horton@example.com', 'milton', 'usuario'),
(66, 'Felix Larsen', 'felix.larsen@example.com', 'clay', 'usuario'),
(67, 'Sidra Birkedal', 'sidra.birkedal@example.com', 'february', 'usuario'),
(68, 'Adam Sørensen', 'adam.sorensen@example.com', 'leroy', 'usuario'),
(69, 'Encarnación Medina', 'encarnacion.medina@example.com', 'killers', 'usuario'),
(70, 'Armand Gaillard', 'armand.gaillard@example.com', 'happy123', 'usuario'),
(71, 'Corentin Colin', 'corentin.colin@example.com', 'slowhand', 'usuario'),
(72, 'Deniz Ayaydın', 'deniz.ayaydin@example.com', 'bailey', 'usuario'),
(73, 'Jason Hale', 'jason.hale@example.com', 'hector', 'usuario'),
(74, 'Simon Patel', 'simon.patel@example.com', '159357', 'usuario'),
(75, 'Martín Rosado', 'martin.rosado@example.com', 'arcadia', 'usuario'),
(76, 'Loïc Caron', 'loic.caron@example.com', 'tempest', 'usuario'),
(77, 'Astrid Johansen', 'astrid.johansen@example.com', 'samuel', 'usuario'),
(78, 'Holly Campbell', 'holly.campbell@example.com', 'vivian', 'usuario'),
(79, 'Dragana Kapetanović', 'dragana.kapetanovic@example.com', 'route66', 'usuario'),
(80, 'Mathis Ambrose', 'mathis.ambrose@example.com', 'scooby1', 'usuario'),
(81, 'Akseli Pietila', 'akseli.pietila@example.com', 'stoppedby', 'usuario'),
(82, 'Ignacio Lorenzo', 'ignacio.lorenzo@example.com', 'sony', 'usuario'),
(83, 'Arsenije Blažić', 'arsenije.blazic@example.com', 'user', 'usuario'),
(84, 'Sam Nesland', 'sam.nesland@example.com', 'skywalke', 'usuario'),
(85, 'Logan Lavigne', 'logan.lavigne@example.com', 'southern', 'usuario'),
(86, 'Ida Nielsen', 'ida.nielsen@example.com', '55bgates', 'usuario'),
(87, 'Cameron Lopez', 'cameron.lopez@example.com', 'kitty', 'usuario'),
(88, 'Eva Davies', 'eva.davies@example.com', 'wings', 'usuario'),
(89, 'Geerten Moesker', 'geerten.moesker@example.com', 'alucard', 'usuario'),
(90, 'Volkan Dizdar', 'volkan.dizdar@example.com', 'bookworm', 'usuario'),
(91, 'Shun Slooten', 'shun.slooten@example.com', 'chai', 'usuario'),
(92, 'Aldonza Chavarría', 'aldonza.chavarria@example.com', 'gggggg', 'usuario'),
(93, 'Abigail Graham', 'abigail.graham@example.com', 'synergy', 'usuario'),
(94, 'Carlos Stigen', 'carlos.stigen@example.com', 'orchid', 'usuario'),
(95, 'Christof Lambert', 'christof.lambert@example.com', 'olemiss', 'usuario'),
(96, 'Edward Kumar', 'edward.kumar@example.com', 'ou8123', 'usuario'),
(97, 'Aurora Lozano', 'aurora.lozano@example.com', 'flores', 'usuario'),
(98, 'Teerth Anchan', 'teerth.anchan@example.com', 'pippin', 'usuario'),
(99, 'Elmer Wood', 'elmer.wood@example.com', 'verizon', 'usuario'),
(100, 'Mike Terry', 'mike.terry@example.com', 'prayers', 'usuario'),
(101, 'Lola Renaud', 'lola.renaud@example.com', 'face', 'usuario'),
(102, 'Deniz Karabulut', 'deniz.karabulut@example.com', 'fresh', 'usuario'),
(103, 'Sirene Peixoto', 'sirene.peixoto@example.com', 'chou', 'usuario'),
(104, 'Vladana Topić', 'vladana.topic@example.com', 'hedgehog', 'usuario'),
(105, 'Sophie Chow', 'sophie.chow@example.com', 'hamburg', 'usuario'),
(106, 'Luisa Martin', 'luisa.martin@example.com', 'piercing', 'usuario'),
(107, 'Ezra Zhang', 'ezra.zhang@example.com', 'jonny', 'usuario'),
(108, 'Mustafa Beşerler', 'mustafa.beserler@example.com', 'gilles', 'usuario'),
(109, 'آدرین احمدی', 'adryn.hmdy@example.com', 'amateur', 'usuario'),
(110, 'Alex May', 'alex.may@example.com', '8989', 'usuario'),
(111, 'Manu Kahraman', 'manu.kahraman@example.com', 'romano', 'usuario'),
(112, 'Lana Noel', 'lana.noel@example.com', 'qiang', 'usuario'),
(113, 'Avery Fortin', 'avery.fortin@example.com', 'wolves', 'usuario'),
(114, 'Christina Hudson', 'christina.hudson@example.com', 'gsxr750', 'usuario'),
(115, 'Zachary Mitchell', 'zachary.mitchell@example.com', 'illinois', 'usuario'),
(116, 'Yasemin Özbey', 'yasemin.ozbey@example.com', 'dirt', 'usuario'),
(117, 'Virodar Radko', 'virodar.radko@example.com', 'modena', 'usuario'),
(118, 'بهاره سهيلي راد', 'bhrh.shylyrd@example.com', 'jameson', 'usuario'),
(119, 'Anjali Uchil', 'anjali.uchil@example.com', 'real', 'usuario'),
(120, 'Cinzia Olivier', 'cinzia.olivier@example.com', 'tyler', 'usuario'),
(121, 'Svirid Vermenich', 'svirid.vermenich@example.com', 'poppy', 'usuario'),
(122, 'Valtteri Lepisto', 'valtteri.lepisto@example.com', 'aaliyah', 'usuario'),
(123, 'Gabrielle Lacroix', 'gabrielle.lacroix@example.com', 'nation', 'usuario'),
(124, 'Eli Khalil', 'eli.khalil@example.com', 'oldone', 'usuario'),
(125, 'Akshay Taj', 'akshay.taj@example.com', 'stroker', 'usuario'),
(126, 'Iina Neva', 'iina.neva@example.com', 'aikman', 'Administrador'),
(127, 'Chaitra Shayana', 'chaitra.shayana@example.com', 'phoenix', 'Administrador'),
(128, 'Arisberto Ribeiro', 'arisberto.ribeiro@example.com', 'deacon', 'Administrador'),
(129, 'Alaíde Lima', 'alaide.lima@example.com', 'wildwood', 'Administrador'),
(130, 'Dirk Simon', 'dirk.simon@example.com', 'boozer', 'Administrador'),
(131, 'Emilia Carvajal', 'emilia.carvajal@example.com', 'reddwarf', 'Administrador'),
(132, 'Douglas Mitchell', 'douglas.mitchell@example.com', '505050', 'Administrador'),
(133, 'Deborah Louis', 'deborah.louis@example.com', 'misha', 'Administrador'),
(134, 'Bert Horvath', 'bert.horvath@example.com', 'carpedie', 'Administrador'),
(135, 'Denise Kennedy', 'denise.kennedy@example.com', 'erotica', 'Administrador'),
(136, 'Oya Keseroğlu', 'oya.keseroglu@example.com', 'peterpan', 'Administrador'),
(137, 'Eduardo Hernández', 'eduardo.hernandez@example.com', 'info', 'Administrador'),
(138, 'Salvador Anderson', 'salvador.anderson@example.com', 'kestrel', 'Administrador'),
(139, 'Bruno Peralta', 'bruno.peralta@example.com', 'laurence', 'Administrador'),
(140, 'María Carrasco', 'maria.carrasco@example.com', 'teresa', 'Administrador'),
(141, 'Signe Petersen', 'signe.petersen@example.com', 'naruto', 'Administrador'),
(142, 'Isabella Gagnon', 'isabella.gagnon@example.com', 'teens', 'Administrador'),
(143, 'Pinja Peltonen', 'pinja.peltonen@example.com', 'aside', 'Administrador'),
(144, 'Jordi Duran', 'jordi.duran@example.com', 'gotcha', 'Administrador'),
(145, 'Ege Hakyemez', 'ege.hakyemez@example.com', 'play', 'Administrador');

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
(29, 2, 17, '2026-05-12 16:27:59'),
(30, 2, 27, '2026-06-23 19:28:31');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de tabela `visualizacoes`
--
ALTER TABLE `visualizacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
