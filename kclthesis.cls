\ProvidesClass{kclthesis}[KCL MSc Thesis Class]
\NeedsTeXFormat{LaTeX2e}

\newif\ifkclthesis@kclharvardbib
\newif\ifkclthesis@biblatexieee
\newif\ifkclthesis@natbibieee

\DeclareOption{kclharvardbib}{\kclthesis@kclharvardbibtrue}
\DeclareOption{biblatexieee}{\kclthesis@biblatexieeetrue}
\DeclareOption{natbibieee}{\kclthesis@natbibieeetrue}

\ProcessOptions*

\LoadClass[11pt,a4paper]{article}

\ifkclthesis@kclharvardbib
	\RequirePackage{natbib}
    \RequirePackage[UKenglish]{isodate}
\fi

\ifkclthesis@biblatexieee
	\RequirePackage[style=ieee, doi=true, backend=biber]{biblatex}
	\RequirePackage[english]{babel}
    \RequirePackage{csquotes}
    \addbibresource{bibs/bibliography.bib}
\fi

\ifkclthesis@natbibieee
    \RequirePackage[square, numbers]{natbib}
    \RequirePackage[UKenglish]{isodate}
\fi

% Math fonts
\RequirePackage{amsmath, amsfonts, amsthm, amssymb}
\RequirePackage{wasysym}

% Additional Packages
\RequirePackage{placeins}
\RequirePackage{tabularx}
\RequirePackage[table]{xcolor}
\RequirePackage[nottoc, notlot, notlof]{tocbibind}
\RequirePackage{hyperref}
\RequirePackage[capitalise, nameinlink]{cleveref}
\RequirePackage{fancyhdr}
\RequirePackage{subfigure}
\RequirePackage[textsize = tiny, figwidth = 8cm]{todonotes}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{tikz}
\RequirePackage{enumitem}
\RequirePackage[intoc]{nomencl}
\RequirePackage[toc, acronym]{glossaries}
\RequirePackage{color}
\RequirePackage{xcolor}
\RequirePackage{listings}

\usetikzlibrary{arrows}

\DeclareFixedFont{\ttb}{T1}{txtt}{bx}{n}{9}
\DeclareFixedFont{\ttm}{T1}{txtt}{m}{n}{9}

% Cover Page
\RequirePackage{graphicx}
\RequirePackage[paper = a4paper]{geometry}
\RequirePackage{setspace}
\RequirePackage{framed}

%%%% VARIABLES
\newcommand*{\modulecode}[1]{\gdef\@modulecode{#1}}
\newcommand*{\@modulecode}{\red{Missing Module Code}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\@department}{\red{Missing Department}}
\newcommand*{\submissiontitle}[1]{\gdef\@submissiontitle{#1}}
\newcommand*{\@submissiontitle}{\red{Missing Submission title}}
\newcommand*{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@studentnumber}{\red{Missing Studentnumber}}
\newcommand*{\emailaddress}[1]{\gdef\@emailaddress{#1}}
\newcommand*{\@emailaddress}{\red{Missing Email Address}}
\newcommand*{\programme}[1]{\gdef\@programme{#1}}
\newcommand*{\@programme}{\red{Missing Program}}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@supervisor}{\red{Missing supervisor}}
\newcommand*{\wordcount}[1]{\gdef\@wordcount{#1}}
\newcommand*{\@wordcount}{\red{Missing wordcount}}
\newcommand*{\signdate}[1]{\gdef\@signdate{#1}}
\newcommand*{\@signdate}{\today}

% MACRO 
\newfam\msbfam
\def\Bbb#1{\fam\msbfam\relax#1}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{exa}{Example}[section]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{remark}[theorem]{Remark}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{assumption}[theorem]{Assumption}
\newtheorem{conjecture}[theorem]{Conjecture}

% Indicator Function
\newcommand{\ind}{1\hspace{-2.1mm}{1}}
\newcommand{\I}{\mathtt{i}}
\newcommand{\D}{\mathrm{d}}
\newcommand{\E}{\mathrm{e}}
\newcommand{\Z}{\mathds{Z}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\sgn}{\mathrm{sgn}}
\newcommand{\atanh}{\mathrm{arctanh}}
\def\equalDistrib{\,{\buildrel \Delta \over =}\,}
\numberwithin{equation}{section}
\def\blue#1{\textcolor{blue}{#1}}
\def\red#1{\textcolor{red}{#1}}
\definecolor{deepblue}{rgb}{0,0,0.5}
\definecolor{deepred}{rgb}{0.6,0,0}
\definecolor{deepgreen}{rgb}{0,0.5,0}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
 
\lstdefinestyle{pythonstyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codepurple},
    keywordstyle=\color{deepblue},
    otherkeywords={self,with},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codegreen},
    basicstyle=\ttfamily\footnotesize,
    emph={__init__,True,False,@staticmethod},
    emphstyle=\color{deepred},
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    frame=tb
}

\lstset{style=pythonstyle}
\crefname{lstlisting}{Listing}{Listings}

% Python style for highlighting
% \newcommand\pythonstyle{\lstset{
% language=Python,
% basicstyle=\ttm,
% otherkeywords={self,if,is},             % Add keywords here
% keywordstyle=\ttb\color{deepblue},
% emph={__init__,True,False},          % Custom highlighting
% emphstyle=\ttb\color{deepred},    % Custom highlighting style
% stringstyle=\color{deepgreen},
% frame=tb,                         % Any extra options here
% showstringspaces=false            % 
% }}
% Python environment
% \lstnewenvironment{python}[1][]{\pythonstyle\lstset{#1}}{}
% Python for external files
% \newcommand\pythonexternal[2][]{{\pythonstyle\lstinputlisting[#1]{#2}}}
% % Python for inline
% \newcommand\pythoninline[1]{{\pythonstyle\lstinline!#1!}}

% New Comment for todo notes
\newcommand{\insertref}[1]{\todo[color=green!40]{RefMissing: #1}}
\newcommand{\explainindetail}[1]{\todo[color=red!40]{Explain: #1}}
\newcommand{\askfeedback}[1]{\todo[color=blue!40]{Feedback Required: #1}}

\renewcommand*{\maketitle}{
\begin{titlepage}

\begin{minipage}{0.5\textwidth}
\begin{flushleft}
\textbf{Faculty of Natural and\\
	Mathematical Sciences\\}
\small{\@department}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.25\textwidth}
	\hspace{5cm}
\end{minipage}%
\begin{minipage}{0.25\textwidth}
	\begin{flushright}
		\includegraphics[width = 3.25cm]{img/kcl}
	\end{flushright}
\end{minipage}
\vspace{0.5cm}

\doublespacing{
\begin{minipage}{\textwidth}
	\begin{center}
		\textbf{\@modulecode \\ \@submissiontitle}
	\end{center}
\end{minipage}%


\vspace{1cm}

\begin{minipage}{0.3\textwidth}
	\begin{flushleft}
	\textbf{Name:\\Student Number:\\Email Address:\\Degree Programme:\\Project Title:\\ Supervisor:\\ Word Count:\\}
	\end{flushleft}
\end{minipage}%
\begin{minipage}{0.7\textwidth}
	\begin{flushleft}
	\@author \\ \@studentnumber \\ \@emailaddress \\ \@programme \\ \@title \\ \@supervisor \\ \@wordcount
	\end{flushleft}
\end{minipage}
}
\vspace{1cm}
	
\begin{minipage}{\textwidth}
	\begin{framed}
		Plagiarism Statement\\
		All work submitted as part of the requirements for any examination or assessment must be expressed in your own words and incorporates your own ideas and judgements. Plagiarism is the taking and using of another person’s thoughts, words, judgements, ideas, etc., as your own without any indication that they are those of another person. \\ Plagiarism is a serious examination offence. An allegation of plagiarism can result in action being taken under the \textit{B3 Misconduct Regulations}. 
	\end{framed}

I acknowledge that I have read and understood the above information and that the work I am submitting is my own. 
\end{minipage}

\vspace{1cm}

\begin{minipage}{0.5\textwidth}
\begin{flushleft}
	\textbf{Signature:}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.5\textwidth}
	\begin{flushleft}
		\textbf{Date:} \@signdate
	\end{flushleft}
\end{minipage}

\end{titlepage}
}

\onehalfspacing
\endinput