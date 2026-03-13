% Copyright (c) 2026 Carlo Pinciroli
%
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nestpaper}[2022/02/04 NESTLab paper template]

\LoadClassWithOptions{article}

% Page layout
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{balance}
% Fonts
\RequirePackage{fontawesome}
\RequirePackage{ebgaramond}
\RequirePackage{FiraMono}
\RequirePackage{dsfont}
% Citations
\RequirePackage{natbib}
% Math
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm} % must come after amsmath
\RequirePackage{mathtools}
% Algorithms
\usepackage{algorithm}
\usepackage{algpseudocode}
% Colors, tables, and graphics
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tikz}
\RequirePackage{subcaption}
% Title formatting
\RequirePackage{titling}
% Section and paragraph title formatting
\RequirePackage{titlesec}
% List environments
\RequirePackage[inline]{enumitem}
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
% Blind footnote: an unmarked footnote
%
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

%
% Redefine url and href with a nice symbol and no colored box
%
\let\oldurl\url
\renewcommand{\url}[1]{{\small\faExternalLink}\,\oldurl{#1}}
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
\setlist{left=0pt,nosep}
\setlist[description]{font=\normalfont\itshape\textbullet\space}
\newlist{inparaenum}{enumerate*}{1}
\setlist[inparaenum]{label=\emph{\alph*)}, before=\unskip{: }, after=\unskip{.}, itemjoin={{; }}, itemjoin*={{; and }}}

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
% Add a . after the paragraph title
%
\titleformat{\paragraph}[runin]{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}[.]

%
% Start the two-column layout
%
%\AtBeginDocument{\twocolumn}

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

% To include the ORCID number
\newcommand{\orcidID}[1]{\unskip$^{[#1]}$}

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
