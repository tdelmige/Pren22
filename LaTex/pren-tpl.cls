\ProvidesClass{pren-tpl} 
\ProcessOptions\LoadClass[a4paper,oneside]{article} 

% Pakets
\RequirePackage[ngerman]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage[a4paper]{geometry}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\usepackage{ifthen}

\geometry{verbose,tmargin=3cm,bmargin=3.5cm,lmargin=2.5cm,rmargin=2cm}
\frenchspacing % integration of appropriate spaces after the periods
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}



% Default prameters
\def\subject#1	    {\gdef\@subject{#1}}
\def\title#1		{\gdef\@title{#1}}
\def\subtitle#1		{\gdef\@subtitle{#1}}
\def\discipline#1	{\gdef\@discipline{#1}}
\def\author#1		{\gdef\@author{#1}}
\def\email#1		{\gdef\@email{#1}}
\def\data#1			{\gdef\@data{#1}}

% Default discipline
\ifx \@discipline \undefined
	\def \@discipline {Maschinenbau, Elektrotechnik \& Informatik}
\fi

% Front Page
\newcommand{\frontpage}{
	\begin{titlepage}
		\begin{center}
			%\vspace*{3cm}
		
			% Top of page
			\textsc{\LARGE \bfseries Hochschule Luzern}\\[0.2cm]
			\textsc{\large Technik \& Architektur}\\
			\textsc{\large Fachrichtungen \@discipline}\\[1.5cm]
			\begin{figure}[h!]
				\begin{center}
					\leavevmode
					%\includegraphics[scale=0.8, trim = 0mm 0mm 0mm 0mm, clip]{logo-agh.jpg}
				\end{center}
			\end{figure}
			\vspace{2cm}
			\textsc{\Large \@subject}

			% Title
			\HRule \\[0.4cm]{
				\huge \bfseries \@title\\[0.3cm]
				\large \@subtitle
			}\\[0.4cm]
			\HRule \\[1.5cm]
			
			% Author
			\begin{minipage}{0.7\textwidth}
				\begin{center}
					\large
					%\emph{Autor:}\\
					\@author
					\ifx \@email \undefined
					\else
						\space(\emph{\@email})
					\fi
				\end{center}
			\end{minipage}

			% Bottom of page
			\vfill
			{\large \@data}
		\end{center}
	\end{titlepage}
}
