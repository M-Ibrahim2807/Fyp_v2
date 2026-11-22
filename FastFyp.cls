\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FastFyp}[2023/01/24]
\LoadClass[11pt,a4paper,oneside]{book}

\usepackage{amsfonts}
\usepackage{epsfig}
\usepackage{xltabular}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{xurl}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{titlesec}
\usepackage{titlecaps}
\usepackage[numbers]{natbib}
\usepackage[titletoc,toc,title,header]{appendix}
\usepackage[]{algorithm2e}
\usepackage{url}
\usepackage{listings}
\usepackage{color}
\usepackage{caption}
\usepackage{tocloft}
\usepackage[top=1in, bottom=1in, left=1in, right=1in]{geometry}
\usepackage{fancyhdr}
\usepackage{float}

% ---- Packages added for PhishHook report ----
\usepackage{tabularx}
\usepackage{longtable}
\usepackage{array}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\usepackage{tikz}
\usetikzlibrary{arrows.meta, positioning, shapes.geometric, fit, backgrounds}
% ----------------------------------------------

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\leftmark}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{%
  \fancyhead[L]{\leftmark}
}

\setlength{\parskip}{6pt}
\captionsetup[figure]{justification=centering, labelfont=bf, textfont=bf}
\captionsetup[table]{justification=centering, labelfont=bf, textfont=bf}

\renewcommand{\cftfigfont}{\bfseries}
\renewcommand{\cfttabfont}{\bfseries}

\lstdefinestyle{customc}{
  belowcaptionskip=0.5\baselineskip,
  breaklines=true,
  frame=L,
  xleftmargin=\parindent,
  language=C,
  showstringspaces=false,
  basicstyle=\footnotesize\ttfamily,
  keywordstyle=\bfseries\color{green!40!black},
  commentstyle=\itshape\color{purple!40!black},
  identifierstyle=\color{blue},
  stringstyle=\color{orange},
}

\makeatletter
\renewcommand{\@makechapterhead}[1]{%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \Large\bfseries Chapter \thechapter\hspace{10\p@}#1\par\nobreak
    \fi
    \vskip 10\p@                  
  }
}
\makeatother

\setcounter{secnumdepth}{3} % Enable numbering for subsubsections

\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

\titleformat{\subsection}
  {\normalfont\large\bfseries}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

% Links in the text and bibliography. URLs are shown in magenta (pink).
\hypersetup{colorlinks, linkcolor=black, citecolor=blue, urlcolor=magenta}

\usepackage{setspace}
\setstretch{1.5}

\usepackage{mathptmx}
\captionsetup{font={small}}