%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  class for zettel in theoretical physics                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% identification							
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{theozettel}[2020/07/11 Zettel class for zettel in theoretical physics]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% preliminary declarations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[a4paper, titlepage, 11pt]{article}

\RequirePackage{ucs}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{textcomp}
\RequirePackage{mdframed}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{enumerate}
\RequirePackage{cases} 
\RequirePackage{pdfpages}
\RequirePackage{etoc}
\RequirePackage{blindtext}
\RequirePackage{halloweenmath}
\RequirePackage{listliketab}
\RequirePackage{fancyhdr}
\RequirePackage{mathtools}
\RequirePackage{multicol}
\RequirePackage{lipsum}
\RequirePackage{mdwlist}
\RequirePackage{pgfplots}
\RequirePackage{subcaption}
\RequirePackage{gauss}
\RequirePackage{stackrel}
\RequirePackage{tikz} 
\RequirePackage{wasysym} 
\RequirePackage{physics}
\RequirePackage{listings} 
\RequirePackage{float}	
\RequirePackage{geometry}
\RequirePackage[german]{alg}
%\RequirePackage{algorithms}
\RequirePackage{tikz-cd}
\RequirePackage{gensymb}
\RequirePackage{mathrsfs}

\usetikzlibrary{automata, positioning, arrows, intersections}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%% Page Styles


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% more declarations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% shortforms
\newcommand{\obda}{\text{o.B.d.A.}}
\newcommand{\Obda}{\text{O.B.d.A.}}

%% mathbb letters
\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\K}{\mathbb{K}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\PR}{\mathbb{P}}


%% operators
%\newcommand{\Res}{\operatorname{Res}}
\newcommand{\adj}{\operatorname{adj}}
\newcommand{\ggT}{\operatorname{ggT}}
\newcommand{\Fit}{\operatorname{Fit}}
\newcommand{\GL}{\operatorname{GL}}
\newcommand{\id}{\operatorname{id}}
\newcommand{\kgV}{\operatorname{kgV}}
\newcommand{\sgn}{\operatorname{sgn}}
\newcommand{\diag}{\operatorname{diag}}
\newcommand{\Ann}{\operatorname{Ann}}
\newcommand{\im}{\operatorname{im}}
\newcommand{\Lin}{\operatorname{Lin}}
\newcommand{\const}{\operatorname{const}}
\newcommand{\Hom}{\operatorname{Hom}}
\newcommand{\End}{\operatorname{End}}
\newcommand{\Rang}{\operatorname{Rang}}
\newcommand{\rang}{\operatorname{rang}}
\newcommand{\rg}{\operatorname{rg}}


%% mathrim letters
\renewcommand{\i}{\mathrm{i}}


%% quality of life bracktes
\newcommand{\set}[2]{\{#1 \ | \ #2\}}


%% big changes
\makeatletter
\newcommand{\listintertext}{\@ifstar\listintertext@\listintertext@@}
\newcommand{\listintertext@}[1]{% \listintertext*{#1}
  \hspace*{-\@totalleftmargin}#1}
\newcommand{\listintertext@@}[1]{% \listintertext{#1}
  \hspace{-\leftmargin}#1}
\makeatother


%% useful math symbols
\newcommand{\zmod}[1]{\Z/#1\Z}
\newcommand{\maxnorm}[1]{\norm{#1}_{\infty}}

\newcommand{\charp}[1]{\chi_{ #1 }^{\text{char}} }

\newcommand{\minp}[1]{\chi_{ #1 }^{\text{min}} }

\newcommand{\hermite}[1]{\overline{#1}^{T}}
\newcommand{\skpro}[2]{\left(#1,#2 \right)}

\newcommand{\cond}[2]{\operatorname{cond}_{#2}\left(#1\right)}


%% tables (to be updated)

\newcommand{\punkteI}[1]{
	\begin{tabular}{c|c}
		 \ $\sum $ \ & \  A#1 \ \\
		\hline
		 &  \\
		 & 
	\end{tabular}
}


\newcommand{\punkteII}[2]{
	\begin{tabular}{c|c|c}
		 \ $\sum $ \ & \  A#1 \ & \  A#2 \ \\
		\hline
		 &  & \\
		 &  &
	\end{tabular}
}

\newcommand{\punkteIII}[3]{
	\begin{tabular}{c|c|c|c}
		 \ $\sum $ \ & \  A#1 \ & \  A#2 \ & \  A#3 \ \\
		\hline
		 &  & & \\
		 &  & &
	\end{tabular}
}

\newcommand{\punkteIV}[4]{
	\begin{tabular}{c|c|c|c|c}
		 \ $\sum $ \ & \  A#1 \ & \  A#2 \ & \  A#3 \ & \  A#4 \ \\
		\hline
		 &  & & & \\
		 &  & & &
	\end{tabular}
}

\newcommand{\punkteV}[5]{
	\begin{tabular}{c|c|c|c|c|c}
		 \ $\sum $ \ & \  A#1 \ & \  A#2 \ & \  A#3 \ & \  A#4 \ & \  A#5 \ \\
		\hline
		 &  & & & & \\
		 &  & & & &
	\end{tabular}
}




%\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
%\setlength{\textwidth}{17.5cm}
%\setlength{\textheight}{22cm}
%\setcounter{secnumdepth}{0}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% new theorem styles
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem*{definition*}{Definition}
\newtheorem{satz}{Satz}[section]
\newtheorem*{satz*}{Satz}
\newtheorem*{beweis}{Beweis}
\newtheorem{korollar}{Korollar}[satz]
\newtheorem{bem}{Bemerkung}[section]
\newtheorem*{bem*}{Bemerkung}
\newtheorem{notationm}{Notation}[section]
\newtheorem{beisp}{Beispiel}[section]
\newtheorem*{beisp*}{Beispiel}
\newtheorem{prop}{Proposition}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem*{lemma*}{Lemma}

\newtheoremstyle{aufgabe}% name of the style to be used
  {0pt}% measure of space to leave above the theorem. E.g.: 3pt
  {\topsep}% measure of space to leave below the theorem. E.g.: 3pt
  {}% name of font to use in the body of the theorem
  {0pt}% measure of space to indent
  {\bfseries}% name of head font
  { }% punctuation between head and body
  { }% space after theorem head; " " = normal interword space
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}
 
\theoremstyle{aufgabe}

\newtheorem*{zbeweis}{Beweis}
\newtheorem*{zz}{Z.Z.}

\newcommand{\theoI}[1]{
\pagestyle{fancy}
\fancyhf{}
\rhead{Aufgabenblatt #1 \\ Nico Haaf, Tobias Leander Leonhard, Simon Skade}
\lhead{Theoretische Physik 1 WiSe20-21 \\ Tutorin: Thea Budde}
\rfoot{Seite \thepage}
}