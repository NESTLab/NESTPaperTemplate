\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nestpaper}[2022/02/04 NESTLab paper template]

\LoadClass[twoside]{article}

% Page layout
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{balance}
% Fonts
\RequirePackage{fontawesome}
\RequirePackage[T1]{fontenc}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage{garamondx}
\RequirePackage{FiraMono}
% Math
\RequirePackage{amsmath}
\RequirePackage{amsthm} % must come after amsmath
% Colors, tables, and graphics
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tikz}
% List environments
\RequirePackage{enumitem}
% Listings
\RequirePackage{listings}
% To redefine \maketitle
\RequirePackage{titling}
% For macros to handle spacing correctly
\RequirePackage{xspace}
% Links
\RequirePackage[colorlinks=true,allcolors=blue]{hyperref} % must be last
\AtBeginDocument{
  \hypersetup{
    pdfauthor={\@author},
    pdftitle={\@title}}}

%
% NEST Lab mention in the footer
%
\AtBeginDocument{\pagestyle{fancy}}
\fancyhf{}
\fancyfoot[LO,RE]{NEST Lab --- \texttt{https://www.nestlab.net/}}
\fancyfoot[RO,LE]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{.5pt}

%
% Force the first page to use the fancy headers
%
\renewcommand{\maketitlehookd}{\thispagestyle{fancy}}

%
% Redefine url and href with a nice symbol and no colored box
%
\let\oldurl\url
\renewcommand{\url}[1]{\oldurl{{\small\faExternalLink}\,#1}}
\let\oldhref\href
\renewcommand{\href}[2]{\oldhref{#1}{{\small\faExternalLink}\,#2}}

%
% E-Mail address
%
\newcommand{\email}[1]{\texttt{\href{mailto:#1}{#1}}}
\renewcommand{\thanks}[1]{ (\texttt{\href{mailto:#1}{#1}})}

%
% List style
%
\setlist{left=0pt}

%
% Basic listings style
%
\lstset{
  frame=single,
  basicstyle=\footnotesize\ttfamily,
  keywordstyle=\color{black}\bfseries,
  identifierstyle=\color{black},
  commentstyle=\color{black!55}\itshape
}

%
% Start the two-column layout
%
\AtBeginDocument{\twocolumn}

%
% Useful commands
%

% To typeset ARGoS correctly
\newcommand{\argos}{ARGoS\xspace}

% \version{Conference Name}
\newcommand{\@version}{}
\newcommand{\version}[1]{\gdef\@version{Version #1}}

% \submitted{Conference or Journal Name}
\newcommand{\@submitted}{}
\newcommand{\submitted}[1]{\gdef\@submitted{Submitted to #1}}

% \published{Conference or Journal Name}
\newcommand{\@published}{}
\newcommand{\published}[2]{\gdef\@published{Published at #1}}
