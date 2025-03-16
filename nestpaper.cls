\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nestpaper}[2022/02/04 NESTLab paper template]

\LoadClass[twoside]{article}

% Page layout
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{balance}
% Fonts
\RequirePackage{fontawesome}
%\RequirePackage[T1]{fontenc}
%\RequirePackage[urw-garamond]{mathdesign}
% \RequirePackage{garamondx}
\RequirePackage{ebgaramond}
\RequirePackage{FiraMono}
% Citations
\RequirePackage{natbib}
% Math
\RequirePackage{amsmath}
\RequirePackage{amsthm} % must come after amsmath
% Colors, tables, and graphics
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tikz}
% Title formatting
\RequirePackage{titling}
% List environments
\RequirePackage{enumitem}
% Code listings
\RequirePackage{listings}
% For macros to handle spacing correctly
\RequirePackage{xspace}
% Conditional behavior
\RequirePackage{ifthen}
% Links
\RequirePackage[colorlinks=true,allcolors=blue]{hyperref} % must be last

%
% NEST Lab mention in the footer
%
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyfoot[LO,RE]{NESTLab---\texttt{www.nestlab.net}}
  \fancyfoot[RO,LE]{\thepage}
  \ifthenelse{\equal{\@docversion}{}}{}{\fancyfoot[CO,CE]{\texttt{\@docversion}}}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{.5pt}
}
\AtBeginDocument{\pagestyle{plain}}

%
% If defined, display information above the title
%
\renewcommand{\maketitlehooka}{%
  \ifthenelse{\equal{\@submitted}{}}{}{Submitted to \textit{\@submitted}\newline}%
  \ifthenelse{\equal{\@published}{}}{}{Published at \textit{\@published}\newline}%
}

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
% The NESTLab colors
%
\definecolor{nestwhite}{HTML}{FEFEFF}
\definecolor{nestblack}{HTML}{000807}
\definecolor{nestgreen}{HTML}{A8C256}
\definecolor{nestblue} {HTML}{0073AA}
\definecolor{nestred}  {HTML}{AC2B37}


% 
% Useful commands
%

% To typeset ARGoS correctly
\newcommand{\argos}{ARGoS\xspace}

% \version{Version information}
\newcommand{\@docversion}{}
\newcommand{\docversion}[1]{\gdef\@docversion{#1}}

% \submitted{Conference or Journal Name}
\newcommand{\@submitted}{}
\newcommand{\submitted}[1]{\gdef\@submitted{#1}}

% \published{Conference or Journal Name}
\newcommand{\@published}{}
\newcommand{\published}[2]{\gdef\@published{#1}}
