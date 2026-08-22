-- Gerado a partir de insert contratos.txt
-- IDs nao sao declarados (AUTO_INCREMENT). Vinculos via subselect.
-- Funcoes: GT=1, GS=2, F=3
SET NAMES utf8mb4;
START TRANSACTION;

-- Permite equipe vinculada so a contrato (sem ata) ou so a ata (sem contrato)
ALTER TABLE equipe_contrato
  MODIFY COLUMN ata_id INT NULL,
  MODIFY COLUMN contrato_id INT NULL;

-- Servidores novos (nao encontrados por nome aproximado)
INSERT INTO servidor (nome, cargo, matricula, email, telefone, ativo_id) VALUES
('Aletéia da Rosa Homem', 'NAO INFORMADO', 100142, 'a.homem2@imbu.gov.br', '(51) 3692-0000', 1),
('Luciane de Jesus Gonçalves', 'NAO INFORMADO', 100143, 'l.goncalves2@imbu.gov.br', '(51) 3692-0000', 1),
('Aurélio Dias de Oliveira', 'NAO INFORMADO', 100144, 'a.oliveira2@imbu.gov.br', '(51) 3692-0000', 1),
('João Vitor Garcia', 'NAO INFORMADO', 100145, 'j.garcia3@imbu.gov.br', '(51) 3692-0000', 1),
('André da Cunha', 'NAO INFORMADO', 100146, 'a.cunha2@imbu.gov.br', '(51) 3692-0000', 1),
('Mônica da Silva', 'NAO INFORMADO', 100147, 'm.silva5@imbu.gov.br', '(51) 3692-0000', 1),
('Nélida Lilian Pereira', 'NAO INFORMADO', 100148, 'n.pereira2@imbu.gov.br', '(51) 3692-0000', 1),
('Pâmela Tais Antoni', 'NAO INFORMADO', 100149, 'p.antoni2@imbu.gov.br', '(51) 3692-0000', 1),
('Angélica Nascimento da Silva', 'NAO INFORMADO', 100150, 'a.silva5@imbu.gov.br', '(51) 3692-0000', 1),
('André Luis Carlos', 'NAO INFORMADO', 100151, 'a.carlos2@imbu.gov.br', '(51) 3692-0000', 1),
('Mário Guilherme Pereira Azambuja', 'NAO INFORMADO', 100152, 'm.azambuja2@imbu.gov.br', '(51) 3692-0000', 1),
('Eduardo de Souza Gonçalves', 'NAO INFORMADO', 100153, 'e.goncalves2@imbu.gov.br', '(51) 3692-0000', 1),
('Jéssica Port do Prado', 'NAO INFORMADO', 100154, 'j.prado2@imbu.gov.br', '(51) 3692-0000', 1),
('José Vilmar Pereira de Fraga', 'NAO INFORMADO', 100155, 'j.fraga2@imbu.gov.br', '(51) 3692-0000', 1),
('Maurício Nunes Marques', 'NAO INFORMADO', 100156, 'm.marques2@imbu.gov.br', '(51) 3692-0000', 1),
('José Fernando Vargas dos Santos', 'NAO INFORMADO', 100157, 'j.santos3@imbu.gov.br', '(51) 3692-0000', 1),
('João Vitor de Fraga Gomes', 'NAO INFORMADO', 100158, 'j.gomes2@imbu.gov.br', '(51) 3692-0000', 1),
('Jéssica da Hilario da Silva', 'NAO INFORMADO', 100159, 'j.silva3@imbu.gov.br', '(51) 3692-0000', 1),
('Ariélla Machado de Vargas', 'NAO INFORMADO', 100160, 'a.vargas2@imbu.gov.br', '(51) 3692-0000', 1),
('Déborah Evangelista', 'NAO INFORMADO', 100161, 'd.evangelista2@imbu.gov.br', '(51) 3692-0000', 1);

INSERT INTO contrato (numero, ano, data_inicio, data_fim, tipo_id, objeto, nome_contratado, ativo_id, observacao, portaria_designacao, data_designacao) VALUES
(11, 2020, '2019-12-16', '2024-12-16', 3, 'Locação de imóvel para sede da Casa de Acolhimento do Município, localizado na Rua Sapucaia nº 174, Centro (sito Setor 45, quadra 37, Lotes 16,17 e 18). Pelo período de 12 meses, para Secretaria Municipal de Ação Social.', 'MARCELO PIVA', 1, NULL, '602/2023', '2023-03-31'),
(22, 2020, '2020-06-03', '2026-03-02', 2, 'CONTRATAÇÃO DE EMPRESA ESPECIALIZADA EM RASTREAMENTO E MONITORAMENTO VEICULAR.', 'C S M COMÉRCIO E SERVICOS DE SISTEMAS DE SEGURANÇA EIRELI', 1, NULL, '1788/2025', '2025-10-17'),
(32, 2021, '2021-03-25', '2026-03-25', 2, 'Credenciamento de funerárias para a prestação de serviços de auxilio funeral concedido pela Secretaria Municipal de Desenvolvimento Social a pessoas em vulnerabilidade social.', 'FUNERARIA HOFFMEISTER LTDA. - EPP', 1, NULL, '601/2023', '2023-03-31'),
(52, 2021, '2021-06-14', '2026-06-13', 2, 'O objeto do presente é a prestação de serviços de chapeação e pintura com fornecimento de material, para os veículos, máquinas e equipamentos que utilizam desses serviços, nas quantidades e de acordo com as condições ofertadas pela contratada, detalhada na Cláusula Quinta, bem como em conformidade com a Ata de Registro de Preços n°007/2020, do pregão presencial n°003/2020, para a Secretaria Municipal de Transportes. Período 12 (doze) meses a contar de 14/06/2021.', 'VERA LUCIA DA SILVA NUNES - ME', 1, NULL, '1787/2025', '2025-10-17'),
(53, 2021, '2021-06-15', '2027-06-15', 2, 'Contratação de empresa especializada para coleta, tratamento e destino final de resíduos de saúde da classe 1, Grupos A, E e B, para atender demandas das Unidades de Saúde e Cemitério', 'AMBIENTUS TECNOLOGIA AMBIENTAL LTDA', 1, NULL, '501/2026', '2026-04-07'),
(55, 2021, '2021-07-05', '2027-01-04', 2, 'Contratação de empresa especializada na oferta de serviços de publicidade institucional para atender ao município de Imbé', 'PUBLICA COMUNICACAO LTDA', 1, NULL, '920/2026', '2026-07-17'),
(81, 2021, '2021-11-01', '2023-10-31', 2, 'Contratação de empresa para fornecimento de Plataforma de Aprendizagem Digitvs, visando gerenciamento de dados e capacitação dos servidores das Unidades Escolares, por 24 meses.', 'INSTITUTO EDUCACIONAL ESSENCIA DO SABER LTDA', 1, NULL, '823/2021', '2021-01-10'),
(84, 2021, '2021-10-04', '2026-10-03', 2, 'Contrato de serviços postais de correios e telégrafos para a Administração Municipal, no exercício de 2021 A 2026, por estimativa, conforme minuta de contrato anexa.', 'EMPRESA BRASILEIRA DE CORREIOS E TELÉGRAFOS', 1, NULL, '1922/2025', '2025-11-27'),
(87, 2021, '2021-10-18', '2026-10-18', 2, 'Contratação de empresa especializada para prestação de serviço de sistema digital de gestão das Capacitações da Assistência Social.', 'PITFALL SISTEMAS LTDA', 1, NULL, '600/2023', '2023-03-31'),
(91, 2021, '2021-11-09', '2026-11-08', 2, 'Contratação de instituição financeira, para prestação de serviços bancários em caráter de exclusividades para pagamentos e vencimentos, salários, proventos, aposentadorias, pensões e similares, dos servidores da Administração Direta e Indireta do Município de Imbé, para o período de 60 meses.', 'BANCO DO ESTADO DO RIO GRANDE DO SUL S/A', 1, NULL, '997/2021', '2021-12-07'),
(3, 2022, '2022-02-01', '2027-07-31', 2, 'Locação de caminhão caçamba truck, pelo volume das obras de pavimentação e revitalização das vias urbanas municipais previstas para o ano de 2022, como os Convênios da CORSAN, REPAV, Redes Remanescentes e Av. Mariluz, Convênios com o DAER, duplicação da Av. Paraguassu e programa PAVIMENTA que abrange diversas vias do Município de Imbé, pelo período de 12 meses.', 'M.J. TRANSPORTES AMBIENTAL LTDA', 1, NULL, '1263/2025', '2025-06-18'),
(4, 2022, '2022-02-09', '2027-02-08', 2, 'Aquisição de Serviços de Dados Móveis e Voz (CHIP) para Telefonia Móvel Pessoal, sem fornecimento de aparelhos, a ser executada de forma contínua, conforme especificações e condições constantes neste instrumento, de acordo com a Ata de Registro de Preços 09/2022, Pregão Eletrônico 133', 'CLARO S/A', 1, NULL, '878/2026', '2026-07-07'),
(6, 2022, '2022-02-14', '2027-02-13', 2, 'Serviços Jurídicos especializados, visando a revisão dos valores de royalties devidos ao Município de Imbé.', 'HOLANDA SOCIEDADE DE ADVOGADOS', 1, NULL, '468/2022', '2022-02-18'),
(13, 2022, '2022-04-02', '2026-12-19', 1, 'Contratação de empresa para execução dos estudos ambientais para obtenção do licenciamento ambiental junto à FEPAM, para execução de duas travessias entre o Município de Imbé e Tramandaí.', 'GARDEN CONSULTORIA PROJETOS E GESTAO LTDA', 1, NULL, '1227/2025', '2025-06-06'),
(16, 2022, '2022-04-01', '2027-03-31', 1, 'Contratação de empresa especializada para fornecimento de horas médicas para clínico geral e especialistas para atuar no Município de Imbé no período de 12 meses.', 'PROMED- SERVIÇOS EM SAÚDE LTDA- EPP', 1, NULL, '721/2026', '2026-06-02'),
(26, 2022, '2022-05-19', '2026-09-22', 2, 'Contratação de empresa para execução da obra de duplicação da Avenida Paraguassu, trecho entre Av. Caxias do Sul e a Rua Otávio Barbieri, na forma, nos prazos, nas condições e nas especificações estabelecidas no Memorial Descritivo e Memorando da SMOV n° 27/2022, conforme cronograma físico e financeiro do convênio DAER nº AJ/CN/02/21.', 'CONSTRUTORA E PAVIMENTADORA ATUAL EIRELI', 1, NULL, '1152/2024', '2024-05-08'),
(27, 2022, '2022-05-20', '2027-05-19', 2, 'Contratação de empresa para a aplicação de concreto asfáltico em diversas ruas do Município, utilizando saldo da Ata de Registro de Preços n° 27/2021, Pregão Eletrônico n° 041/2021.', 'CONSTRUTORA E PAVIMENTADORA ATUAL EIRELI', 1, NULL, '1527/2023', '2023-10-26'),
(37, 2022, '2022-06-13', '2027-06-11', 1, 'Registro de Preço para aquisição de gases oxigênio medicinal em cilindros de capacidades conforme segue: 1,2,3,4,5,6,7m³ e 8 a 10m³, fornecidos por empresa especializada em período de 12 meses.', 'AIR LIQUIDE BRASIL LTDA', 1, NULL, '495/2026', '2026-04-08'),
(42, 2022, '2022-06-29', '2025-06-29', 2, 'Contratação de coleta e transporte de lixo domiciliar seletivo, não seletivo e limpeza de faixa de praia, no período compreendido entre 16/03/2022 a 15/12/2022 (baixa temporada) e 16/12/2022 a 15/03/2023 em anexo com todas as especificações do termo de Referência do Pregão Eletrônico nº 15/2022.', 'COLETURB SOLUÇÕES AMBIENTAIS LTDA', 1, NULL, '1096/2025', '2025-05-23'),
(43, 2022, '2022-06-20', '2026-06-18', 2, 'Contratação do Instituto para o serviço de Institucionalização do paciente B. V. da R., em Clínica Psiquiátrica conforme processo nº 513.0000855-6, por um período de 12 meses, conforme Termo de Referência do Processo de Dispensa nº 22/2022', 'INSTITUTO DE AMPARO AO EXCEPCIONAL INAMEX', 1, NULL, '747/2026', '2026-06-03'),
(46, 2022, '2022-04-01', '2027-03-31', 2, 'Contratação da prestação de serviços EMATER-RS, para os agricultores familiares, compreendendo o planejamento, a execução e a avaliação de atividades individuais e coletivas, com vistas ao desenvolvimento sustentável das Unidades de Produção Familiar', 'EMATER/RS – ASCAR', 1, NULL, '617/2025', '2025-03-24'),
(51, 2022, '2022-06-01', '2027-05-30', 2, 'Contratação de empresa para realização de capina mecanizada, roçagem, limpeza, pintura de meio-fio, pintura de postes e remoção de rampas.', 'M.J. TRANSPORTES AMBIENTAL LTDA', 1, NULL, '824/2026', '2026-06-18'),
(96, 2022, '2022-10-04', '2026-09-27', 2, 'Tem como objeto Contratação de Pessoa Jurídica, pelo período de doze (12) meses, na modalidade  locação, de software de gestão ambiental para processos administrativos.', 'SYSNOVA INFORMATICA LTDA. - ME', 1, NULL, '030/2025', '2025-01-06'),
(97, 2022, '2022-10-05', '2026-10-04', 2, 'Contratação de empresa especializada na prestação de serviços de comunicação de dados via fibra óptica, para conexão com a internet e interligação local de pontos de transporte, incluindo: fornecimento e instalação de equipamentos, instalação, manutenção e prestação de serviço de telecomunicações, por meio de uma rede IP (Internet Protocol) multisserviços, na forma, nos prazos e nas condições estabelecidas no presente Termo de Referência, com capacidade de prover tráfego de dados, voz e imagem com requisitos mínimos de qualidade, para os Prédios da Prefeitura Municipal de Imbé, com disponibilidade 24 (vinte e quatro) horas por dia, durante 07 (sete) dias da semana, a partir de sua ativação até o término do contrato.', 'VIU INTERNET PROVEDORA DE ACESSO LTDA', 1, NULL, '1892/2025', '2025-11-14'),
(102, 2022, '2022-11-03', '2026-10-29', 2, 'Contratação de empresa para locação de estruturas piramidais visando suprir demandas e necessidades para eventos e shows.', 'CELEIRO FEIRAS E EVENTOS EIRELI-ME', 1, NULL, '896/2026', '2026-07-10'),
(108, 2022, '2022-11-18', '2026-11-09', 2, 'Contratação de empresa especializada em serviços de Hidro jateamento, Limpeza, Esgotamento/Coleta e Destinação Final de resíduos líquidos e semissólidos provenientes de sumidouros e fossas sépticas dos logradouros da Prefeitura Municipal de Imbé.', 'MC ECO SANEAMENTO EIRELLI', 1, NULL, '1832/2025', '2025-10-30'),
(112, 2022, '2022-11-21', '2026-11-17', 2, 'O credenciamento de Instituições Financeiras para a prestação de Serviços Bancários de Recolhimento de Tributos, Impostos, Taxas, Dívida Ativa e Demais Receitas Públicas Municipais por meio de Documento de Arrecadação DARM, em Padrão FEBRABAN, por intermédio de suas agências, com prestação de contas por meio magnético dos valores, arrecadados, preços e prazos.', 'BANCO DO BRASIL S/A', 1, NULL, NULL, NULL),
(115, 2022, '2023-01-01', '2027-01-01', 1, 'Contrato para aquisição de vagas na APAE para atendimento de alunos com necessidades especiais,  por estimativa para o ano de 2023.', 'APAE - ASSOCIACAO DE PAIS AMIGOS DOS EXCEPCIONAIS DE TRAMANDAI', 1, NULL, '138/2026', '2026-02-03'),
(119, 2022, '2022-11-22', '2023-11-28', 2, 'Contratação de serviço juridico/tributários especializados, de recuperação de receita decorrentes do ISS Bancário, INSS.
Aberto processo jurídico.', 'BUENO E LACERDA ADVOGAGADOS ASSOCIADOS', 1, NULL, '2855/2022', '2022-12-08'),
(120, 2022, '2022-12-05', '2026-11-24', 2, 'Registro de Preço de Fornecimento de CARTÕES VALE-ALIMENTAÇÃO, na modalidade CARTÃO MAGNÉTICO/CHIP, que serão utilizados pelos servidores públicos da Prefeitura Municipal de Imbé na aquisição de gêneros alimentícios na rede de estabelecimentos comerciais credenciados, em conformidade com a Lei Municipal n° 2.069, de 06 de novembro de 2019, que autoriza concessão de Vale-Alimentação aos servidores da Prefeitura Municipal de Imbé, apresentado na forma de um cartão plástico de uso pessoal, exclusivo e intransferível.', 'LE CARD ADMINISTRADORA DE CARTOES LTDA', 1, NULL, '1924/2025', '2025-11-27'),
(128, 2022, '2022-12-27', '2024-11-03', 2, 'Contratação de empresa a fim de realizar reforma e ampliação da EMEI Jardelino Peroni', 'R C DIAS PEDROSO CONSTRUTORA EIRELI', 1, NULL, '3158/2022', '2022-12-30'),
(131, 2022, '2023-01-01', '2024-07-01', 2, 'Concessão de Patrocínio, na forma de apoio cultural para a Rádio Golfinho FM, nos termos da Lei Municipal 2.177, de 23 de março de 2021. O programa escolhido para receber o apoio cultural é o Bate Papo da Cidade, um dos programas de maior audiência da emissora e que sempre coloca em debate importantes assuntos de interesse da comunidade de Imbé. Com vigência pelo período de 12 (doze) meses do exercício de 2023, a contar de primeiro de janeiro de 2023, Lei Municipal nº 2.177 de 23 de março de 2021.', 'ASSOC. COMUN. RADIO FM GOLFINHO DE IMBE', 1, NULL, '002/2023', '2023-01-02'),
(7, 2023, '2023-02-01', '2027-02-12', 3, 'Locação de imóvel, localizado na Av. Paraguassú, rua Sapiranga e Rua Campo Bom, para alocar a Sede da Sub Prefeitura de Mariluz. Pelo período de 12 (doze) meses a contar de 01 (primeiro) de fevereiro de 2023.', 'ANTONIO CORREA DE ANDRADE SOBRINHO', 1, NULL, '285/2023', '2023-02-03'),
(8, 2023, '2023-03-20', '2027-02-08', 2, 'Contratação da Empresa Senac Soluções Corporativas para execução de projeto “Formando Jovens Para o Futuro” para alunos do 9º ano das Escolas  da Rede Municipal de Ensino, no período de 03/2023 até 12/2023, conforme projeto e documentação anexo.', 'SERV.NAC.DE APRENDIZAGEM COMERCIAL-SENAC', 1, NULL, '557/2023', '2023-03-27'),
(15, 2023, '2023-04-10', '2025-05-19', 2, 'Contratação de empresa para construção das novas instalações do Centro de Apoio da Educação Básica II, a ser construída no Bairro Albatroz,  constituída das seguintes instalações: átrio, recepção, sala da direção e secretaria, refeitório, cozinha, despensa, lavanderia, depósito, seis (06) salas de aula e dois (dois) conjuntos de sanitários masculino e feminino, com acessibilidade.', 'OURO FINO CONSTRUTORA LTDA', 1, NULL, '2136/2024', '2024-12-04'),
(20, 2023, '2023-03-28', '2026-03-28', 2, 'Pedido referente a contratação de pessoa física para locação de imóvel para instalação da Unidade de Saúde da Família Nova Nordeste, a qual passará por reforma e ampliação da sua estrutura física, inviabilizando a rotina dos serviços de saúde no local. Locação pelo período de 12 meses, podendo ser prorrogado ou rescindido antes do previsto, a depender do andamento da obra. A contar de 1º de abril /2023. Portaria de Fiscalização nº 55/2023', 'EVA DOS SANTOS BRAZ', 1, NULL, '730/2026', '2026-06-02'),
(22, 2023, '2023-05-11', '2026-04-03', 2, 'Pedido referente a contratação de empresa por inexigibilidade por um período de 12 meses, podendo ser renovado, com início em abril/2023. Contratação necessária para prestação de serviço de manutenção preventiva e corretiva e calibração de acordo com plano de manutenção e modelo de cada equipamento, com estimativa de peças para Câmara Fria da Marca Indrel. Mandamos está solicitação de contratação na forma de inexigibilidade pois a empresa Indrel detém carta de exclusividade da marca, conforme documentos em anexo. Indicação de Portaria de Gestores e Fiscais de Contrato de Serviço: 55/2023 de Material por haver estimativa de peças: 56/2023', 'INDREL INDUSTRIA DE REFRIGERACAO LONDRINENSE LTDA', 1, NULL, '155/2026', '2026-02-03'),
(32, 2023, '2023-04-24', '2026-04-23', 2, 'Contratação referente a prestação de serviços, de empresa especializada em gerenciamento e controle de fornecimento de combustíveis (Gasolina Comum, Gasolina Aditivada, Etanol, Diesel S10 e Diesel S500), Arla, aditivos, lubrificantes e filtros, por meio de sistema informatizado e implantação de cartão magnético ou cartão eletrônico tipo smart com chip, vinculado à rede credenciada de postos de combustíveis, a fim de atender as necessidades dos veículos e máquinas leves e pesadas, inclusive motores estacionários e equipamentos à combustão, da Prefeitura Municipal  de Imbé.', 'TICKET SOLUCOES HDFGT S/A', 1, NULL, '1785/2025', '2025-10-17'),
(44, 2023, '2023-06-26', '2027-05-30', 2, 'O objeto do presente é a Contratação de empresa especializada em licença de uso (locação) de sistema SIGEMEC (Sistema de gestão organizacional, monitoramento e controle) Módulos PAR Ciclos II e III, Ciclos 2021/2024, Módulo obras 2.0, PDDE Interativo e todas as ações agregadas, Módulo Projeto de Educação Infantil, Módulo SIGPC, Módulo Conselhos Municipais, Módulo SIGARP para atender a Secretaria Municipal de Educação, conforme Termo de Referência e proposta apresentada, Pedido de Compra nº 1050/2023, Processo nº 8671/2023.', 'DALBERTO CONSULTORIA E ASSESSORIA LTDA', 1, NULL, '139/2026', '2026-02-03'),
(45, 2023, '2023-07-11', '2025-06-26', 2, 'O objeto do presente contrato e a contratação de empresa para a prestação de serviço de manutenção preventiva e corretiva com estimativa de fornecimento de peças e corretiva com estimativa de fornecimento de peças de reposição para câmera fria das marcas elber e nova instrumentos para conservação de imunológicos hemoderivados e termolábeis na secretaria municipal de saúde.
(10/06/2025 – Não será renovado, ETP em andamento para novo contrato, com uma estimativa de peças maior )', 'CALMED DISTRIBUIDORA E SERVIÇOS EIRELI-ME', 1, NULL, '1197/2025', '2025-06-06'),
(47, 2023, '2023-07-12', '2026-06-26', 2, 'O objeto do presente é a contratação de empresa para prestação de serviço de Dosimetria Pessoal para os usuários do aparelho de Raio-X localizado na Pliclinica 24h de Imbé. O Contrato refere-se ao monitoramento de 11 Dosímetros pelo período de 12 meses, conforme especificações constantes no Pedido de Compra nº 1041/2023 e no Processo Administrativo nº 8439/2023;', 'PRO RAD-CONSULTORES EM RADIO PROTECAO LTDA', 1, NULL, '733/2026', '2026-06-03'),
(55, 2023, '2023-07-24', '2026-07-15', 2, 'O objeto do presente é a contratação de empresa a prestação de serviços especializados – internação psiquiátrica devido a institucionalização do menor H.R.A.O, conforme medida de proteção nº 5003836-84.2015.8.21.0073/RS do Ministério Público do Estado do RS, terá vigência de 12 meses, podendo ser renovado no prazo máximo permitido por Lei, conforme pedido de compra nº 1165/2023, processo nº 10.455/2023.', 'INSTITUTO DE AMPARO AO EXCEPCIONAL INAMEX', 1, NULL, '758/2026', '2026-06-09'),
(68, 2023, '2023-08-22', '2024-04-29', 2, 'Valor referente à contratação de empresa para prestação de serviços técnicos especializados para elaboração e homologação do heliponto a ser construído no Município de Imbé. A empresa contratada deverá ser responsável pelo pré-projeto; projeto executivo; plano básico de zona de proteção de heliponto na aeronáutica; homologação da ANAC. Área aproximada de intervenção: 1,0km².

Pendência de pagamento', 'M.MATTOS ASSESSORIA AERONAUTICA LTDA', 1, NULL, '1250/2023', '2023-08-29'),
(72, 2023, '2023-08-30', '2025-07-02', 2, 'O LOCADOR é proprietário de um prédio comercial , constituído em dois pavimentos, de alvenaria com área de 352,92m², localizado na Av. Paraguassú, nº 1.868, Centro, Município de Imbé/RS, objeto da matrícula número 109.466, fls. 1, do ofício de Registro de Imóveis da Comarca de Tramandaí/RS que está sendo locado pelo Município de Imbé.
(10/06/2025 – Em Processo de Renovação e/ou elaborar novo ETP devido ao espólio)', 'ODILON VIEIRA MARTINS', 1, NULL, '1195/2025', '2025-06-06'),
(73, 2023, '2023-08-28', '2026-08-19', 2, 'O objeto do presente é a Contratação de empresa a prestação de serviço mensal de física médica e proteção radiológica com o objetivo de garantir a segurança dos usuários e dos profissionais que trabalham com as radiações emitidas do equipamento de Raio X. O Serviço implica na realização de uma visita ao mês pela empresa contratada onde a mesma fará testes, avaliações do equipamento e também o monitoramento e adequação dos procedimentos de trabalho de acordo com as normas e a legislação vigente - Vigilância Sanitária RDC 611 da Anvisa, conforme pedido de compras n°1081/2023, termo de referencia e documentos anexos ao processo administrativo n°8610/2023.
(10/06/2025 – Será Renovado)', 'MARTINI & MARTINI TECNOLOGIA PARA INSTALAÇÕES NUCLEARES E RADIOLÓGICAS LTDA - ME', 1, NULL, '726/2026', '2026-06-02'),
(86, 2023, '2025-11-04', '2026-11-03', 2, 'O objeto do presente é a contratação da empresa BORBA, PAUSE & PERIN- ADVOGADOS S/S, para serviços técnicos especializados de consultoria jurídica em direito público, vinculados ao direito constitucional, ao direito administrativo, direito ambiental, ao direito urbanístico, ao direito do trabalho, ao direito previdenciário, ao direito financeiro e ao direito tributário, com expedição de boletins técnicos, orientação verbal ilimitada na sede ou por telefone, resposta escrita e fundamentada até 05 solicitações mensais, no período de 12 meses, conforme Termo de Referência em anexo.', 'BORBA, PAUSE & PERIN - ADVOGADOS', 1, NULL, '889/2026', '2026-07-10'),
(92, 2023, '2023-09-28', '2025-12-18', 2, 'Contratação de empresa para reforma da EMEF Manoel Mendes.', 'JCBATTISTI ENGENHARIA LTDA', 1, NULL, '654/2025', '2025-03-26'),
(94, 2023, '2023-10-04', '2025-10-06', 2, 'O objeto do presente é a contratação de empresa especializada, para Conclusão da Construção do projeto espaço educativo 12 salas, conforme Memorial, Termo de Referência, Planilhas e Plantas constantes no Processo Administrativo nº 4713/2023 e 4646/2023, no procedimento licitatório Concorrência nº 002/2023.', 'DELTA N CONSTRUTORA LTDA', 1, NULL, '656/2025', '2025-03-26'),
(99, 2023, '2023-11-13', '2026-10-05', 2, 'O objeto do presente é a contratação de empresa especializada na prestação de serviços de manutenção preventiva e corretiva com o fornecimento de peças de reposição e conexões para equipamentos e periféricos de uso Odontológico das Unidades Odontológicas do Muncipio de Imbé.
(10/06/2025 – Será Renovado)', 'CALMED DISTRIBUIDORA E SERVIÇOS EIRELI-ME', 1, NULL, '722/2026', '2026-06-02'),
(101, 2023, '2023-11-01', '2025-01-11', 2, 'O objeto do presente é a contratação de empresa especializada, para reforma da EMEI Professora Iara Martins, no Balneário Mariluz, no Processo Administrativo nº 6266/2023, no procedimento licitatório Concorrência nº 007/2023.', 'R C DIAS PEDROSO CONSTRUTORA EIRELI', 1, NULL, '2137/2024', '2024-12-04'),
(102, 2023, '2023-11-01', '2026-02-02', 2, 'O objeto do presente é a contratação de empresa especializada, para construção das novas instalações da EMEI Vô Jovino a ser construída no Balneário Santa Terezinha, no Processo Administrativo nº 4446/2023, no procedimento licitatório Concorrência nº 005/2023.', 'R C DIAS PEDROSO CONSTRUTORA EIRELI', 1, NULL, '2138/2024', '2024-12-04'),
(105, 2023, '2023-10-16', '2026-10-12', 2, 'O objeto do presente é a locação do imóvel localizado na Avenida Osório, 275, Centro, na Cidade de Imbé/RS, matriculado no RGI de Tramandaí/RS sob o nº 114.975, para instalações do Centro de Atendimento em Saúde (CAS) do Programa TEAcolhe, destinado para o atendimento a pessoas com Transtorno do Espectro do Autismo (TEA) e suas Famílias, no período de 12 meses, conforme Termo de Referência em anexo.
(10/06/2025 – Será Renovado)', 'GIOVANI DEBASTIANI', 1, NULL, '723/2026', '2026-06-02'),
(108, 2023, '2023-11-14', '2026-06-15', 2, 'O objeto do presente é a contratação de empresa especializada, para construção de muro divisório  e quadra coberta fechada na EMEF Jusseni Euzébio de Oliveira, em Mariluz, no Processo Administrativo nº 4447/2023, no procedimento licitatório Concorrência nº 004/2023.', 'CM COMERCIO E SERVIÇO DE CONSTRUÇÕES LTDA', 1, NULL, '2135/2024', '2024-12-04'),
(110, 2023, '2023-08-11', '2026-08-11', 2, 'O objeto do presente é a contratação do Residencial Terapêutico para a prestação de serviços de institucionalização/acolhimento em cumprimento ao Processo nº 073.1.16.000593-6, referente à internação em clínica especializada do paciente L.A.F., conforme termo de referência em anexo.
(10/06/2025 – Será Renovado)', 'SRT CAMINHO DA LAGOA LTDA', 1, NULL, '724/2026', '2026-06-02'),
(111, 2023, '2023-10-25', '2025-07-24', 2, 'O objeto do presente é a contratação de empresa para a execução de projeto da obra de pavimentação e drenagem da Avenida Frederico Westphalen, Centro, conforme pedido de compra nº 1352/2023, processo nº 14.452/2023;', 'LUMERTZ CONSTRUTORA E PAVIMENTADORA LTDA', 1, NULL, '1541/2023', '2023-10-27'),
(117, 2023, '2023-11-14', '2025-10-18', 2, 'O objeto do presente é o credenciamento de empresa para prestação de serviços laboratoriais de exames de análises clinicas, de coleta, realização e distribuição de exames de análises clínicas, constantes na tabela de procedimentos SUS (Grupo 02 – Subgrupo 02), por valores iguais aos definidos na tabela vigente, destinados aos usuários da Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público nº 001/2023, processo nº14.499/2023;', 'LABORATORIO DE ANALISES CLINICAS FONTANA IMBE LTDA.', 1, NULL, '441/2025', '2025-03-06'),
(118, 2023, '2023-11-14', '2025-10-18', 2, 'O objeto do presente é o credenciamento de empresa para prestação de serviços laboratoriais de exames de análises clinicas, de coleta, realização e distribuição de exames de análises clínicas, constantes na tabela de procedimentos SUS (Grupo 02 – Subgrupo 02), por valores iguais aos definidos na tabela vigente, destinados aos usuários da Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público nº 001/2023, processo nº14.499/2023;', 'LABORATORIO DE ANALISE CERRO BRANCO LTDA', 1, NULL, '442/2025', '2025-03-06'),
(119, 2023, '2023-11-14', '2026-11-14', 2, 'O objeto do presente é o credenciamento de empresa para prestação de serviços laboratoriais de exames de análises clinicas, de coleta, realização e distribuição de exames de análises clínicas, constantes na tabela de procedimentos SUS (Grupo 02 – Subgrupo 02), por valores iguais aos definidos na tabela vigente, destinados aos usuários da Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público nº 001/2023, processo nº14.499/2023;', 'LABORATORIO VITALE DE ANALISES CLINICAS LTDA', 1, NULL, '443/2025', '2025-03-06'),
(123, 2023, '2023-12-20', '2024-12-19', 2, 'O objeto do presente é a aquisição de material pedagógico, atendendo a BNCC e ao Projeto sócio emocional da rede de ensino de Imbé “ Projeto de Vida”, do Ensino Fundamental, para escolas da rede Municipal.', 'EDITORA FTD SA', 1, NULL, '1790/2023', '2023-12-21'),
(124, 2023, '2023-10-17', '2026-11-16', 2, 'O  objeto do presente é a contratação do ancionato é o pagamento de diferença de hospedagem e alimentação, pelo período de 12 meses, ao idoso Vilmar Martins de Aguiar conforme ofício de promotoria nº 01593.000.929/2022-0004 com amparo na Lei Municipal nº 2.194 de 14/07/2021, conforme Termo de Referência em anexo, parecer jurídico nº 1275/2023;', 'N.T.B. PEREIRA ANCIONATO - ME', 1, NULL, '1656/2023', '2023-11-22'),
(125, 2023, '2023-11-10', '2025-11-10', 2, 'O objeto do presente é a conversão de saldo remanescente da Ata de Registro de Preços nº 075/2022, referente ao Pregão Eletrônico nº 091/2022, aos seguintes itens 05, 07 e 09 registrados na ata, tendo como vencedora a CONTRATADA, conforme condições contratadas no pregão eletrônico e registro de preços, de acordo com as necessidades da administração pública municipal;', 'PEDRITA CONSTRUÇÃO EIRELI', 1, NULL, '2061/2024', '2024-11-22'),
(126, 2023, '2023-11-13', '2026-11-10', 2, 'O objeto do presente é a conversão de saldo remanescente da Ata de Registro de Preços nº 075/2022, referente ao Pregão Eletrônico nº 091/2022, aos seguintes itens 01, 02, 03, 04, 08, 12 E 13 registrados na ata, tendo como vencedora a CONTRATADA, conforme condições contratadas no pregão eletrônico e registro de preços, de acordo com as necessidades da administração pública municipal.', 'ADEMIR SANTOS MOTTI E CIA LTDA', 1, NULL, '2062/2024', '2024-11-22'),
(128, 2023, '2023-12-01', '2027-11-26', 2, 'O objeto do presente é a contratação de empresa para assessoria pedagógica e tecnológica para professores, alunos, famílias e demais servidores administrativos, visando gerenciamento de dados e capacitação dos servidores das Unidades Escolares, da plataforma DIGITVS, conforme especificações constantes no Pedido de Compra nº 2146/2023, Estudo Técnico Preliminar, Termo de Referência e Proposta anexos;', 'INSTITUTO EDUCACIONAL ESSENCIA DO SABER LTDA', 1, NULL, '142/2026', '2026-02-03'),
(132, 2023, '2023-12-22', NULL, 2, 'O credenciamento de Instituições Financeiras para a prestação de Serviços Bancários de Recolhimento de Tributos, Impostos, Taxas, Dívida Ativa e Demais Receitas Públicas Municipais por meio de Documento de Arrecadação DARM, em Padrão FEBRABAN, por intermédio de suas agências, com prestação de contas por meio magnético dos valores, arrecadados, preços e prazos.', 'BANCO DO ESTADO DO RIO GRANDE DO SUL S/A', 1, NULL, NULL, NULL),
(1, 2024, '2024-01-24', '2026-01-23', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços na área da saúde pública, descritos no Anexo I - Tabela de Procedimentos de Imbé, conforme as especificações técnicas, de qualidade e valores referentes a cada procedimento, para ser realizado diretamente junto a Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público e seus anexos, nº 002/2023, processo nº 15.304/2023, ficando a CREDENCIADA a prestar os exames constantes no Grupo I, Item 13, e Grupos III, V e VI;', 'LITORAL RADIOLOGIA E DIAGNÓSTICO POR IMAGEM LTDA', 1, NULL, '433/2025', '2025-03-06'),
(2, 2024, '2024-01-05', '2029-01-04', 2, 'O objeto do presente é a locação do imóvel localizado na Av. Paraguassu, Centro, na cidade de Imbé/RS, edificado sobre o lote 51 e parte do lote número 50(p/50)  da quadra H atual n°238, objeto da matrícula número 137.278,fls 1, do oficio de registro de imóveis da comarca de Tramandai-RS, no periodo de 60 meses.', 'ODILON VIEIRA MARTINS', 1, NULL, '426/2026', '2026-03-23'),
(4, 2024, '2024-01-17', '2026-01-17', 2, 'O objeto do presente é o credenciamento de empresa para prestação de serviços laboratoriais de exames de análises clínicas, de coleta, realização e distribuição de exames de análises clínicas, constantes na tabela de procedimentos SUS (Grupo 02 – Subgrupo 02), por valores iguais aos definidos na tabela vigente, destinados aos usuários da Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público nº 001/2023, processo nº14.499/2023;', 'LABORATORIO IBERLEO LTDA', 1, NULL, '440/2025', '2025-03-06'),
(5, 2024, '2024-01-24', '2026-01-23', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços na área da saúde pública, descritos no Anexo I - Tabela de Procedimentos de Imbé, conforme as especificações técnicas, de qualidade e valores referentes a cada procedimento, para ser realizado diretamente junto a Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público e seus anexos, nº 002/2023, processo nº 15.304/2023, ficando a CREDENCIADA a prestar os exames constantes no Grupo II;', 'CIADEF CLINICA INTEGRADA LTDA – ME', 1, NULL, '434/2025', '2025-03-06'),
(6, 2024, '2024-01-24', '2026-01-23', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços na área da saúde pública, descritos no Anexo I - Tabela de Procedimentos de Imbé, conforme as especificações técnicas, de qualidade e valores referentes a cada procedimento, para ser realizado diretamente junto a Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público e seus anexos, nº 002/2023, processo nº 15.304/2023, ficando a CREDENCIADA a prestar os exames constantes no Grupo III;', 'LIDIANE GOLDANI', 1, NULL, '435/2025', '2025-03-06'),
(7, 2024, '2024-01-24', '2026-01-23', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços na área da saúde pública, descritos no Anexo I - Tabela de Procedimentos de Imbé, conforme as especificações técnicas, de qualidade e valores referentes a cada procedimento, para ser realizado diretamente junto a Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público e seus anexos, nº 002/2023, processo nº 15.304/2023, ficando a CREDENCIADA a prestar os exames constantes no Grupo III;', 'BILLO & MEYER LTDA', 1, NULL, '436/2025', '2025-03-06'),
(11, 2024, '2024-02-09', '2026-02-08', 2, 'O objeto do presente é o Credenciamento de prestadores de serviços na área da saúde pública, para realização de exames diretamente junto a Rede Municipal de Saúde de Imbé.', 'CENTRO CLINICO MAIS SAUDE LTDA', 1, NULL, '437/2025', '2025-03-06'),
(12, 2024, '2024-02-16', '2026-02-16', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços na área da saúde pública, descritos no Anexo I - Tabela de Procedimentos de Imbé, conforme as especificações técnicas, de qualidade e valores referentes a cada procedimento, para ser realizado diretamente junto a Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público e seus anexos, nº 002/2023, processo nº 15.304/2023.', 'UNIDADE RADIOLÓGICA DE DIAGNÓSTICO POR IMAGEM.SOC. SIMPLES LTDA ME', 1, NULL, '438/2025', '2025-03-06'),
(13, 2024, '2024-02-16', '2026-02-15', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços na área da saúde pública, descritos no Anexo I - Tabela de Procedimentos de Imbé, conforme as especificações técnicas, de qualidade e valores referentes a cada procedimento, para ser realizado diretamente junto a Rede Municipal de Saúde de Imbé, e em conformidade com as condições estabelecidas no Edital de Chamamento Público e seus anexos, nº 002/2023, processo nº 15.304/2023', 'ION 3D RADIOLOGIA ODONTOLOGICA LTDA', 1, NULL, '439/2025', '2025-03-06'),
(15, 2024, '2024-02-20', '2027-02-14', 2, 'O objeto do presente é a contratação de empresa a prestação de serviços de Agente de Integração de Estagiários, junto às instituições de ensino, para o preenchimento de bolsas de estágios não-obrigatórios na Prefeitura Municipal de Imbé, por estudantes regularmente matriculados e com frequência efetiva nos cursos vinculados à estrutura do ensino médio, superior, especial e profissional, conforme pedido de compra nº 335/2024, processo nº 1934/2024.', 'FUNDAÇÃO UNIVERSIDADE EMPRESA DE TECNOLOGIA E CIÊNCIAS', 1, NULL, '888/2026', '2026-07-10'),
(21, 2024, '2024-04-04', '2025-02-03', 2, 'O objeto do presente é a contratação de empresa para contratação de empresa para ministrar o curso de Princípios Montessorianos aos servidores da Rede Municipal de Educação, conforme cronograma apresentado, com cinco encontros presenciais, com 02 (duas) horas/aula cada, incluindo material de aprofundamento de estudos e práticas de atividades e observação entre eles, perfazendo o total de 20 (vinte) horas, conforme especificações constantes no Pedido de Compra nº 300/2024, Estudo Técnico Preliminar, Termo de Referência e Proposta anexos;', 'ALESSANDRO SALDANHA DE BARROS BUENO ROMERO', 1, NULL, '968/2024', '2024-04-04'),
(24, 2024, '2024-03-22', '2025-03-21', 2, 'O objeto do presente é a conversão de saldo remanescente da Ata de Registro de Preços nº 072/2023, referente ao Pregão Eletrônico nº 079/2023, ao  item 01 registrado na ata, tendo como vencedora a CONTRATADA, conforme condições contratadas no pregão eletrônico e registro de preços, de acordo com as necessidades da administração pública municipal.', 'JOAO LUIZ DOS SANTOS MONTEIRO-ME', 1, NULL, '2064/2024', '2024-11-22'),
(27, 2024, '2024-04-11', '2027-04-10', 2, 'Contratação de 01 (uma) vaga junto à Contratada, para atendimento do aluno P.H.D.R., conforme solicitação do Ministério Público através do Ofício nº DI 00915.07631/2017, conforme especificações constantes no Pedido de Compra nº 300/2024', 'ASSOC. DE PAIS E AMIGOS DOS EXCEPCIONAIS DE OSÓRIO', 1, NULL, '144/2026', '2026-02-03'),
(31, 2024, '2024-05-02', '2027-05-01', 2, 'O objeto do presente é o Credenciamento de Prestadores de Serviços para prestação de serviços de castração cirúrgica (orquiectomia e ovariohisterectomia) e implantação de microchip em felinos machos, fêmeas e caninos machos e fêmeas.', 'ESPAÇO VET CLÍNICA VETERINÁRIA LTDA – EPP', 1, NULL, '743/2025', '2025-04-07'),
(34, 2024, '2024-05-16', '2027-05-16', 2, 'O objeto do presente é a contratação de empresa especializada na prestação dos serviços de manutenção preventiva e corretiva, com a estimativa de fornecimento de peças de reposição para as 03 (três) Câmaras Frias da marca Biotecno que estão localizados na Sala de Vacinas de Mariluz, Sala de Vacina da Nova Nordeste e na Sala da Epidemiologia, conforme Pedido de compra 842/2024, Processo nº 5425/2024;', 'BIOTECNO INDUSTRIA E COMERCIO LTDA', 1, NULL, '725/2026', '2026-06-02'),
(35, 2024, '2024-05-01', '2029-04-30', 3, 'O objeto da presente locação é uma sala comercial localizado na Av. Osório, nº 985 (antigo 920), esquina Rua Rio Pardo, Centro, Município de Imbé/RS, sendo a loja de 205m² e depósito de 35,00 m², com estacionamento, imóvel que faz parte integrante do prédio registrado na matrícula sob o número 8.839, do livro 02 do ofício de Registro de Imóveis da Comarca de Tramandaí/RS, conforme Pedido de Compra nº 993/2024, Processo nº 6948/2024.', 'GEHM INCORPORAÇÕES E SERVIÇOS LTDA', 1, NULL, '855/2026', '2026-07-10'),
(37, 2024, '2024-06-05', '2025-02-04', 2, 'O objeto do presente é a contratação de serviços especializados para realização de formação de Educação Infantil e Ensino Fundamental da Rede Municipal sobre “TRANSTORNOS DO NEURODESENVOLVMENTO E A PREPARAÇÃO DE AMBIENTES ESCOLARES INCLUSIVOS”, para até 200 servidores, em 05 (cinco) encontros de 2 horas, cada, totalizando 10 (dez) horas, a ser realizado presencialmente no Município de Imbé, conforme especificações constantes no Pedido de Compra nº 562/2024, Estudo Técnico Preliminar, Termo de Referência e Proposta anexos, parecer jurídico nº 438/2024;', 'ANATO NÚCLEO DE TERAPIA OCUPACIONAL NA INFÂNCIA E ADOLESCÊNCIA:ATENDIMENTO, ENSINO E PESQUISA', 1, NULL, '1281/2024', '2024-06-05'),
(38, 2024, '2024-10-21', '2026-07-15', 2, 'Abertura de expediente para Contratação de serviços de assessoria ambiental especializada nos estudos que culminarão na elaboração do Marco Regulatório, abrangendo as Áreas de Preservação Permanente e área urbana consolidada do município de Imbé, através da Identificação das reais condições de uso, conservação, ocupação do solo e delimitação das mesmas,, com objetivo de criar material de suporte analítico discricionário para uso nos processos de ordenamento territorial e licenciamento ambiental.', 'AMBILOG GESTAO DE NEGOCIOS LTDA', 1, NULL, '1952/2024', '2024-10-22'),
(40, 2024, '2024-05-23', NULL, 2, 'O objeto do presente é a aquisição de licença de uso do software para continuidade do Geoprocessamento, que possibilita importar imagens aéreas, vetorizar em ambientes CAD e realizar medições para levantamento do cadastro imobiliário para 04 computadores, possibilitando maior desempenho para o Setor Tributário da SEFIPE', 'METRICA TECNOLOGIA IMPORTAÇÃO E EXPORTAÇÃO LTDA', 1, NULL, '1216/2024', '2024-05-23'),
(41, 2024, '2026-05-27', '2027-05-26', 2, 'O objeto do presente é a conversão de saldo remanescente da Ata de Registro de Preços nº 033/2023, referente ao Pregão Eletrônico nº 028/2023, aos 14 itens registrado na ata, tendo como vencedora a CONTRATADA, conforme condições contratadas no pregão eletrônico e registro de preços, de acordo com as necessidades da administração pública municipal.
(Está na PGM – Processo nº 4444/2025)', 'ELÉTRICA CATARINENSE LTDA', 1, NULL, '826/2026', '2026-06-18'),
(45, 2024, '2024-06-20', '2027-06-19', 2, 'O objeto da presente locação de um prédio de alvenaria localizado na Rua Sobradinho 2433, Centro, na Cidade de Imbé/RS, com área de 195,00m², conforme matrícula nº 96.072 do RGI de Tramandaí/RS, para o Arquivo Morto da Secretaria Municipal de Administração, conforme Pedido de Compra nº 1095/2024, Processo nº 8082/2024.', 'FERNANDO LAUREANO GONÇALVES', 1, NULL, '884/2026', '2026-07-10'),
(46, 2024, '2024-06-01', '2027-06-12', 2, 'O objeto da presente locação de um prédio de alvenaria localizado na Rua Campo Bom, 299, Centro, na Cidade de Imbé/RS, com área de 338,93m², conforme matrícula n 92.917 do RGI de Tramandaí/RS, onde está instalada a Secretaria Municipal de Segurança Pública e Trânsito, conforme Pedido de Compra nº 1097/2024, Processo nº 8080/2024', 'LIDIA GUIMARÃES DE FREITAS', 1, NULL, '300/2026', '2026-03-04'),
(50, 2024, '2024-06-05', '2026-06-04', 2, 'Pedido referente a contratação do Residencial Terapêutico de longa permanência para a prestação de serviços de institucionalização/acolhimento em cumprimento a decisão Judicial do Processo nº 073/5.17.0000581-3, referente a internação em clinica especializada do paciente A.L.Z.M.
(10/06/2025 – Em renovação – colhendo assinaturas)', 'COMUNIDADE TERAPEUTICA SANTA RITA DE CASSIA- PREVENÇÃO, RECUPERAÇÃO E REINSERÇÃO SOCIAL', 1, NULL, '735/2026', '2026-06-03'),
(51, 2024, '2024-07-03', '2025-07-02', 2, 'O objeto do presente é a Contratação de empresa para limpeza e desinfecção bacteriológica dos reservatórios/ caixas d’água das Unidades Escolares da rede Municipal, conforme Pedido de Compra nº 760/2024, Processo nº 4699/2024;', 'EFFICIENCY HIGIENIZAÇÃO CONSULTORIA LTDA', 1, NULL, '1540/2024', '2024-07-03'),
(52, 2024, '2024-07-03', '2024-09-30', 2, 'O objeto do presente é a contratação de empresa com mão de obra e fornecimento de materiais, conforme Memorial, pedido de Compra nº 22/2024, Processo nº 979/2024, Pregão Eletrônico nº 028/2024, para aquisição dos seguintes itens:  Lote 01 – Reforma e pintura da EMEF Noberto Martinho Cardoso, conforme Memorial.', 'EDERSON WILLIAN TEIXEIRA LTDA', 1, NULL, '2139/2024', '2024-12-04'),
(53, 2024, '2024-07-03', '2024-09-30', 2, 'O objeto do presente é a contratação de empresa com mão de obra e fornecimento de materiais, conforme Memorial, pedido de Compra nº 22/2024, Processo nº 979/2024, Pregão Eletrônico nº 028/2024, para aquisição dos seguintes itens:  Lote 02 – Reforma e pintura da EMEI Professora Pedrinha, conforme Memorial.', 'EDERSON WILLIAN TEIXEIRA LTDA', 1, NULL, '2140/2024', '2024-12-04'),
(54, 2024, '2024-07-10', '2026-07-09', 1, 'O objeto do presente é a conversão de saldo remanescente da Ata de Registro de Preços nº 064/2023, referente ao Pregão Eletrônico nº 070/2023, dos seguintes produtos elencados na tabela abaixo, tendo como vencedora a CONTRATADA, conforme condições contratadas no pregão eletrônico e registro de preços, de acordo com as necessidades da administração pública municipal.', 'BORRACHARIA NUNES E LINHARES LTDA', 1, NULL, '1790/2025', '2025-10-17'),
(56, 2024, '2024-07-23', '2025-01-03', 2, 'Abertura de procedimento licitatório para contratação de empresa para alterações elétricas e hidrossanitários visando instalação de maquinas de lavar louças industriais nas escolas municipais elencadas nos documentos em anexo, tendo em vista que o pregão eletrônico 14/2024, processo 19540/2023 restou fracassada.', 'M S MACHADO DA LUZ', 1, NULL, '1578/2024', '0204-07-23'),
(57, 2024, '2024-07-30', '2025-01-25', 1, 'O objeto do presente é a contratação de empresa para fornecimento de Bilhetes de ingresso para participação em Projetos educativos do Parque Quinta da Estância, para alunos da rede Municipal, conforme Pedido de Compra nº 1257/2024, e demais documentos constantes no processo n°7843/2024.', 'QUINTA DA ESTÂNCIA SITIO EDUCACIONAL LTDA', 1, NULL, '1597/2024', '2024-07-30'),
(58, 2024, '2024-07-03', '2026-07-02', 2, 'Solicito a locação de um imóvel para as instalações do Centro de Referência de Assistência Social / CRAS, localizado na região central do Município pelo período de 12 (doze) meses a contar da data de 03/07/2024. Tendo em vista que o contrato atual 087/2018 esta vigente a mais de 5 anos.', 'OSWALDO JOÃO DE OLIVEIRA', 1, NULL, '1582/2024', '2024-07-26'),
(61, 2024, '2024-08-03', '2026-08-02', 2, 'Locação de um imóvel para as instalações do Centro de Convivências - CRAS, localizado na zona norte do Município pelo período de 12 (doze) meses a contar da data de 03/08/2024. Tendo em vista que o contrato atual 064/2018 esta vigente a mais de 5 anos.', 'MARINÊS ADMINISTRAÇÃO DE IMÓVEIS LTDA', 1, NULL, '1644/2024', '2024-08-14'),
(63, 2024, '2024-09-11', '2026-09-10', 2, 'Credenciamento de empresa para prestação de serviços de diagnóstico, exames e procedimentos na especialidade de OFTALMOLOGIA para atender usuários do SUS pelo período de vigência estipulado em Edital de Credenciamento.', 'CENTRO MÉDICO VILA NOVA LTDA', 1, NULL, '444/2025', '2025-03-06'),
(64, 2024, '2024-09-11', '2026-09-10', 2, 'Credenciamento de empresa para prestação de serviços de diagnóstico, exames e procedimentos na especialidade de OFTALMOLOGIA para atender usuários do SUS pelo período de vigência estipulado em Edital de Credenciamento.', 'ASSOCIAÇÃO HOSPITALAR VILA NOVA', 1, NULL, '445/2025', '2025-03-06'),
(65, 2024, '2024-09-03', '2025-09-02', 2, 'Pedido refere a contratação pelo período mínimo de 12 meses, de empresa especializada na coleta, análise e emissão de laudo da qualidade da água do CME (Central de Material e Esterilização) que fica localizado no PA 24h (Pronto Atendimento 24horas) - Avenida Paraguassu, nº1075, Bairro Centro, Imbé/ RS. A contratação visa o fornecimento de mão de obra especializada, o uso de equipamentos apropriados e de todas as despesas com deslocamento e com insumos necessários para a execução do serviço. O serviço deverá ser prestado de forma semestral e em conformidade as normativas e regulamentações vigentes exigidas pelo Ministério da Saúde - RDC 15/2012 ANVISA.', 'TOXILAB LABORATORIO DE ANALISES LTDA', 1, NULL, '1527/2025', '2025-08-11'),
(66, 2024, '2024-08-22', '2025-03-10', 2, 'O objeto do presente é a Contratação de empresa para revisão de PPCI e manutenção corretiva para renovação de alvará de prevenção de incêndios, com testagem de itens existentes e substituição de vencidos ou danificações conforme memorial descritivo e demais documentos, e o estabelecido no Pedido de Compra nº 981/2024, Processo nº 6390/2024.', 'JULIANO DINIZ CAMPOS CONSTRUÇÔES', 1, NULL, '1693/2024', '2024-08-28'),
(70, 2024, '2024-09-04', '2025-09-03', 2, 'Trata-se de abertura de procedimento licitatório para a contratação de empresa especializada para Execução de projeto de extensão de Iluminação Pública, trecho compreendido do canteiro central da Av. Paraguassu, entre as Avenidas Caixas do Sul e Ipiranga, no Munícipio de Imbé/RS. Coordenadas: lat. -29.9546240248914; long. -50.1316341374045. Conforme Estudo Técnico Preliminar, Memorial Descritivo, Termo de Referências e Planilha Orçamentária.', 'ENERBRAS INSTALACOES ELETRICAS LTDA', 1, NULL, '867/2025', '2025-04-28'),
(72, 2024, '2024-10-04', '2025-10-12', 2, 'Abertura de procedimento licitatório para reforma e ampliação da EMEI VÓ ROSA, conforme documentos constantes no processo.', 'H.K.S CONTRUÇÕES LTDA', 1, NULL, '655/2025', '2025-03-26'),
(74, 2024, '2024-10-09', '2026-10-10', 2, 'Pedido de compra referente a inspeção veicular  para os ônibus e micro-ônibus lotados na Secretaria Municipal de Educação. Portaria de gestão: 850/2024', 'OSÓRIO INSPEÇÕES VEICULARES LTDA', 1, NULL, '1791/2025', '2025-10-17'),
(75, 2024, '2024-10-30', '2026-10-28', 2, 'Solicitação: trata-se de abertura de expediente para realizar  Contratação de Serviços de Empresa  para destinação dos resíduos sólidos provenientes do lixo domiciliar urbano do município de Imbé em aterro sanitário devidamente licenciado para esse fim, incluindo transporte transbordo por estimativa,  a contar de 29 de Outubro de 2024, pelo período de 12(doze) meses.  Considerando a alta temporada do dia 16 de dezembro a 15 de março e baixa temporada do dia  16 de março a 15 de dezembro.', 'COMPANHIA RIOGRANDENSE DE VALORIZACAO DE RESIDUOS LTDA', 1, NULL, '832/2026', '2026-06-25'),
(76, 2024, '2024-11-25', '2026-11-25', 2, 'Contratação de uma empresa de licença de software do pacote office da microsoft, para melhor desenvolvimento e bom andamento de planilhas e outros serviços em excel, para sefipe', 'MAPDATA TECNOLOGIA, INFORMÁTICA E COMÉRCIO LTDA', 1, NULL, '657/2025', '2025-03-26'),
(78, 2024, '2024-11-19', '2025-03-18', 2, 'Abertura de procedimento licitatório para obras de reforma e pintura da EMEI Professora Iara Martins conforme memorial e planilha em anexo.', 'ENGPACK ENGENHARIA LTDA', 1, NULL, '2067/2024', '2024-11-22'),
(79, 2024, '2024-11-22', '2025-11-21', 1, 'Aquisição de material pedagógico, atendendo a BNCC e ao Projeto Sócio Emocional da rede de ensino de Imbé OPEE empreendedorismo/PROJETO DE VIDA, do  Ensino Fundamental e Educação Infantil, para escolas da rede Municipal.', 'EDITORA FTD SA', 1, NULL, '2111/2024', '2024-11-27'),
(80, 2024, '2024-12-02', '2026-12-01', 2, 'Contratação de serviços inclusão de Diplomas Legais, junto à base de Legislação Municipal do Executivo, com inclusão de publicação de portarias sem ônus ao municipio de Imbé.', 'CESPRO PROCESSAMENTO DE DADOS LTDA', 1, NULL, '883/2026', '2026-07-10'),
(81, 2024, '2024-12-03', '2025-06-02', 2, 'Abertura de expediente, para aferição e manutenção  de cronotacógrafo dos veículos do executivo municipal . Portaria de gestão: 850/2024', 'APARA BARRO DEMA LTDA EPP', 1, NULL, '2195/2024', '2024-12-09'),
(82, 2024, '2024-12-03', '2025-02-02', 2, 'Contratação de empresa para reforma do piso das EMEI''s Peixinho Dourado, visando investimento do recurso da Manutenção Infantil Novas Turmas.', 'OGM CONSTRUTORA LTDA', 1, NULL, '2143/2024', NULL),
(83, 2024, '2024-12-03', '2025-01-02', 2, 'Contratação de empresa para reforma do piso das EMEI''s Tia Marica, visando investimento do recurso da Manutenção Infantil Novas Turmas.', 'OGM CONSTRUTORA LTDA', 1, NULL, NULL, NULL),
(84, 2024, '2024-12-04', '2025-02-02', 1, 'Aquisição de projeto Raizes Culturais sobre a cultura Afro e indígena visando atender as necessidades das Escolas de Ensino Fundamental e Infantil.', 'EDITORA EDUCACIONAL CORREA LTDA', 1, NULL, '2175/2024', '2024-12-09'),
(85, 2024, '2024-12-04', '2025-02-02', 1, 'Aquisição de projeto Educação 4.0 para as Unidades escolares da Rede Municipal.', 'MAKER4TEC SOLUÇÕES EDUCACIONAIS LTDA', 1, NULL, '2176/2024', '2024-12-09'),
(86, 2024, '2024-12-04', '2025-02-02', 1, 'Aquisição de material didático pedagógico para suprir as necessidades das Unidades Escolares da rede Municipal.', 'VOLSKI CULTURAL LTDA', 1, NULL, '2177/2024', '2024-12-09'),
(87, 2024, '2024-12-04', '2025-02-01', 1, 'Aquisição de material pedagógico Montessoria visando atender as necessidades das Unidades Escolares da Rede Municipal.', 'ECOTIMBER KIDS LTDA', 1, NULL, '2178/2024', '2024-12-09'),
(88, 2024, '2024-12-09', '2025-12-08', 1, 'Projeto Escola do Movimento para as Unidades Escolares da Rede Municipal.', 'GUARANI SOLUÇÕES PEDAGÓGICAS LTDA', 1, NULL, '2230/2024', '2024-12-11'),
(89, 2024, '2024-12-09', '2025-02-06', 1, 'Contratação da empresa Clown Center para a realização de apresentações artísticas alusivas ao Natal para alunos da Rede Municipal de Ensino.', 'CLOWN CENTER', 1, NULL, '2184/2024', '2024-12-09'),
(90, 2024, '2024-12-18', '2025-12-17', 1, 'Aquisição do material educativo pedagógico “ACERTA BRASIL” para atender a demanda do Ensino      Fundamental da Rede Municipal.', 'CENTRALINK EDUCAÇÃO E CULTURA LTDA', 1, NULL, '2294/2024', '2024-12-23'),
(91, 2024, '2025-01-02', '2025-07-01', 2, 'Contratação de empresa especializada para a prestação de serviço de fabricação e instalação de corrimões e guarda -  corpos em aço inox, conforme normativas e detalhamento técnico e em atendimento as normas e exigências técnicas do Plano de Prevenção Contra Incêndio (PPCI) para o Pronto Atendimento 24 horas Imbé.', 'URBENGE CONSTRUÇÕES LTDA', 1, NULL, '130/2025', '2025-01-13'),
(92, 2024, '2025-01-03', '2026-01-02', 2, 'Trata-se de solicitação de abertura de procedimento licitatório para contratação de empresa especializada visando a instalação de sistemas de geração de energia fotovoltaica e a manutenção e limpeza dos sistemas existentes, com fornecimento de todos os materiais e equipamentos necessários. Conforme memorial descritivo, planilha orçamentária e demais documentos em anexo.', 'CARDONA ENGENHARIA COMERCIO E SERVIÇOS EIRELI', 1, NULL, '1260/2025', '2025-06-18'),
(93, 2024, '2024-12-23', '2025-12-22', 1, 'Aquisição de material pedagógico para suprir as necessidades das Unidades Escolares da rede municipal.', 'VOLSKI CULTURAL LTDA', 1, NULL, '2298/2024', '2024-12-26'),
(94, 2024, '2024-12-23', '2025-12-22', 1, 'Aquisição do projeto pedagógico MAXI SISTEMA DE ENSINO para Unidades Escolares da Rede Municipal.', 'CENTRALINK EDUCAÇÃO E CULTURA LTDA', 1, NULL, '2314/2024', '2024-12-30'),
(7, 2025, '2025-01-01', '2029-12-31', 2, 'Valor referente a locação de imóvel para abrigar o depósito de material de limpeza e manutenção do Almoxarifado da Secretaria de Educação, na Av. paraguassu, 2432 (antigo 2325), fundos, matrícula 137.278,  a/c de 01/01/2025, pelo período de 60 meses.', 'CIRLEI TEREZINHA CADORE', 1, NULL, '145/2026', '2026-02-03'),
(8, 2025, '2025-01-01', '2029-12-31', 2, 'Valor referente a locação de imóvel na Av. Beira Mar, 780, matricula 136.569 do registro de imóveis, para abrigar a Escola de Música, a/c de 01/01/2025, pelo período de 60 meses.', 'SOLANGE TERESINHA SILVEIRA DE SOUZA', 1, NULL, '757/2026', '2026-06-09'),
(10, 2025, '2025-01-01', '2025-12-31', 2, 'Concessão de Patrocínio, na forma de apoio cultural para a Rádio Golfinho FM, nos termos da Lei Municipal 2.177, de 23 de março de 2021. Que sempre coloca em debate importantes assuntos de interesse da comunidade de Imbé. Com vigência pelo período de 12 (doze) meses do exercício de 2025, a contar de primeiro de janeiro de 2025, Lei Municipal nº 2.177 de 23 de março de 2021.', 'ASSOC. COMUN. RADIO FM GOLFINHO DE IMBE', 1, NULL, '450/2025', '2025-03-07'),
(11, 2025, '2025-01-01', '2029-12-31', 2, 'Valor referente a locação de imóvel para abrigar o depósito de material de limpeza e manutenção do Almoxarifado da Secretaria de Educação, na Av. paraguassu, 2432 (antigo 2325), fundos, matrícula 137.278,  a/c de 01/01/2025, pelo período de 60 meses.', 'SANDRA MARTINS DUTRA MENNA', 1, NULL, '145/2026', '2026-02-03'),
(12, 2025, '2025-03-17', '2026-09-20', 2, 'Contratação de empresa para execução dos serviços de fornecimento de material e mão de obra para a duplicação da pista de rolamento da Avenida Nilza Godoy entre a Avenida Osório e Avenida Santa Rosa.', 'CONSTRUTORA E PAVIMENTADORA ATUAL LTDA', 1, NULL, '250/2025', '2025-02-04'),
(13, 2025, '2024-12-16', '2026-12-16', 2, 'Solicitamos a contratação de locação de um imóvel para as instalações da Casa de Acolhimento, localizado na região central do Município pelo período de 12 (doze) meses a contar da data de 16/12/2024.', 'SUCESSÃO DE WALDEMOR ANGELO PIVA', 1, NULL, '239/2025', '2025-02-03'),
(14, 2025, '2025-01-30', '2026-01-29', 1, 'Trata-se de abertura de procedimento licitatório, para registro de preços, visando a eventual e futura aquisição e instalação de Grupo Motor Gerador (GMG), Diesel, potência de 150kVA, carenado e silenciado, para regime de funcionamento Stand-By ou Prime, para atendimento das necessidades da Prefeitura Municipal de Imbé. Conforme Termo de Referência.', 'SUDOESTE GERADORES LTDA', 1, NULL, '237/2025', '2025-01-31'),
(17, 2025, '2025-02-12', '2026-02-11', 2, 'Contratação do SESC - RS para Planejamento, execução e acompanhamento do evento Abertura do Ano Letivo no dia 13/02/2025.	SESC - ADMINISTRAÇÃO REGIONAL NO ESTADO DO RIO GRANDE DO SUL	266/2025	02/07/2025	Gestor Titular: Roselma Costa
Gestor Suplente: Willian Júnior Vieira Adriano	Fiscal de Contrato: Michelle Cardoso Blaneck
Fiscal de Contrato: Maiara Verluci da Silva Moreira Dias
Fiscal de Contrato: Michele Becker Paz', 'NAO INFORMADO', 1, NULL, NULL, NULL),
(18, 2025, '2025-02-18', '2026-02-17', 2, 'Abertura de procedimento licitatório para contratação de empresa especializada para fornecimento de licenças visando renovação do equipamento de  firewall das Unidades Escolares da rede Municipal.', 'ESTRATÉGIA IT LTDA', 1, NULL, '147/2026', '2026-02-03'),
(19, 2025, '2025-02-18', '2025-04-03', 2, 'Trata-se de contratação emergencial, com fundamento no Art. 75. inciso VIII da lei 14.333 de 1° de abril de 2021, de empresa especializada em construções e reformas de redes de distribuição de energia elétrica em tensões iguais ou superiores de 13.8kV, para a realização de reforma no ramal de média tensão do Parque Municipal de Eventos do município de Imbé/RS. Conforme documentações em anexo.', 'IEL-INSTALADORA ELETRICA LITORAL LTDA.', 1, NULL, '868/2025', '2025-04-28'),
(20, 2025, '2025-04-08', '2027-04-08', 2, 'Pedido referente a contratação de empresa especializada na prestação dos serviços de manutenção preventiva e corretiva, com a estimativa de fornecimento de peças de reposição para 1 (um) Detector digital de RaioX da marca Imex que está localizado na Sala de Raio X do Pronto Atendimento 24horas.', 'IMX INDUSTRIA E COMERCIO LTDA', 1, NULL, '737/2026', '2026-06-03'),
(21, 2025, '2025-03-06', '2027-03-05', 2, 'Contratação de empresa especializada para prestação de serviços de publicações legais, em jornal diário de grande circulação disponibilizado na forma impressa e em plataforma eletrônica (on-line), para atender as necessidades da Administração Pública Municipal.', 'EDITORA JORNALÍSTICA JARROS LTDA', 1, NULL, '887/2026', '2026-07-10'),
(22, 2025, '2025-03-18', '2026-03-17', 2, 'Contratação de empresa especializada para prestação de serviços de desinsetização, desratização e limpeza e desbacterização de reservatórios de água.', 'MARCO ANTÔNIO GRANDINI', 1, NULL, '718/2025', '2025-04-01'),
(23, 2025, '2025-03-18', '2026-03-17', 2, 'Contratação de empresa especializada para prestação de serviços de desinsetização, desratização e limpeza e desbacterização de reservatórios de água.', 'AMBIENTAL MAX SOLUÇÕES LTDA', 1, NULL, '717/2025', '2025-04-01'),
(25, 2025, '2025-03-26', '2025-08-27', 2, 'Contratação de empresa para reforma emergencial na EMEF Rui Barbosa, tendo em vista o dano causado pelo temporal em 16/02/2025, amparado pelo Decreto Municipal 4376/2025.', 'R C DIAS PEDROSO CONSTRUTORA EIRELI', 1, NULL, '830/2025', '2025-04-25'),
(26, 2025, '2025-03-21', '2026-03-20', 2, 'Contratação de empresa  para acompanhamento e assessoria pedagógica para professores alfabetizadores de 1º e 2º ano  do turno integral da EMEF Olavo Bilac.', 'ADRIANE LIPERT BITTENCOURT', 1, NULL, '645/2025', '2025-03-25'),
(27, 2025, '2025-03-27', '2027-03-27', 2, 'Registro de Preços para prestação de serviços continuados de mecânica com o fornecimento de peças, para veículos leves, pesados maquinas pesadas, reboques e equipamentos do executivo municipal.', 'MECÂNICA WOLFF LTDA ME', 1, NULL, '1786/2025', '2025-10-17'),
(28, 2025, '2025-03-27', '2025-06-25', 2, 'Registro de Preços para prestação de serviços continuados de mecânica com o fornecimento de peças, para veículos leves, pesados maquinas pesadas, reboques e equipamentos do executivo municipal.', 'R L DA LUZ LTDA', 1, NULL, '726/2025', '2025-04-02'),
(29, 2025, '2025-04-08', '2026-04-07', 2, 'O objeto do presente é a contratação de empresa especializada para realização de prestação de serviço de manutenção preventiva, corretiva e calibração com estimativa de fornecimento e reposição de peças para manutenção de equipamentos médicos hospitalares da Secretaria Municipal da Saúde com a utilização de recursos provindo do incremento PAP, conforme especificações constantes no Processo n°13513/2024;', 'HOSPITALAR SILVANO LTDA', 1, NULL, '774/2025', '2025-04-15'),
(30, 2025, '2025-04-02', '2025-05-01', 1, 'Aquisição de material pedagógico Montessori complementar para atender as necessidades das Unidades Escolares de Educação Infantil.', 'ECOTIMBER KIDS LTDA', 1, NULL, NULL, NULL),
(32, 2025, '2025-04-15', '2026-04-14', 2, 'O objeto do presente é a contratação de empresa especializada para realização de curso para formação continuada de professores e assessoramento pedagógico, com tema “Transtorno do Neurodesenvolvimento”, conforme especificações constantes no Pedido de Compra nº 912/2025, Estudo Técnico Preliminar, Termo de Referência e Proposta anexos, no Processo Administrativo n°3237/2025;', 'ANATO NUCLEO DE TERAPIA OCUPACIONAL NA INFANCIA E ADOLESCENCIA: ATENDIMENTO, ENSINO E PESQUISA', 1, NULL, '775/2025', '2025-04-15'),
(33, 2025, '2025-04-15', '2026-04-14', 2, 'O objeto do presente é a contratação da empresa SESC – Administração Regional no Estado do Rio Grande do Sul para o Planejamento, execução e acompanhamento de eventos, conforme pedido de compra n° 932/2025, termo de referência e documentos anexos ao Processo Administrativo n°3291/2025.', 'SESC - ADMINISTRAÇÃO REGIONAL NO ESTADO DO RIO GRANDE DO SUL', 1, NULL, '777/2025', '2025-04-15'),
(34, 2025, '2025-04-17', '2026-04-16', 1, 'O objeto do presente é a aquisição de material didática para atender as necessidades dos professores do Ensino Fundamental da Rede Municipal de Ensino, conforme especificações constantes no Pedido de Compra nº 863/2025, Estudo Técnico Preliminar, Termo de Referência e Proposta anexos, no Processo Administrativo n°3037/2025.', 'INSTITUTO EDUCACIONAL ESSENCIA DO SABER LTDA', 1, NULL, '792/2025', '2025-04-22'),
(35, 2025, '2025-04-17', '2026-04-16', 2, 'Contratação de empresa para fornecimento de Bilhetes de ingresso para participação em Projetos educativos do Parque Quinta da Estância, para alunos da rede municipal, conforme documentos em anexo.', 'QUINTA DA ESTÂNCIA GRANDE SITIO EDUCACIONAL LTDA', 1, NULL, '829/2025', '2025-04-25'),
(36, 2025, '2025-06-03', '2026-06-02', 2, 'O objeto do presente é a aquisição de bilhetes de ingressos para o Museu de Ciências e Tecnologia da PUC/RS como atividade de campo das escolas da Rede Municipal, conforme especificações constantes no Pedido de Compra nº 921/2025, Estudo Técnico Preliminar, Termo de Referência e Proposta anexos, no Processo Administrativo n°3275/2025;', 'UNIÃO BRASILEIRA DE EDUCAÇÃO E ASSISTÊNCIA', 1, NULL, '1225/2025', '2025-06-06'),
(37, 2025, '2025-05-06', '2026-05-05', 1, 'Contratação de empresa para fornecimento de Bilhetes de ingresso para participação em Projetos Educativos do Lokos Entreterimento, Lazer e Turismo LTDA, para alunos da rede municipal, conforme projeto anexo, em datas a serem definidas posteriormente entre junho e setembro de 2025.', 'LOKOS ENTRETERIMENTO, LAZER E TURISMO EIRELI', 1, NULL, '1069/2025', '2025-05-19'),
(38, 2025, '2025-04-25', '2026-04-24', 2, 'Trata-se de solicitação de abertura de expediente para contratação de empresa especializada para execução de obra de deslocamento da rede de distribuição de energia elétrica na Avenida Nilza Costa Godoy, no trecho compreendido entra as Avenidas Osório e Santa Rosa, no bairro Centro, no município de Imbé/RS. Coordenadas: latitude -29.981077807179986, longitude -50.1322306174082. Conforme plantas, memorial descritivo e planilhas em anexo. SS 202545448210369.', 'JC CONSTRUÇÕES DE REDES ELÉTRICAS LTDA', 1, NULL, '1068/2025', '2025-05-19'),
(39, 2025, '2025-04-29', '2026-10-29', 2, 'O objeto do presente é a contratação de Cursos e Qualificação, na modalidade presencial, in company, referente ao Termo de Convênio FPE nº 4189/2022 Consulta Popular, conforme pedido de compra nº 692/2025, processo nº 2439/2024, para a realização das das qualificações descritas no Termo de Referência e ETP anexos, especialmente: Atendimento ao Púbico, Assistente Administrativo, Cuidado com Idosos – Técnicas Básicas, Marketing Digital para Iniciantes, Técnicas Básicas de Cozinha, Vendedor de Farmácia, Açougueiro, Boas Práticas para o Serviço de Alimentos, Preparando-se para o Primeiro Emprego, Analista de Marketing Digital em Mídias Sociais, Técnicas de Manicure, Pedicure e Bem Estar, Técnicas de Vendas e Negociação, Introdução ao Excel e Excel Empresarial.', 'SERVIÇO NACIONAL DE APRENDIZAGEM COMERCIAL SENAC', 1, NULL, '611/2026', '2026-05-08'),
(40, 2025, '2025-04-29', '2025-10-28', 1, 'Pedido referente a contratação de empresa especializada para a prestação de serviço de fabricação, venda e instalação de uma porta em madeira sob medida, conforme normativas e detalhamento técnico e, em atendimento as normas e exigências técnicas do Plano de Prevenção Contra Incêndio (PPCI) da Unidade de Saúde da Família (USF) de Santa Terezinha. Não possui ARP.', 'OLGUINS CONSTRUTORA', 1, NULL, '1070/2025', '2025-05-19'),
(41, 2025, '2025-04-30', '2027-04-29', 2, 'Contratação da empresa Pólis Informática Ltda, por Inexigibilidade de Licitação, para realização de serviços especializados em tecnologia da informação, divididos em dois componentes: a Garantia Legal Tecnológica (GLT) e a Assessoria Técnica Operacional visando a manutenção da solução GRP-Pólis, de acordo com o Art. 74, I da Lei Federal 14.133/21', 'POLIS INFORMATICA LTDA', 1, NULL, '886/2026', '2026-07-10'),
(42, 2025, '2025-05-20', '2025-06-18', 2, 'Aquisição emergencial de ventiladores para o Sistema Municipal de Ensino, visando propiciar melhores condições de trabalho.', 'LICIMIX COMERCIO DE MATERIAIS E EQUIPAMENTOS LTDA', 1, NULL, '1150/2025', '2025-05-29'),
(44, 2025, '2025-05-22', '2026-05-21', 2, 'Contratação de empresa especializada para planejamento, execução e acompanhamento de eventos conforme cronograma da Secretaria de Educação.', 'SESC - ADMINISTRAÇÃO REGIONAL NO ESTADO DO RIO GRANDE DO SUL', 1, NULL, '1130/2025', '2025-05-27'),
(45, 2025, '2025-05-23', '2026-03-30', 2, 'Abertura de procedimento para contratação emergencial para reforma do Centro Esportivo Nova Nordeste danificado pelo temporal em 16/02/2025.', 'OURO FINO CONSTRUTORA LTDA', 1, NULL, '1125/2025', '2025-05-26'),
(46, 2025, '2025-05-22', '2026-05-21', 2, 'Aquisição de projetos pedagógicos para atender as necessidades das Unidades escolares da Rede Municipal.', 'BM COMÉRCIO E SERVIÇOS LTDA', 1, NULL, '1124/2025', '2025-05-26'),
(47, 2025, '2025-05-23', '2025-06-21', 2, 'Contratação de empresa para o planejamento, execução e acompanhamento da IX Conferência Municipal da Assistência Social, com palestrante, revisão do Regimento Interno, elaboração do Relatório Final da Conferência e coffee break, que ocorrerá no dia 04 de junho de 2025, na Câmara Municipal de Imbé.', 'SESC - ADMINISTRAÇÃO REGIONAL NO ESTADO DO RIO GRANDE DO SUL', 1, NULL, '1126/2025', '2025-05-26'),
(48, 2025, '2025-06-17', '2026-06-16', 2, 'Credenciamento de empresas para realização de confecção de cópias de chaves e manutenção e substituição/instalação de fechaduras.                         ETP em elaboração para renovação', 'ADELAR AUGUSTO TEIXEIRA CAMARGO JUNIOR', 1, NULL, '881/2026', '2026-07-10'),
(50, 2025, '2025-06-23', '2028-06-22', 1, 'Processo de compra referente a aquisição de licença do software OrçaFascio, para o DEPLAN, Setor de Projetos de Engenharia, 1 UNIDADE.', '3F LTDA', 1, NULL, '1354/2025', '2025-07-10'),
(51, 2025, '2025-06-17', '2027-06-16', 2, 'Pedido referente a abertura de procedimento licitatório para a contratação de empresa para a prestação de serviço de manutenção preventiva e corretiva e fornecimento de peças para o aparelho de Raio-X da marca VMI - Modelo   Apolo-S.', 'COREMED COMERCIO E REPRESENTACAO DE PRODUTOS MEDICOS HOSPITALARES LTDA', 1, NULL, '736/2026', '2026-06-03'),
(52, 2025, '2025-06-17', '2025-07-16', 1, 'Referente a aquisição emergencial de um pressurizador de rede hidráulica para uso no Pronto Atendimento 24 horas. Sem ARP. Portaria de gestão e fiscalização nº 1953/2024', 'FERRAGENS E SERVIÇOS COELHO LTDA', 1, NULL, '1320/2025', '2025-06-26'),
(53, 2025, '2025-06-18', '2026-06-17', 1, 'Aquisição de livros de literatura para suprir as necessidades das Unidades escolares da rede Municipal.', 'CAROCHINHA EDITORA LTDA', 1, NULL, '1381/2025', '2025-11-07'),
(54, 2025, '2025-05-17', '2030-05-16', 2, 'Locação de imóvel para ampliação do depósito de merenda e demais itens do setor de nutrição e almoxarifado.', 'SANDRA MARTINS DUTRA MENNA', 1, NULL, '1353/2025', '2025-07-10'),
(55, 2025, '2026-06-26', '2027-06-25', 2, 'Contratação de leiloeiro oficial para a prestação de serviços para alienação de bens móveis inservíveis de propriedade do município de Imbé.', 'JOACIR MONZON POUEY LEILOEIRO PÚBLICO OFICIAL', 1, NULL, '882/2026', '2026-07-10'),
(56, 2025, '2025-06-30', '2026-06-29', 2, 'Objeto do presente é a contratação emergencial de empresa para coleta e transporte de lixo domiciliar seletivo, não seletivo e limpeza de faixa de praia, conforme documentação anexa ao Processo nº 5085/2025, Dispensa de Licitação nº 015/2025.', 'BRISA TRANSPORTES LTDA', 1, NULL, '1800/2025', '2025-10-17'),
(57, 2025, '2025-06-27', '2026-06-26', 1, 'Aquisição de projeto pedagógico para atender as necessidades das Unidades escolares da Rede Municipal.', 'PAE EDITORA E DISTRIBUIDORA DE LIVROS LTDA', 1, NULL, '1382/2025', '2025-07-11'),
(59, 2025, '2025-07-04', '2026-07-03', 2, 'Contrato de prestação de serviço referente a troca de informações e consultas de CPF/CNPJ firmado com a Receita Federal, através do Serpro/Infoconv.', 'SERVIÇO FEDERAL DE PROCESSAMENTO DE DADOS (SERPRO)', 1, NULL, '1528/2025', '2025-08-12'),
(60, 2025, '2025-07-03', '2027-07-02', 2, 'Contratação de software digital de gerenciamento e controle de margem         consignável e gestão de consignações facultativas em folha de pagamento do município de Imbé.                                                                                               ETP em elaboração para renovação', 'CONSIGNET SISTEMAS LTDA', 1, NULL, '875/2026', '2026-07-07'),
(62, 2025, '2025-07-08', '2026-07-07', 1, 'Aquisição de projetos educacionais Makerbot: Metodologia Educacional, para suprir as necessidades do Projeto Robótica nas escolas.', 'MAKER4TEC SOLUÇÕES EDUCACIONAIS LTDA', 1, NULL, '1356/2025', '2025-07-10'),
(63, 2025, '2025-07-08', '2025-10-07', 1, 'Aquisição de um foco cirúrgico móvel para cirurgias de pequeno porte, em substituição do danificado no Pronto Atendimento de Santa Terezinha.', 'MAXIMA DENTAL IMPORTACAO, EXPORTACAO E COMERCIO DE PRODUTOS ODONTOLOGICOS LTDA', 1, NULL, '1386/2025', '2025-07-14'),
(64, 2025, '2025-08-14', '2026-08-13', 2, 'Contratação de empresa para execução de serviços de mão de obra e fornecimento de materiais para construção de uma Unidade Básica de Saúde Porte II. Com utilização de recursos provenientes da Proposta de nº 36000004211/2023 do NOVO PAC do governo federal, e Portaria GM/MS nº 3.894 de 17 de maio de 2024, com contrapartida de recursos municipais.', 'SCHLIEPER & SCHLIEPER - CONSTRUTORA LTDA-ME', 1, NULL, '1385/2025', '2025-07-14'),
(65, 2025, '2025-07-15', '2027-07-14', 2, 'Contratação de Empresa para Implantação de sistema de reaproveitamento de matéria orgânica para duas Unidades Escolares da Rede Municipal.', 'BIOMOVEMENT AMBIENTAL LTDA', 1, NULL, '1408/2025', '2025-07-21'),
(66, 2025, '2025-07-14', '2026-09-12', 2, 'Contratação de empresa especializada para a prestação de serviços de execução de concurso público, para provimento de cargos e formação de cadastro reserva para a Prefeitura Municipal de Imbé/RS.', 'FUNDAÇÃO UNIVERSIDADE EMPRESA DE TECNOLOGIA E CIÊNCIAS', 1, NULL, '340/2026', '2026-03-12'),
(67, 2025, '2025-07-11', '2025-10-08', 2, 'Trata-se de contratação de uma única empresa para prestação de serviços especializados em hospedagens com sede no município de Imbé durante o período de inverno (previsão de julho á setembro) para pessoas vivendo em situação de rua em Imbé, a fim de ofertar proteção social integral com a disponibilização de hospedagem e alimentação, tendo em vista que o pregão eletrônico 058/2025 não foi adjudicado. Portanto, faz-se necessária a contratação de uma empresa para a prestação dos serviços supracitados, visando o bem-estar da população em situação de rua. Conforme ETP em anexo.', 'MOREIRA & SOUZA HOTEL LTDA', 1, NULL, '1384/2025', '2025-07-14'),
(68, 2025, '2025-07-22', '2030-07-21', 2, 'Locação de 1 (um) imóvel destinado a instalação da base do Serviço de Atendimento Móvel às Urgências (SAMU/SALVAR) pelo período de 60 meses, a contar de seu início no mês de junho de 2025.', 'BAUER LOCACAO DE BENS PROPRIOS LTDA', 1, NULL, '745/2026', '2026-06-03'),
(69, 2025, '2025-07-22', '2025-08-21', 1, 'Bomba pulverizadora de alta pressão e de uso agrícola e um pulverizador costal a bateria específico para aplicação intradomiciliar, conforme Memorando DEVISAN Nº 38/2025 anexo ao processo.', 'ICG INDUSTRIA E COMERCIO DE EQUIP AGROPECUARIOS LTDA', 1, NULL, '1478/2025', '2025-08-12'),
(70, 2025, '2025-08-05', '2026-02-04', 2, 'Abertura de procedimento licitatório para revitalização da pintura das EMF''s Tiradentes.', 'OURO FINO CONSTRUTORA LTDA', 1, NULL, '1601/2025', '2025-08-29'),
(71, 2025, '2025-08-05', '2026-03-04', 2, 'Abertura de procedimento licitatório para revitalização da pintura das EMF''s Olavo Bilac.', 'OURO FINO CONSTRUTORA LTDA', 1, NULL, '1602/2025', '2025-08-29'),
(72, 2025, '2025-07-28', '2026-07-27', 2, 'Contratação de Empresa especializada em Inclusão e Exclusão de Devedores de tributos Municipais, no Serviço de Proteção ao Credito. SPC.', 'CAMARA DE DIRIGENTES LOJISTAS DE TRAMANDAI E IMBE', 1, NULL, '1477/2025', '2025-08-12'),
(75, 2025, '2025-10-15', '2026-01-29', 2, 'Abertura de procedimento licitatório para contratação de empresa visando a renovação do ppci da EMEF Jusseni Euzebio de Oliveira, confrome memorial e planilhas em anexo.', 'VLSISTEMAS DE COMBATE A INCÊNDIO.', 1, NULL, '1567/2025', '2025-08-22'),
(77, 2025, '2025-08-05', '2025-12-04', 2, 'Contratação de empresa para desenvolvimento do PROJETO BÁSICO/LEGAL DE ARQUITETURA, PLANILHA ORÇAMENTÁRIA e CRONOGRAMA FÍSICO-FINANCEIRO para a ampliação da atual Unidade de Pronto Atendimento 24horas Municipal transformando-o em um HOSPITAL DE PEQUENO PORTE (HPP) de baixa e média complexidade, criando uma unidade de internação clínica e unidades de apoio técnicos e logísticos de suporte, devidamente aprovado junto a Vigilância Sanitária Estadual (CEVS/RS)', 'BADERMANN ARQUITETOS ASSOCIADOS S/S', 1, NULL, '1442/2025', '2025-08-06'),
(78, 2025, '2025-07-29', '2026-07-28', 2, 'Serviço de mão de obra para pavimentação em pedra irregular e colocação de meio fio de concreto, em diversas ruas do município de Imbé.', 'OURO FINO CONSTRUTORA LTDA', 1, NULL, '1600/2025', '2025-08-29'),
(79, 2025, '2025-09-09', '2025-10-08', 2, 'Contratação de empresa especializada em construção para substituição de portas/portões externos de acesso de pedestres e veículos nas escolas danificadas pelo  temporal de 15/02/2025.', 'VS ESQUADRIA E VIDRACARIA LTDA', 1, NULL, '1566/2025', '2025-08-22'),
(82, 2025, '2025-09-16', '2030-09-15', 2, 'Solicita abertura de expediente para contratação por inexigibilidade de licitação, com a finalidade da locação do imóvel localizado na Av. Paraguassú, nº 2070 (antigo nº 2017) - Centro - Imbé/RS, onde está instalado o prédio Anexo I da Prefeitura Municipal de Imbé, pelo período de 60 (sessenta) meses, de acordo com Oficio n° 167/2025/ADM. Conforme Estudo Técnico Preliminar em anexo a este.', 'CARLA ADRIANA DA SILVA', 1, NULL, '455/2026', '2026-04-06'),
(83, 2025, '2025-09-02', '2026-09-01', 2, 'Prestação de Serviço Oficina de Equitação Lúdica com crianças e adolescentes da Rede Municipal de Ensino.', 'CENTRO DE TERAPIA COM ANIMAIS MAHARA LTDA', 1, NULL, '148/2026', '2026-02-03'),
(84, 2025, '2025-09-02', '2030-09-01', 2, 'Referente a Locação de 1 (um) imóvel destinado a instalação da Vigilância em Saúde (ambiental, epidemiológica e sanitária) pelo período de 60 meses, a contar de seu início no mês de julho de 2025.', 'SANDRA MARTINS DUTRA MENNA', 1, NULL, '732/2026', '2026-06-03'),
(85, 2025, '2025-09-05', '2026-09-04', 1, 'Aquisição de ônibus escolar do programa Caminho da Escola.', 'IVG BRASIL LTDA', 1, NULL, '1655/2025', '2005-09-05'),
(87, 2025, '2025-10-27', '2026-08-24', 2, 'Contratação de empresa para  obra de pavimentação e drenanagem da Av Não Me Toque, entre a Rua Sobradinho e Av. São Miguel, Bairro Centro. Conforme exigências e especificações estabelecidas em Memorial Descritivo, Termo de Referencia e Cronograma físico-financeiro. memorando do Departamento de Engenharia 076/2025. Contrato de repasse BADESUL, reuso 1754-0000229.', 'CONSTRUTORA E PAVIMENTADORA ATUAL LTDA', 1, NULL, '1796/2025', '2025-10-17'),
(88, 2025, '2025-11-10', '2026-05-10', 2, 'Contratação de empresa visando a reforma e pintura  na EMEI Yara Martins.', 'M7 CONSTRUÇÕES LTDA', 1, NULL, '1802/2025', '2025-10-21'),
(89, 2025, '2025-10-21', '2026-10-20', 2, 'Contratação de empresa especializada na manutenção preventiva e corretiva com fornecimento de peças das Câmaras Imunológicas da marca Elber e Nova Instruments da Secretaria Municipal de Saúde de Imbé.', 'CALMED DISTRIBUIDORA E SERVIÇOS EIRELI-ME', 1, NULL, '1825/2025', '2025-10-24'),
(90, 2025, '2025-11-04', '2026-04-03', 2, 'PRESTAÇÃO DE SERVIÇOS DE GESTÃO, ORGANIZAÇÃO, REALIZAÇÃO E ARBITRAGEM DE CAMPEONATOS ESPORTIVOS. Com fornecimento de 18 bolas adequadas a  modalidade.', 'GABRIEL KUBIAKI', 1, NULL, '1890/2025', '2025-11-14'),
(91, 2025, '2025-11-12', '2027-11-11', 1, 'Fornecimento, implementação, ativação e suporte técnico de um Certificado Digital SSL/TLS do tipo WildCard para proteção do domínio institucional imbe.rs.gov.br e todos seus subdomínios, com validade total de 24 (vinte e quatro) meses, abrangendo a reemissão do certificado ao término do primeiro ano de vigência, sem custos adicionais ao Município de Imbé.', 'VALID CERTIFICADORA DIGITAL LTDA', 1, NULL, '876/2026', '2026-07-07'),
(92, 2025, '2025-11-03', '2026-11-02', 1, 'Confecção, montagem e instalação de móveis sob medida para atender o Departamento de Recursos Humanos - DRH, em dois ambientes (pavimento térreo e pavimento superior).', 'TUBULARTE MOVEIS LTDA', 1, NULL, '874/2026', '2026-07-07'),
(93, 2025, '2025-10-31', '2025-12-29', 1, 'Aquisição de púlpitos que se fazem necessários para melhorar a imagem das transmissões e apresentações das diversas solenidades realizadas pela Prefeitura de Imbé.', 'INDUSTRIA FENIX CORTE A LASER LTDA', 1, NULL, '1889/2025', '2025-11-14'),
(95, 2025, '2025-11-04', '2030-11-03', 2, 'Locação de imóvel para instalação do Centro de Atendimento Psicossocial (CAPS) pelo período de 60 meses, a contar do seu início no mês de outubro/2025', 'SOLANGE TERESINHA SILVEIRA DE SOUZA', 1, NULL, '731/2026', '2026-06-03'),
(96, 2025, '2025-11-10', '2026-11-09', 2, 'Contratação da empresa Instituto Educacional Essência do Saber, por meio de inexigibilidade licitatória, para prestação de Capacitação, Desenvolvimento e Acompanhamento de Documentos Técnicos.', 'INSTITUTO EDUCACIONAL ESSENCIA DO SABER LTDA', 1, NULL, '1899/2025', '2025-11-17'),
(97, 2025, '2025-11-12', '2027-11-11', 1, 'Aquisição de Licenças de uso do software aplicado PLATAFORMA BIM ALTOQI, para servidores do Setor de Projetos da Secretaria Municipal de Educação.', 'MN TECNOLOGIA E TREINAMENTO LTDA', 1, NULL, '1900/2025', '2025-11-17'),
(98, 2025, '2025-11-25', '2026-07-24', 2, 'Ampliação e reforma da EMEF Estado de Santa Catarina.', 'SCHLIEPER & SCHLIEPER - CONSTRUTORA LTDA-ME', 1, NULL, '1983/2025', '2025-12-04'),
(99, 2025, '2025-11-27', '2026-11-26', 2, 'contratação de licenças Software AutoCAD versão LT da Autodesk  13 assinaturas para Deplan, 3 assinaturas para Smed, 01  Assinatura para Saúde  por 1 ano.', 'MAPData Tecnologia, Informática e Comércio Ltda', 1, NULL, '1980/2025', '2025-12-02'),
(100, 2025, '2025-12-11', '2026-03-10', 2, 'Execução dos serviços de fornecimento de material e mão de obra para o plantio de grama, irrigação e casa de máquinas para o Campo de Futebol Santa Terezinha.', 'JCBATTISTI ENGENHARIA LTDA', 1, NULL, '2096/2025', '2025-12-16'),
(101, 2025, '2025-12-10', '2025-12-24', 2, 'Contratação da empresa JUÇARA GASPAR DOS SANTOS - Produtora Cultural, inscrita no CNPJ nº 54.372.155/0001-88, para a realização do espetáculo ¿Altos do Natal das Águas¿, que integra a programação cultural e turística do Natal de Imbé, responsável pela produção, montagem, direção artística, figurinos, sonorização, iluminação e execução integral do espetáculo,', 'JUCARA GASPAR DOS SANTOS', 1, NULL, '2049/2025', '2025-12-09'),
(102, 2025, '2025-12-11', '2026-12-10', 2, 'Contratação de empresa para formação  dos profissionais de apoio escolar (monitores) da Rede Municipal de Ensino, no atendimento aos parâmetros legais da legislação vigente.', 'INSTITUTO EDUCACIONAL ESSENCIA DO SABER LTDA', 1, NULL, '2083/2025', '2025-12-12'),
(103, 2025, '2025-12-22', '2026-02-19', 2, 'Reforma de acessibilidade na EMEI Jardelino Peroni.', 'CABL CONSTRUÇÃO CIVIL LTDA', 1, NULL, '205/2026', '2026-02-12'),
(105, 2025, '2025-12-29', '2026-12-28', 1, 'Adesão de ata de registro de preço para a aquisição de Chromebook para distribuição gratuita aos alunos das séries finais do ensino fundamental', 'GRUPO MULTI S.A', 1, NULL, '2134/2025', '2025-12-30'),
(106, 2025, '2026-02-23', '2026-08-28', 2, 'Contratação de empresa para reforma de Sala da EMEF Olavo Bilac, para implantação do Centro de Convivência da pessoa idosa no Município de Imbé/RS - Centro Integrado de Assistência à Pessoa Idosa. Conforme convênio FPE nº 3304/2024.', 'M7 CONSTRUÇÕES LTDA', 1, NULL, '111/2026', '2026-01-23'),
(107, 2025, '2025-12-30', '2026-12-29', 1, 'Aquisição de projetos educacionais Explorador kids, para suprir as necessidades do projeto robótica nas escolas.', 'CONCEITTO COMERCIAL DE EQUIPAMENTOS E SUPRIMENTOS DE INFORMÁTICA EIRELI', 1, NULL, '2135/2025', '2025-12-30'),
(108, 2025, '2025-12-30', '2026-12-29', 1, 'Aquisição do Projeto Cultivando Leitores, semeando Valores para atender as necessidades das Escola de Ensino Fundamental da Rede Municipal.', 'EDITORA FTD SA', 1, NULL, '149/2026', '2026-02-03'),
(109, 2025, '2025-12-30', '2026-12-29', 1, 'Aquisição do OPEE Empreendedorismo e Projeto Vida para atender as necessidades das Unidades Escolares da Rede Municipal.', 'EDITORA FTD SA', 1, NULL, '150/2026', '2026-02-03'),
(110, 2025, '2026-01-13', '2027-01-12', 2, 'Contratação de empresa especializada em locação de impressoras e multifuncionais.', 'CONSTEC COMERCIAL LTDA', 1, NULL, '873/2026', '2026-07-07'),
(111, 2025, '2025-12-30', '2026-12-29', 1, 'Aquisição material didático Pedagógico Maxi Sistema de Ensino para as unidades escolares da Rede Municipal de Ensino, para complementar a Proposta Educativa do município.', 'CENTRALINK EDUCAÇÃO E CULTURA LTDA', 1, NULL, '151/2026', '2026-02-03'),
(112, 2025, '2025-12-31', '2026-12-30', 2, 'Locação de sistema de videomonitoramento integrado escolar para 18 escolas municipais, contemplando câmeras, softwares em nuvem, infraestrutura tecnológica e recursos de inteligência artificial', 'DGT TECNOLOGIA LTDA', 1, NULL, '152/2026', '2026-02-03'),
(113, 2025, '2026-01-07', '2026-09-06', 2, 'Contratação de empresa, por inexigibilidade, para a prestação de serviço de realização do Curso de Oficineiro de Dança, com foco em qualificação profissional, conforme Termo de Convênio FPE nº 4189/2022, celebrado entre o Governo do Estado do Rio Grande do Sul e o Município de Imbé. O curso contará com 1 turma de 20 alunos, com carga horária distribuída em 12 encontros. As datas de realização serão definidas posteriormente, em comum acordo entre as partes, após a formalização do contrato.', 'JULIANA  LUDWIG JUSTO', 1, NULL, '632/2026', '2026-05-08'),
(1, 2026, '2026-01-22', '2028-07-21', 2, 'Contratação de empresa para construção das novas instalações da EMEF Rui Barbosa.', 'R C DIAS PEDROSO CONSTRUTORA EIRELI', 1, NULL, '637/2026', '2026-05-20'),
(2, 2026, '2026-01-01', '2026-12-31', 2, 'concessão de patrocínio na forma de apoio cultural para a Rádio Golfinho FM, nos termos da Lei Municipal nº 2.177/2021, tendo como Programa escolhido para receber o apoio cultural ao programa de interesse público, intitulado Bate Papo da Cidade, que vai ao ar de segunda a sexta-feira às 12:05Hrs, e tem duração de 55 minutos', 'ASSOCIAÇÃO COMUNITÁRIA RÁDIO GOLFINHO FM', 1, NULL, '226/2026', '2026-02-13'),
(3, 2026, '2026-01-29', '2026-02-28', 2, 'Contratação de entidade especializada para execução de projeto cultural e recreativo de verão, a ser realizado em espaço publico no Municipio de Imbé/RS, durante o período do mês de janeiro de 2026.

Processo de reconhecimento de dívida em andamento (PE 684/2026)', 'SESC- ADMINISTRAÇÃO 
REGIONAL NO ESTADO DO
 RIO GRANDE DO SUL', 1, NULL, '320/2026', '2026-03-12'),
(4, 2026, '2026-01-30', '2026-03-01', 2, 'Contratação de entidade especializada, com fornecimento de materiais, para a organização e execução do evento Jogos de Verão Imbé - Circuito Verão Sesc de Esportes, a ser realizado em espaço público do Município de Imbé/RS, na arena montada na Praia de Harmonia, próximo à guarita 119, no período de 01/02/2026 a 01/03/2026.

Processo de reconhecimento de dívida em andamento (PE 684/2026)', 'SESC- ADMINISTRAÇÃO 
REGIONAL NO ESTADO DO
 RIO GRANDE DO SUL', 1, NULL, '225/2026', '2026-02-13'),
(5, 2026, '2026-01-29', '2026-04-28', 2, 'Registro de preços para a contratação de empresa para a execução de serviços de locação de cabines sanitárias, com instalação, limpeza, fornecimento de papel higiênico e destino final dos resíduos, para atender as demandas e necessidades da Secretaria de Turismo, Desporto e Cultura, pelo período de 12 (doze) meses

Será feito processo de reconhecimento de dívida', 'H. A. SEHNEM LTDA', 1, NULL, '132/2026', '2026-01-30'),
(6, 2026, '2026-06-26', '2027-03-25', 2, 'O objeto do presente é a contratação da empresa INOVVE Serviços de Treinamentos e Consultoria Empresarial LTDA, especializada na prestação de serviços técnicos de assessoria e consultoria na área de energia elétrica, voltados à auditoria, analise e recuperação de valores pagos indevidamente nas faturas de energia elétrica de titularidade do Município, bem como à reapresentação administrativa junto à concessionária CEEE-D Equatorial Energia, à Agência Nacional de Energia Elétrica (ANEEL) e à Agência Estadual de Regulação dos Serviços Públicos Delegados do Rio Grande do Sul (AGERGS)', 'INOVVE SERVIÇOS DE TREINAMENTOS E CONSULTORIA EMPRESARIAL LTDA', 1, NULL, '464/2026', '2026-03-31'),
(7, 2026, '2026-02-18', '2026-04-17', 2, 'Contratação da empresa SESC - RS para realização do evento de abertura do ano letivo, oferecendo formação para os professores em um evento pedagógico, visando promover um momento de acolhimento, integração, reflexão e motivação para os professores, fortalecendo o compromisso com a educação de qualidade e inspirando a prática pedagógica para o novo ano letivo.', 'SESC- ADMINISTRAÇÃO 
REGIONAL NO ESTADO DO
 RIO GRANDE DO SUL', 1, NULL, '220/2026', '2026-02-18'),
(8, 2026, '2026-06-13', '2027-03-12', 2, 'Contratação da empresa SENAC para prestação de serviços de oficinas pedagógicas A cor e a face: um resgate cultural na ancestralidade brasileira, a se realizar no contraturno das Escolas de Ensino Fundamental, nos 4º e 5º anos.', 'SERVIÇO NACIONAL DE APRENDIZAGEM COMERCIAL SENAC', 1, NULL, '246/2026', '2026-02-18'),
(9, 2026, '2026-03-24', '2026-09-21', 2, 'Contratação de empresa visando a reforma de acessibilidade na EMEI Tia Marica e EMEF Olavo Bilac, conforme exigências e especificações estabelecidas em Memorial Descritivo, Termo de Referência e demais documentos constantes no Processo Administrativo nº 8257/2025.', 'R. C. DIAS PEDROSO CONSTRUTORA EIRELI.', 1, NULL, '636/2026', '2026-05-19'),
(10, 2026, '2026-03-10', '2031-03-09', 2, 'contratação de empresa especializada para o transporte e reinstalação de três salas modulares da EMEF Olavo Bilac, atualmente localizadas na Rua Quinze, n°60, Bairro Harmonia, Imbé/RS, para o novo endereço na Avenida Albatroz, Bairro Albatroz, Imbé/RS, conforme termo de referência, e demais documentos constantes no processo n°8689/2025', 'POLIBOX SISTEMAS CONSTRUTIVOS LTDA', 1, NULL, '303/2026', '2026-02-18'),
(12, 2026, '2026-02-24', '2027-02-23', 2, 'Aquisição do projeto Educação 4.0: sequências didáticas na era digital – modulo I, visando proporcionar condições para a alfabetização digital de crianças de 1º ano, em conformidade com a Lei 14.533/2023.', 'MAKER4TEC SOLUÇÕES EDUCACIONAIS LTDA', 1, NULL, '268/2026', '2026-02-24'),
(13, 2026, '2026-03-03', '2026-04-02', 2, 'contratação da empresa DPM Educação para ministrar o curso “BB gestão ágil: Nova ferramenta de prestação de contas de recursos do SUAS, FNDE e do MINC”, o curso será ministrado de forma on-line e será realizado nos dias 03 e 04 de março de 2026, com carga horária de 6 horas, dividido em 02 (dois) turnos, sendo no dia 03 de março de 2026: das 09h às 12h e no dia 04 de março de 2026: das 09h às 12h', 'DPM EDUCAÇÃO LTDA', 1, NULL, '291/2026', '2026-03-03'),
(14, 2026, '2026-03-05', '2027-03-04', 2, 'Contratação de empresa especializada para execução de serviços de mão de obra e fornecimento de materiais para construção de um Centro de Atenção Psicossocial – CAPS Tipo I, pelo NOVO PAC do governo federal, proposta de nº 12908.7650001/25-004, e Portaria GM/MS nº 8222 de 26 de setembro de 2025', 'R. C. DIAS PEDROSO CONSTRUTORA EIRELI.', 1, NULL, '314/2026', '2026-03-05'),
(15, 2026, '2026-03-10', '2027-03-09', 2, 'Contratação de empresa para capitação para professores de educação física da Rede Municipal de Ensino, no curso de Educação Física escolar, conforme termo de referência, e demais documentos constantes no processo n°1496/2026.', 'TIAGO AQUINO DA COSTA E SILVA', 1, NULL, '325/2026', '2026-03-11'),
(16, 2026, '2026-03-16', '2026-09-15', 2, 'contratação de empresa especializada para execução de obra de execução de projeto: Praça Rádio Golfinho, quadra formada entre as Ruas Canoas, Herval e Avenida Sem Denominação, bairro centro, no Município de Imbé/RS, perfazendo um total de área de 4.015,65m², conforme exigências e especificações estabelecidas em Memorial Descritivo, projetos e Termo de Referência anexos, Concorrência nº 005/2025, Pedido de Compra nº 1579/2025 e demais documentações constantes no Processo Administrativo n°6965/2026.', 'OURO FINO CONSTRUTORA LTDA', 1, NULL, '354/2026', '2026-03-17'),
(17, 2026, '2026-04-14', '2026-10-13', 2, 'O objeto do presente é a contratação de empresa para instalação de rede lógica para câmeras de monitoramento nas Unidades Escolares da Rede Municipal, sendo o Lote 1 – Escolas de Ensino Fundamental e CAPEB, e o Lote 2 – Educação Infantil, conforme exigências e especificações estabelecidas em T', 'ELETROTEC SISTEMAS DE ENERGIA LTDA', 1, NULL, '460/2026', '2026-03-23'),
(18, 2026, '2026-03-27', '2027-03-26', 2, 'contratação de empresa especializada para planejamento, execução e acompanhamento dos eventos Páscoa Leitora e Jogos interescolares Municipais de Imbé (JIMI) 2026, conforme cronograma da Secretaria Municipal de Educação, pedido de compra n°400/2026, termo de referência e documentos anexos ao Processo Administrativo n°5632/2026.', 'SESC - ADMINISTRAÇÃO REGIONAL NO ESTADO DO RIO GRANDE DO SUL', 1, NULL, '387/2026', '2026-03-23'),
(19, 2026, '2026-04-16', '2026-06-14', 2, 'O objeto do presente é a contratação de empresa para prestação de serviços de assessoria ambiental e execução especializada, com o objetivo de promover a regularização dos poços artesianos sob tutela do Município de Imbé', 'ÁGUA & TERRA PROJETOS LTDA', 1, NULL, '494/2026', '2026-04-08'),
(20, 2026, '2026-04-15', '2027-04-14', 2, 'Contratação de empresa para prestação de serviços de configuração, manutenção e gerenciamento dos sistemas de segurança do datacenter, sistema de virtualização dos servidores, sistema de backup, sistema de storage, serviços do Município de Imbé já existentes na Prefeitura desenvolvidos nas plataformas Linux e Microsoft, pelo período de 12 meses, conforme exigências e especificações estabelecidas em Termo de Referência e demais documentos constantes no Processo Administrativo n°10791/2025.', 'INFRALOGICA SERVIÇOS EM TECNOLOGIA DA INFORMAÇÃO LTDA', 1, NULL, '486/2026', '2026-04-13'),
(22, 2026, '2026-04-17', '2026-07-16', 2, 'O objeto do presente é a contratação da empresa para a elaboração de PROJETOS COMPLEMENTARES EXECUTIVOS DE ARQUITETURA E ENGENHARIA, conforme abaixo descrito, visando atender às necessidades de reforma, ampliação e construção de prédios públicos do Município de Imbé/RS, conforme especificações constantes no Processo do Credenciamento 1204/2026 e no Processo Administrativo n°8166/2026 e na Ordem de Atendimento Técnico;', 'AZ PROFISSIONAIS ASSOCIADOS LTDA', 1, NULL, '537/2026', '2026-04-22'),
(76, 2025, '2025-07-28', '2026-07-27', 2, 'Contratação de empresa especializada para o transporte de escavadeira hidráulica, dentro dos limites do município de Imbé', 'JOAO LUIZ DOS SANTOS MONTEIRO-ME', 1, NULL, '1789/2025', '2025-10-17'),
(23, 2026, '2026-04-28', '2027-04-27', 2, 'O objeto do presente é a contratação de empresa referente a prestação de serviços, de empresa especializada em gerenciamento e controle de fornecimento de combustíveis (gasolina comum, gasolina aditivada, etanol, diesel S10 e Diesel S500), arla, aditivos, lubrificantes e filtros, por meio de sistema informatizado e implantação de cartão magnético ou cartão eletrônico tipo smart com chip, vinculado à rede credenciada de postos de combustíveis, a fim de atender as necessidades dos veículos, máquinas leves e pesadas, inclusive motores estacionários e equipamentos à combustão, da Prefeitura Municipal de Imbé, conforme exigências e especificações estabelecidas em Termo de Referência e demais documentos constantes no Processo Administrativo n°6779/2026.', 'LINK CARD ADMINISTRADORA DE BENEFÍCIOS LTDA', 1, NULL, '556/2026', '2026-04-30'),
(24, 2026, '2026-05-07', '2027-05-06', 2, 'O objeto do presente é a contratação de empresa especializada para o desenvolvimento, implantação e manutenção de plataforma tecnológica web voltada ao fortalecimento da segurança pública do Município de Imbé/RS, com ênfase no enfrentamento à violência contra a mulher, conforme exigências e especificações estabelecidas em Termo de Referência e demais documentos constantes no Processo Administrativo n°6063/2026.', 'I.A. TECNOLOGIA LTDA', 1, NULL, '610/2026', '2026-05-11'),
(25, 2026, '2026-05-08', '2027-03-07', 2, 'O objeto do presente é a contratação de empresa para construção do ginásio poliesportivo e reforma interna da escola Norberto Martinho Cardoso, conforme exigências e especificações estabelecidas em Memorial Descritivo, Termo de Referência e demais documentos constantes no Processo Administrativo n°5918/2026.', 'GMA SUL CONSTRUCOES LTDA', 1, NULL, '638/2026', '2026-05-20'),
(26, 2026, '2026-05-07', '2026-08-06', 1, 'O objeto do presente é a contratação de saldo da Ata de Registro de Preços nº 029/2025, Pregão Eletrônico nº 016/2025, Item 02 – Fornecimento de refeições tipo buffet quente, servidos por pessoa, fornecido conforme cardápio aprovado, conforme especificações constantes no Processo nº 2920/2026.', 'JERUSA DA SILVEIRA MATOS DA SILVA', 1, NULL, '588/2026', '2026-05-07'),
(27, 2026, NULL, NULL, 2, 'O objeto do presente é a contratação de empresa para execução do Programa de Formação Continuada para os profissionais da Educação Integral, estruturado em encontros formativos presenciais, acompanhamento de Consultoria pedagógica e desenvolvimento de práticas educacionais alinhadas as diretrizes educacionais da rede municipal de Imbé, conforme termo de referência, e demais documentos constantes no processo 5164/2026', 'INSTITUTO EDUCACIONAL ESSENCIA DO SABER LTDA,', 1, NULL, '641/2026', '2026-05-22'),
(28, 2026, '2026-05-14', '2027-05-13', 2, 'O objeto do presente é a contratação de empresa especializada na coleta, análise e emissão de laudo da qualidade da água do CME (Central de material e esterilização) que fica localizado no PA 24h (Pronto Atendimento 24 horas) – Avenida Paraguassu. N°1141. Bairro centro, Imbé/RS. A contratação visa o fornecimento de mão de obra especializada, o uso de equipamentos apropriados e de todas as despesas com deslocamento e com insumos necessários para a execução do serviço. O serviço deverá ser prestado de forma semestral e em conformidade as normativas e regulamentações vigentes exigidas pelo Ministério da Saúde – RDC 15/2012 ANVISA, termo de referência e documentos anexos ao Processo Administrativo n°10780/2025.', 'TOXILAB LABORATORIO DE ANALISES LTDA', 1, NULL, '592/2026', '2026-05-08'),
(29, 2026, '2026-05-14', '2027-05-13', 2, 'O objeto do presente é a contratação de empresa para fornecimento de Bilhetes de Ingresso para participação em Projetos Educativos do Lokos Entretenimento, Lazer e Turismo Ltda, para alunos da Rede Municipal de Ensino, conforme termo de referência, e demais documentos constantes no processo n°10611/2026.', 'LOKOS ENTRETENIMENTO, LAZER E TURISMO LTDA', 1, NULL, '614/2026', '2026-05-13'),
(30, 2026, '2026-05-13', '2027-05-12', 2, 'O objeto do presente é a contratação da Neuropsicopedagoga Daniela Leopoldino Justo Bittencourt para formação e acompanhamento técnico de professores de 2° ano da EMEF Norberto Martinho Cardoso, de março a novembro de 2026, conforme termo de referência, e demais documentos constantes no processo n°4092/2026.', 'DANIELA LEOPOLDINO JUSTO BITTENCOURT', 1, NULL, '613/2026', '2026-05-13'),
(32, 2026, '2026-05-19', '2027-05-18', 1, 'O objeto do presente é a contratação de empresa especializada para execução de projeto de circuito para Iluminação Pública, no canteiro central da Av. Nilza Costa Godoy, entre as Avenidas Osório e Santa Rosa, no Município de Imbé/RS, coordenadas: X = 585604.4510 Y = 6681903.1351, conforme exigências e especificações estabelecidas em Estudo Técnico Preliminar, Termo de Referência e demais documentos constantes no Processo Administrativo n°4394/2026.', 'LTG SOLUÇÕES EM ENERGIA, TECNOLOGIA E GESTÃO LTDA', 1, NULL, '710/06/2026', '2026-01-06'),
(33, 2026, '2026-06-03', '2026-08-02', 2, 'O objeto do presente é a contratação da empresa para a elaboração de PROJETOS COMPLEMENTARES EXECUTIVOS DE ARQUITETURA E ENGENHARIA, conforme abaixo descrito, visando atender às necessidades de reforma, ampliação e construção de prédios públicos do Município de Imbé/RS, conforme especificações constantes no Processo do Credenciamento 1204/2026 e no Processo Administrativo n°13034/2026 e na Ordem de Atendimento técnico.', 'ENGEPROSUL ENGENHARIA LTDA', 1, NULL, '642/2026', '2026-05-22'),
(34, 2026, '2026-05-25', '2026-07-24', 2, 'O objeto do presente é a contratação do Teatro Luz e Cena que tem por objetivo realização de apresentação teatral em alusão à Semana do Meio Ambiente, promovida pelo Município de Imbé, a ser realizada nos dias 11 e 12 de junho de 2026 no C.T.G. Querência do Imbé, contemplando 04 (quatro) apresentações destinadas aos alunos da rede municipal de ensino, Ata CONSEMMA – IMBÉ 001/2026, em conformidade com termo de referência, e demais documentos constantes no processo n°9020/2026.', 'ASSOCIAÇÃO TEATRO LUZ & CENA', 1, NULL, '748/2026', NULL),
(35, 2026, '2026-05-27', '2026-07-26', 2, 'O objeto do presente é a aquisição de rouparia hospitalar – Lençol em tecido para cama hospitalar, necessários para garantir o atendimento adequado à população atendida em nossas unidades, principalmente com relação aos leitos de observação, conforme pedido de compra n°679/2026, termo de referência e documentos anexos ao Processo Administrativo n°10855/2026.', 'SCAN LIFE COMERCIAL LTDA', 1, NULL, '734/2026', '2026-06-03'),
(36, 2026, '2026-06-15', '2026-09-14', 2, 'O objeto do presente é a contratação de empresa especializada em elaboração de Projeto Técnico Básico de ponte estaiada, incluindo todos os estudos, projetos, memoriais, especificações técnicas, orçamentos e cronograma físico financeiro necessários para subsidiar futura licitação da obra: ponte estaiada sobre o Rio Tramandaí, interligando a Avenida Nilza Godoy na confluência com a Rua Caxias, no Município de Imbé, à Avenida Beira Rio na confluência com as ruas Alfredo Elias e São Salvador, no Município de Tramandaí. Convênio SICONV 882252/2018 - Construção Ponte Imbé-Tramandaí', 'DW ENGENHARIA LTDA', 1, NULL, '835/2026', NULL),
(37, 2026, '2026-06-15', '2026-08-13', 2, 'O objeto do presente é a contratação da empresa SESC/RS, para colaboração do 1° Fórum Municipal de Proteção e Bem – Estar Animal do Município de Imbé, com palestrante e Coffe Break agroecológico, que ocorrerá no dia 10 de junho de 2026, no CTG Querência do Imbé, conforme estudo técnico preliminar, ata n°002/2026 do CONSEMMA IMBÉ, pedido de compra n°762/2026, termo de referência e demais documentos contantes no Processo Administrativo n°12680/2026.', 'SESC – ADMINISTRAÇÃO REGIONAL NO ESTADO DO RIO GRANDE DO SUL', 1, NULL, '822/2026', NULL),
(38, 2026, '2026-06-19', '2027-06-18', 2, 'O objeto do presente é a contratação de empresa para prestação de serviço de manutenção preventiva e corretiva com estimativa para fornecimento de peças para câmaras frias da marca Indrel que estão localizadas nas salas de vacinas, farmácia municipal e núcleo de frios do Município de Imbé, em conformidade com termo de referência, e demais documentos constantes no processo n°10908/2026.', 'INDREL CARE SERVICOS LTDA', 1, NULL, '858/2026', '2026-06-26'),
(39, 2026, '2026-06-22', '2027-06-21', 2, 'O objeto do presente é a contratação de empresa especializada para a execução da obra de deslocamento da rede de distribuição de energia elétrica da CEEE-D Equatorial Energia (SS 202546561921137) com fornecimento de materiais e mão de obra, no Município de Imbé/RS, a intervenção correrá a Av. Santa Rosa, no trecho compreendido entre a Av. Paraguassu e a Av. Beira-Mar, bairro centro, conforme exigências e especificações estabelecidas em Memorial Descritivo, Estudo Técnico Preliminar, Termo de Referência, Concorrência nº 003/2026, pedido de compra n°258/2026 e demais documentações constantes no Processo Administrativo n°2713/2026.', 'RCL INSTALAÇÕES ELETRICAS LTDA ME', 1, NULL, '859/2026', NULL),
(40, 2026, '2026-06-26', '2027-06-25', 2, 'O objeto do presente é a Contratação de Empresa por Dispensa de Licitação Emergencial, para a realização de coleta e transporte do lixo domiciliar orgânico, seletiva e limpeza de faixa de praia no município de Imbé, por estimativa, a contar de 30 de Junho de 2026, pelo período de até 12 (doze) meses, improrrogável, podendo ser rescindida a qualquer tempo de forma unilateral pela administração, durante a baixa e alta temporada ( compreendendo-se como alta temporada de 01/01 a 15/03, e baixa temporada de 16/03 a 15/12), conforme Termo de Referência anexo. Portaria de Gestão e Fiscalização nº Av. Paraguassú, n° 1.144 - Centro - Imbé/RS - CEP: 95625-000 Telefone: (51) 3627-8200 - E-mail: juridico@imbe.rs.gov.br Para conferir a autenticidade do doc. acesse o end. https://grp.imbe.rs.gov.br/grp/acessoexterno/programaAcessoExterno.faces?codigo=670270 e informe a chancela YYOK.CESQ.YDOY.ZH6C ESTADO DO RIO GRANDE DO SUL PREFEITURA MUNICIPAL DE IMBÉ PROCURADORIA-GERAL DO MUNICÍPIO - PGM 1099/2025 , conforme documentação anexa ao Processo nº 16173/2026, Dispensa de Licitação nº 010/2026.', 'JAQUES TRANSPORTES E COLETA DE RESÍDUOS LTDA', 1, NULL, '879/2026', NULL),
(41, 2026, '2026-07-09', '2027-07-08', 1, 'O objeto do presente é a contratação de empresa para a realização de prestação de serviço especializado de manutenção preventiva, corretiva e calibração com estimativa de fornecimento e reposição de peças para manutenção de equipamentos médicos hospitalares da Secretária Municipal da Saúde, conforme exigências e especificações estabelecidas em Estudo Técnico Preliminar, Termo de Referência e demais documentos constantes no Processo Administrativo n°9926/2026', 'CALMED DISTRBUIDORA E SERVIÇOS TECNICOS LTDA', 1, NULL, '880/2026', '2026-07-10'),
(42, 2026, '2026-07-10', '2026-07-09', 2, 'O objeto do presente é a aquisição do Projeto Raízes Culturais – Uma jornada pela diversidade Afro-brasileira e indígena, que contempla materiais didáticos e pedagógicos para complementar a Proposta educativa, conforme termo de referência, e demais documentos constantes no processo n°12518/2026.', 'EDITORA EDUCACIONAL CORREA LTDA', 1, NULL, '920/2026', '2026-07-17'),
(43, 2026, '2026-07-20', NULL, 2, 'O objeto do presente é a contratação de empresa especializada visando a instalação de sistemas de geração de energia fotovoltaica em escolas do Município com fornecimento de todos os materiais, conforme exigências e especificações estabelecidas no Termo de Referência e demais documentos constantes no Processo Administrativo n°5941/2026.', 'CARDONA ENGENHARIA COMERCIO E SERVIÇOS LTDA', 1, NULL, NULL, NULL),
(44, 2026, '2026-07-21', '2026-10-21', 2, 'O objeto do presente é a contratação de empresa para prestação de serviços especializados em hospedagens com sede no município de Imbé durante o período de inverno (junho, julho e agosto) para pessoas vivendo em situação de rua em Imbé, a fim de ofertar proteção social integral com a disponibilização de hospedagem e alimentação.', 'MOREIRA & SOUZA HOTEL LTDA', 1, NULL, NULL, NULL);

INSERT INTO contrato_secretaria (contrato_id, secretaria_id, ativo_id)
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2020 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2020 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2021 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2021 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2021 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2021 LIMIT 1), 12, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 81 AND ano = 2021 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2021 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2021 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2021 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2021 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 3 AND ano = 2022 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2022 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2022 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2022 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2022 LIMIT 1), 3, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2022 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 16 AND ano = 2022 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2022 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2022 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2022 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2022 LIMIT 1), 15, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 43 AND ano = 2022 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2022 LIMIT 1), 3, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2022 LIMIT 1), 15, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 96 AND ano = 2022 LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 97 AND ano = 2022 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2022 LIMIT 1), 11, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2022 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 112 AND ano = 2022 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 115 AND ano = 2022 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 119 AND ano = 2022 LIMIT 1), 3, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 120 AND ano = 2022 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 128 AND ano = 2022 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 131 AND ano = 2022 LIMIT 1), 12, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2023 LIMIT 1), 3, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2023 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 47 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 68 AND ano = 2023 LIMIT 1), 9, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 73 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 86 AND ano = 2023 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 94 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 99 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 101 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 105 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 110 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 111 AND ano = 2023 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 117 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 118 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 119 AND ano = 2023 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 123 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 124 AND ano = 2023 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 125 AND ano = 2023 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 126 AND ano = 2023 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 128 AND ano = 2023 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 132 AND ano = 2023 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 1 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 2 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 5 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2024 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 21 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 24 AND ano = 2024 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 31 AND ano = 2024 LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2024 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2024 LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2024 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2024 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2024 LIMIT 1), 15, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2024 LIMIT 1), 9, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2024 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2024 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 50 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 54 AND ano = 2024 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 56 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 57 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 58 AND ano = 2024 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 61 AND ano = 2024 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 63 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 64 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 65 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 66 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 70 AND ano = 2024 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 74 AND ano = 2024 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 75 AND ano = 2024 LIMIT 1), 15, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 76 AND ano = 2024 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 78 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 79 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 80 AND ano = 2024 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 81 AND ano = 2024 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 82 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 83 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 85 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 86 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 88 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 89 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 90 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2024 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 93 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 94 AND ano = 2024 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 10 AND ano = 2025 LIMIT 1), 3, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2025 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2025 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 14 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 17 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 18 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 19 AND ano = 2025 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 21 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 23 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 25 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2025 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 28 AND ano = 2025 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 29 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 30 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 33 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 36 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2025 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 39 AND ano = 2025 LIMIT 1), 13, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 47 AND ano = 2025 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 48 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 50 AND ano = 2025 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 54 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 56 AND ano = 2025 LIMIT 1), 15, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 57 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 59 AND ano = 2025 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 60 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 62 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 63 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 64 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 65 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 66 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 67 AND ano = 2025 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 68 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 69 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 70 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 71 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2025 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 75 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 77 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 78 AND ano = 2025 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 79 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 82 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 83 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 85 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2025 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 88 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 89 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 90 AND ano = 2025 LIMIT 1), 10, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 93 AND ano = 2025 LIMIT 1), 12, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 95 AND ano = 2025 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 96 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 97 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 98 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 99 AND ano = 2025 LIMIT 1), 5, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 100 AND ano = 2025 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 101 AND ano = 2025 LIMIT 1), 4, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 103 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 105 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 106 AND ano = 2025 LIMIT 1), 6, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 107 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 109 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 110 AND ano = 2025 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 111 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 112 AND ano = 2025 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 113 AND ano = 2025 LIMIT 1), 13, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 1 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 2 AND ano = 2026 LIMIT 1), 12, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 3 AND ano = 2026 LIMIT 1), 11, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2026 LIMIT 1), 11, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 5 AND ano = 2026 LIMIT 1), 11, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2026 LIMIT 1), 3, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 9 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 10 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2026 LIMIT 1), 14, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 14 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 16 AND ano = 2026 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 17 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 18 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 19 AND ano = 2026 LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2026 LIMIT 1), 2, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 76 AND ano = 2025 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 23 AND ano = 2026 LIMIT 1), 18, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 24 AND ano = 2026 LIMIT 1), 9, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 25 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 28 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 29 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 30 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2026 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 33 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2026 LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 36 AND ano = 2026 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2026 LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 39 AND ano = 2026 LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2026 LIMIT 1), 15, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2026 LIMIT 1), 17, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 43 AND ano = 2026 LIMIT 1), 1, 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2026 LIMIT 1), 14, 1;

INSERT INTO equipe_contrato (contrato_id, ativo_id)
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2020 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2020 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 81 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 3 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 16 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 43 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 96 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 97 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 115 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 119 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 120 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 128 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 131 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 47 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 68 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 73 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 86 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 94 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 99 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 101 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 105 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 110 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 111 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 117 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 118 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 119 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 123 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 124 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 125 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 126 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 128 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 1 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 2 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 5 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 21 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 24 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 31 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 50 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 54 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 56 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 57 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 58 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 61 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 63 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 64 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 65 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 66 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 70 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 74 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 75 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 76 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 78 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 79 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 80 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 81 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 82 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 83 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 85 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 86 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 88 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 89 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 90 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 93 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 94 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 10 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 14 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 18 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 19 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 21 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 23 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 25 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 28 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 29 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 30 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 33 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 36 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 39 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 47 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 48 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 50 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 54 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 56 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 57 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 59 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 60 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 62 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 63 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 64 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 65 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 66 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 67 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 68 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 69 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 70 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 71 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 75 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 77 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 78 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 79 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 82 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 83 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 85 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 88 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 89 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 90 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 93 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 95 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 96 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 97 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 98 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 99 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 100 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 101 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 103 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 105 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 106 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 107 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 109 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 110 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 111 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 112 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 113 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 1 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 2 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 3 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 5 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 9 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 10 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 14 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 16 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 17 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 18 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 19 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 76 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 23 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 24 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 25 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 28 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 29 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 30 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 33 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 36 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 39 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 43 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2026 LIMIT 1), 1;

INSERT INTO equipe_membro (equipe_id, servidor_id, funcao_id)
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 85, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 164, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 203, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 103, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 204, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 180, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 45, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 21, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 97, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 4, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 210, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 211, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 212, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 4, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 121, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 213, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.homem2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 217, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'l.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.oliveira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 103, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 220, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 186, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.garcia3@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 6, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 222, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 223, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.cunha2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 225, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 226, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 227, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 228, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 231, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'p.antoni2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 234, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 236, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 238, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.azambuja2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'e.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 244, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 245, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 126, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 89, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 89, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'p.antoni2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 248, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 31, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 249, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 217, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 250, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'e.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 205, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 222, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.cunha2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 252, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 226, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 253, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 254, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.fraga2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.marques2@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 178, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 244, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 222, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 178, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 244, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 258, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 259, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 6, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 262, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 263, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 265, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 267, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 268, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 269, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 35, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 270, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 91, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 271, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 272, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 134, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 15, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 273, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 127, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 202, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 253, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 254, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 277, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 269, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 278, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 84, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 144, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 126, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 262, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 279, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'p.antoni2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 281, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 282, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 80, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 283, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 4, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 284, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 129, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.santos3@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 85, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 287, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 288, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 169, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 289, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 27, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 166, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 290, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 277, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 269, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 292, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 19, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 203, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 92, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 178, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 294, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 103, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 19, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 295, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 296, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 287, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 297, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.gomes2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 288, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 169, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 8, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 129, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 129, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 32, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 277, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 32, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 299, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 300, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 301, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 302, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 288, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 40, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.silva3@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 304, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 305, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 302, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 97, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 306, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 71, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 108, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.vargas2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 308, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 290, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 309, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 36, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 98, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 310, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 311, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 312, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 313, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.azambuja2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'e.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 47, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 165, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 253, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 309, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 279, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 208, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 314, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 315, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 123, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 316, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 317, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 318, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 309, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 98, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 36, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 91, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 47, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 121, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 210, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 174, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 80, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 319, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 320, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 321, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 91, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 272, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 32, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 265, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 59, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 130, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 87, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 322, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 323, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 324, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 325, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 326, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 178, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 203, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 164, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 294, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 327, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 290, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 328, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 40, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 329, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 330, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 331, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 278, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 278, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 49, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 332, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 40, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.silva3@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 304, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 305, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 178, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 203, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 164, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 180, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 322, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 322, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 322, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 244, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 334, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 335, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'd.evangelista2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 247, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 337, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 145, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 269, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 35, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 123, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 61, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 165, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 338, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 339, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'd.evangelista2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 338, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 339, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'd.evangelista2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 340, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 337, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 98, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 54, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 341, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 337, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 321, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 59, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 262, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 340, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 321, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 318, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 335, 3;

COMMIT;

-- Resumo: contratos=253, secretarias_links=258, equipes=250, membros=1448, servidores_novos=20
-- WARNINGS:
-- sem equipe parseada contrato 112/2022
-- sem equipe parseada contrato 132/2023
-- sem equipe parseada contrato 17/2025