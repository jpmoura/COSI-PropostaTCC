%%
%% Customizações do pacote article (https://www.ctan.org/pkg/article?lang=en) para o
%% Departamento de Computação e Sistemas de Informação da Universidade Federal de Ouro Preto,
%% especificamente para o Colegiado de Sistemas de Informação (COSI)
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is João Pedro Santos de Moura, moura.joaopedro@gmail.com
%%
%% Further information about this class are available on https://github.com/jpmoura/COSI-PropostaTCC
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{decsi-cosi}[2016/04/22 v1.0 Modelo de documentos do Colegiado de Sistemas de Informação (COSI) da Universidade Federal de Ouro Preto]

% Repassa todos os parametros a classe article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% Execução das opções
\ProcessOptions\relax

% Carregamento da classe
\LoadClass{article}

%-----------------------
% PACOTES NECESSÁRIOS
%-----------------------
\RequirePackage{tabu}             % Pacote de tabelas
\RequirePackage{xcolor}           % Pacote de cores
\RequirePackage{helvet}           % Pacote para alterar a fonte
\RequirePackage{fancyhdr}         % Pacote para customização de cabeçalho e rodapé
\RequirePackage[pdftex]{hyperref} % Pacote para criação de hiperliks
\RequirePackage{graphicx}         % Pacote para inserir imagens
\RequirePackage[left=0.98in,      % Margem esquerda
				right=0.98in,     % Margem direita
				top=0.98in,       % Margem superior
				bottom=0.98in,    % Margem inferior
				headsep=6pt,      % Espaçamento entre cabeçalho e início do texto
				voffset=0.5in,    % Offset vertical do início da página
				headheight=1in 	  % Altura do cabeçalho
			   ]{geometry}        % Pacote para alterar limites de texto e margens

%-----------------------
% CUSTOMIZAÇÃO
%-----------------------

% Definições de margens
\textheight=9in % Espaço utilizável como corpo de texto

% Definições de estilo
\setlength{\parindent}{0pt}               % Retira a indentação
\renewcommand{\baselinestretch}{1.5}      % Espaçamento entre linhas
\renewcommand{\familydefault}{\sfdefault} % Fonte redefinida para Arial

% Definição de cores do padrão do documento
\definecolor{VinhoUfop}{HTML}{962038}
\definecolor{AzulFooter}{HTML}{000080}

% Criação do estilo de cabeçalho e rodapé
\fancypagestyle{UfopDecsiCosi}{
	
	\fancyhf{} % Limpa qualquer estilo herdado por algum pacote
	
	% Cabeçalho alinhado à esquerda
	\fancyhead[L]{{\begin{picture}(0,0) \put(-45,-60){\includegraphics[height=1.09in, width=0.523in]{ufop.png}} \end{picture}%
			\hspace*{.5in} \fontsize{10}{12}\selectfont \uppercase{Universidade Federal de Ouro Preto}\\%
			\hspace*{.5in} \uppercase{Instituto de Ci{\^{e}}ncias Exatas e Aplicadas}\\%
			\hspace*{.5in} \fontsize{11}{13.2}\selectfont \uppercase{Colegiado do Curso de Sistemas de Informa{\c{c}}{\~{a}}o}%
			}}%
		
		% Cabeçalho centralizado
		%\fancyhead[C]{\begin{picture}(0,0) \put(-170,-5){\includegraphics[height=0.02in, width=4.75in]{hrule.png}} \end{picture}} % Linha divisória por imagem
		
		% Rodapé centralizado
		\fancyfoot[C]{
			\color{AzulFooter}\fontsize{10}{12}\selectfont Rua Trinta e seis, 115 \textendash\  Bairro Loanda \textendash\ CEP 35931-008 \textendash\ Jo\~{a}o Monlevade \textendash\ MG \textendash\ Brasil\\
			\href{http://www.icea.ufop.br}{http://www.icea.ufop.br} \textendash\ \href{mailto:cosi@decea.ufop.br}{cosi@decea.ufop.br} \textendash\ \textbf{(31) 3852-8709}
		}
		
		% Definição do separador de cabeçalho
		\renewcommand{\headrule}{\hbox to 5.56in{%
				\color{VinhoUfop}\hspace*{.8in}\leaders\hrule width 2in height 0.02in\hfill}}
}
	
\pagestyle{UfopDecsiCosi} % Ativa o estilo de cabeçalho e rodapé

%-----------------------
% COMANDOS FORNECIDOS
%-----------------------

% Comandos para proposta de tcc
\newcommand{\aluno}[2]{\textbf{Aluno:} #1 \hspace*{1in}\textbf{Matr{\'{i}}cula:} #2}
                      
\newcommand{\orientador}[1]{\textbf{Orientador:} #1}

\newcommand{\coorientador}[1]{\textbf{Coorientador:} #1}

\newcommand{\disciplina}[1]{\textbf{Disciplina:} #1}

\newcommand{\titulo}[1]{\textbf{T{\'{i}}tulo Provis{\'{o}}rio:} #1}

\newcommand{\area}[2]{\textbf{{\'{A}}rea de Pesquisa}
	
					  \begin{tabu} to \textwidth { | X[ml] | X[ml] |  }
						  \hline
						  \textbf{C{\'{o}}digo} & \textbf{Nome}\\
						  \hline
						  #1 & #2\\
						  \hline
						\end{tabu}\\
	                 }

\newcommand{\tema}{\textbf{Tema}}

\newcommand{\objetivos}{\textbf{Objetivos}}

\newcommand{\problema}{\textbf{Identifica{\c{c}}{\~{a}}o do Problema}}

\newcommand{\abreCronograma}{%
								\textbf{Cronograma de Atividades}\\
								\begin{tabular}{| l | c | c | c | c | c | c | c | c | c | c | c | c | }
									\hline
									\multicolumn{13}{|c|}{MESES} \\ \hline
									\multicolumn{1}{|c|}{Atividades} & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & 11 & 12 \\ \hline
							}
							
\newcommand{\fechaCronograma}{\end{tabular}\\}

\newcommand{\referencias}{\renewcommand{\section}[2]{\textbf{Refer{\^{e}}ncias Bibliogr{\'{a}ficas}}}}

\newcommand{\assinaturaOrientador}[1]{%
								      \begin{center}
									   	  \vspace*{#1}
										  \rule{.7\textwidth}{1pt}\hfil\\
										  Assinatura do Professor Orientador
									  \end{center}
									 }
									 
\newcommand{\assinaturaCoorientador}[1]{%
										\begin{center}
											\vspace*{#1}
											\rule{.7\textwidth}{1pt}\hfil\\
											Assinatura do Professor Coorientador
										\end{center}
									   }