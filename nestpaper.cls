\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nestpaper}[2022/02/04 NESTLab paper template]

\LoadClass[twoside]{article}

% Page layout
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
% Fonts
\RequirePackage{fontawesome}
\RequirePackage[T1]{fontenc}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage{garamondx}
% Math
\RequirePackage{amsmath}
\RequirePackage{amsthm} % must come after amsmath
%\RequirePackage{amssymb}
% Colors, tables, and graphics
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tikz}
% Links
\RequirePackage[hidelinks,pdftex]{hyperref} % must be last

%
% NEST Lab mention in the footer
%
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[LO,RE]{NEST Lab --- \texttt{https://www.nestlab.net/}}
\fancyfoot[RO,LE]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{.5pt}

%
% Force the first page to use the fancy headers
%
\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{\oldmaketitle\thispagestyle{fancy}}

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

%
% Start the two-column layout
%
\AtBeginDocument{%
  \twocolumn
}