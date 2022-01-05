% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.1cm, vmargin=0.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome}
\usepackage{hyperref}
\usepackage{xcolor}
\usepackage[normalem]{ulem}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{head}{HTML}{4682B4}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}
\newcommand{\customit}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-LigIta}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{ \color{head}
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{25pt}{8cm}\selectfont #1 
		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	} \\
	\vspace{1pt}
	\centering{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont #3}
	
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.2pt}}
	\vspace{-17pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{head}
\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}\selectfont\uppercase {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{6pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}


