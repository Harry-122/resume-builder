% Intro Options
\ProvidesClass{cv}[2025/06/01 CV class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

% Package Imports
\usepackage[lmargin=1.2cm, vmargin=1cm, rmargin=1.2cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage[document]{ragged2e}
\usepackage{pifont}
\usepackage{fdsymbol}
\usepackage{array}
\usepackage{tabularx}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{title}{HTML}{1D76E2}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Font Definitions
\usepackage{fontspec}
\setmainfont[Color=primary]{Arial}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Arial}

% Name command
\newcommand{\namesection}[2]{
\begin{center}
    {\color{title} \fontsize{24pt}{30pt} \fontspec{Arial}\selectfont #1} \\
    \vspace{4pt}
    {\color{subheadings} \fontsize{10pt}{12pt} \fontspec{Arial}\selectfont #2}
    \vspace{-3pt}
\end{center}
}

% Contact Line - Centered and Properly Spaced
\newcommand{\contactline}[4]{
\begin{center}
    {\fontsize{10pt}{14pt} \fontspec{Arial}\selectfont 
    #1 \hspace{0.2cm} | \hspace{0.2cm} #2 \hspace{0.2cm} | \hspace{0.2cm} #3 \hspace{0.2cm} | \hspace{0.2cm} #4}
\end{center}
}

% Section separators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{6pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{3pt}}

% Headings command
\titleformat{\section}{\color{title}
\scshape\fontspec{Arial}\fontsize{14pt}{20pt}\selectfont \raggedright}{}{0em}{}

% Subheadings command
\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec{Arial}\fontsize{9pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec{Arial}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec{Arial}\fontsize{8pt}{12pt}\selectfont \textit{#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}
\begin{itemize}[]\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}
\vspace{-\topsep}
}

% Subheadings on the right
\titleformat{\subsection}{
\color{subheadings}\fontspec{Arial}\fontsize{12pt}{14pt}\selectfont\bfseries\uppercase}{}{0em}{}

% Define a new column type for left-aligned text in a fixed width without space
\newcolumntype{P}[1]{>{\raggedright\arraybackslash\hspace{-0.12cm}}p{#1}}

% Define a new column type for left-aligned text in a fixed width without space
\newcolumntype{M}[1]{>{\centering\arraybackslash\hspace{-0.12cm}}m{#1}}

% Add some vertical padding to the rows
\renewcommand{\arraystretch}{1.3}
