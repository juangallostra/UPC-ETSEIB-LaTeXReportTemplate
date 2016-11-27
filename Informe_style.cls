% Preprocessor
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Informe_style}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions

% Specific contents of TFG class
\LoadClass{report}

% Euro Symbol handling
\usepackage[gen]{eurosym}
\usepackage{amsmath}

%hyperlinks
\usepackage{hyperref}

% utf8 character set
\usepackage[utf8]{inputenc}

% Some setings for spacings and toc contents
\setcounter{tocdepth}{5}
\setcounter{secnumdepth}{5}
\setlength{\parindent}{1em}
\setlength{\parskip}{1em}
%\raggedbottom

% Manage blank pages
\usepackage{afterpage}
\newcommand\blankpage{%
	\null
	\thispagestyle{empty}%
	\addtocounter{page}{-1}%
	\newpage}

% Page layout, headers and footers 
%\usepackage{geometry}
%\geometry{a4paper, footskip=50pt }

% Change values in total to modify the usable space in page (and hence, the margins)
\usepackage[a4paper, total={6.5in, 9.75in}]{geometry}

\usepackage{fancyhdr}
\pagestyle{fancy}
% Common
\fancyhead[LE,RO]{Lab 2. Discrete Optimization.\\Juan Gallostra Acín\\November 2016}
\fancyfoot[CO,CE]{}
% Even pages - Left pages
\fancyhead[RE]{Lab 2. Discrete Optimization.\\Juan Gallostra Acín\\November 2016}
\fancyfoot[LE]{\thepage}
% Odd pages - Right pages
\fancyhead[LO]{\includegraphics[scale=0.45]{ETSEIB.PNG}}
\fancyfoot[RO]{\thepage}


% Some hacking-chapter redefining
\usepackage{etoolbox}
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}

% Image handling
\usepackage{graphicx}
\usepackage{float}
\graphicspath{{./images/}}

% Redefine chapter style
\usepackage{titlesec}
\titleformat{\chapter}[hang]{\normalfont\Large\bfseries}{\thechapter}{1em}{}[]
% Redefine section style
\titleformat*{\section}{\normalfont\normalsize\bfseries}
% Change spacings
% \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing*{\chapter}
{0pt}{0ex plus .2ex minus .2ex}{1ex plus .2ex}
\titlespacing*{\section}
{0pt}{5ex plus 1ex minus .2ex}{4.3ex plus .2ex}
\titlespacing*{\subsection}
{0pt}{5ex plus 1ex minus .2ex}{4.3ex plus .2ex}

\titlespacing\section{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}


% Code insertion
\usepackage{listings}
\usepackage{color}
% Matlab defined
\definecolor{lightgray}{gray}{0.5}
\definecolor{codeback}{rgb}{0.94,0.94,0.94}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
% C code
\lstset{frame=tb,language=C,aboveskip=3mm,belowskip=3mm,showstringspaces=false,columns=flexible,basicstyle={\small\ttfamily},numbers=none,numberstyle=\tiny\color{gray},keywordstyle=\color{blue},commentstyle=\color{dkgreen},stringstyle=\color{mauve},breaklines=true,breakatwhitespace=true,tabsize=3}
% Matlab code
\lstset{frame=none,language=Matlab,
   keywords={break,case,catch,continue,else,elseif,end,for,function,
      global,if,otherwise,persistent,return,switch,try,while,all,on,off,ones,zeros},
   basicstyle=\small\ttfamily,
   keywordstyle=\color{blue},
   commentstyle=\color{dkgreen},
   stringstyle=\color{mauve},
   %numbers=left,
   %numberstyle=\tiny\color{gray},
   %stepnumber=1,
   numbersep=10pt,
   backgroundcolor=\color{codeback},
   tabsize=4,
   showspaces=false,
   showstringspaces=false}

% Redefine commands - For Spanish texts, uncomment. 
%\renewcommand{\chaptername}{Capítulo}
%\renewcommand{\abstractname}{Resumen}
%\renewcommand{\contentsname}{Índice}
%\renewcommand{\listfigurename}{Índice de Figuras}
%\renewcommand{\listtablename}{Índice de Tablas}
%\renewcommand{\figurename}{Figura}
%\renewcommand{\tablename}{Tabla}
%\renewcommand{\appendixname}{Anexo}
%\renewcommand{\bibname}{Bibliografía}
% if needed in the future
%\renewcommand{\indexname}{Índice}
%\renewcommand{\partname}{Parte}
% Additional index contents

% For theorems and lemmas
\usepackage{amsmath,amsthm}
\newtheorem{lem}{Theorem}

\endinput