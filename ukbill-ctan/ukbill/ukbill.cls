\NeedsTeXFormat{LaTeX2e}
\def\ukbillversionnumber{1.0.2}
\ProvidesClass{ukbill}[2022-12-13 A Class for Legal Notes]
  % !TeX program = lualatex                                   
% !TeX encoding = utf8
% This work may be distributed and/or modified under the 
% conditions of the LaTeX Project Public License, either version 1.3c
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX 
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Elijah Z Granet


\LoadClass[a4paper,12pt]{memoir}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% schedule divisions
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\schdpart}[1]{\subsubsection{#1}}
\newcommand{\startschedule}{\clearpage
\setcounter{schedon}{1}
%\setcounter{subsection}{}
\setcounter{part}{0}
\begin{center}
	\large\textsc{SCHEDULES}
\end{center}
\addcontentsline{toc}{chapter}{\rule{.45\textwidth}{1pt}}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\newcommand{\drafter}[1]{\def\@drafter{#1}}
\newcommand{\printdrafter}{\@drafter}
\def\@drafter{\@latex@warning@no@line{No \noexpand\drafter given}}
\newcommand{\billcopyright}[1]{\def\@billcopyright{#1}}
\newcommand{\printbillcopyright}{\@billcopyright}
\def\@billcopyright{\@latex@warning@no@line{No \noexpand\billcopyright given}}
\newcommand{\billto}[1]{\def\@billto{#1}}
\newcommand{\printbillto}{\@billto}
\def\@billto{\@latex@warning@no@line{No \noexpand\billto given}}
\newcommand{\whereas}[1]{\def\@whereas{#1}}
\newcommand{\printwhereas}{\@whereas}

\newcommand{\publishedby}[1]{\def\@publishedby{#1}}
\newcommand{\printpublishedby}{\@publishedby}
\def\@publishedby{\@latex@warning@no@line{No \noexpand\publishedby given}}
\newcommand{\billtitle}[1]{\def\@billtitle{#1}}
\newcommand{\printbilltitle}{\@billtitle}
\def\@billtitle{\@latex@warning@no@line{No \noexpand\billtitle given}}
\newcommand{\humanrights}[1]{\def\@humanrights{#1}}
\newcommand{\printhumanrights}{\@humanrights}
\def\@humanrights{\@latex@warning@no@line{No \noexpand\humanrightsgiven}
}
\newcommand{\exptitle}[1]{\def\@exptitle{#1}}
\newcommand{\printexptitle}{\@exptitle}
\def\@exptitle{\@latex@warning@no@line{No \noexpand\exptitle given}}
\newcommand{\exptext}[1]{\def\@exptext{#1}}
\newcommand{\printexptext}{\@exptext}
\def\@exptext{\@latex@warning@no@line{No \noexpand\exptext given}}
\newcommand{\billnum}[1]{\def\@billnum{#1}}
\newcommand{\printbillnum}{\@billnum}
\def\@billnum{\@latex@warning@no@line{No \noexpand\billnum given}}


\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hyphenation
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[none]{hyphenat}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% list organisation
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{paralist}
  \let\itemize\compactitem
  \let\enditemize\endcompactitem
  \let\enumerate\compactenum
  \let\endenumerate\endcompactenum
  \let\description\compactdesc
  \let\enddescription\endcompactdesc
  \pltopsep=-12pt
  \plitemsep=0pt
  \plparsep=0pt
\newcounter{schedcount}
\counterwithout{section}{chapter}

\counterwithin{schedcount}{subsubsection}
\setsecnumdepth{subsubsection}
\def\tocmark{\markboth{\MakeTextUppercase{}}{}}
\RequirePackage[absolute]{textpos}
\setlength{\TPHorizModule}{10mm}
\setlength{\TPVertModule}{10mm}
\TPGrid[15mm,1mm]{8}{9}                        % Divide page in 9x9 grid 
\DeclareRobustCommand{\Leftblock}{{
\begin{textblock}{10}(0.5,1.8)\footnotesize\itshape 5\end{textblock}
\begin{textblock}{10}(0.5,2.7)\footnotesize\itshape 10\end{textblock}
\begin{textblock}{10}(0.5,3.6)\footnotesize\itshape 15\end{textblock}
\begin{textblock}{10}(0.5,4.5)\footnotesize\itshape 20\end{textblock}
\begin{textblock}{10}(0.5,5.4)\footnotesize\itshape 25\end{textblock}
\begin{textblock}{10}(0.5,6.3)\footnotesize\itshape 30\end{textblock}
\begin{textblock}{10}(0.5,7.2)\footnotesize\itshape 35\end{textblock}
}}
\DeclareRobustCommand{\Rightblock}{{
\begin{textblock}{10}(7.75,1.8)\footnotesize\itshape 5\end{textblock}
\begin{textblock}{10}(7.75,2.7)\footnotesize\itshape 10\end{textblock}
\begin{textblock}{10}(7.75,3.6)\footnotesize\itshape 15\end{textblock}
\begin{textblock}{10}(7.75,4.5)\footnotesize\itshape 20\end{textblock}
\begin{textblock}{10}(7.75,5.4)\footnotesize\itshape 25\end{textblock}
\begin{textblock}{10}(7.75,6.3)\footnotesize\itshape 30\end{textblock}
\begin{textblock}{10}(7.75,7.2)\footnotesize\itshape 35\end{textblock}
}}
\DeclareRobustCommand{\Firstblock}{{
%\begin{textblock}{10}(7.75,1.8)\footnotesize\itshape 5\end{textblock}
%\begin{textblock}{10}(7.75,2.7)\footnotesize\itshape 10\end{textblock}
%\begin{textblock}{10}(7.75,3.6)\footnotesize\itshape 15\end{textblock}
\begin{textblock}{10}(7.75,4.5)\footnotesize\itshape 5\end{textblock}
\begin{textblock}{5}(7.75,5.4)\footnotesize\itshape 10\end{textblock}
\begin{textblock}{10}(7.75,6.3)\footnotesize\itshape 15\end{textblock}
\begin{textblock}{10}(7.75,7.2)\footnotesize\itshape 20\end{textblock}
}}

\RequirePackage{ccicons}
 \makepagestyle{bill}
  \makepagestyle{billfirst}

 \makeatletter
 \makepsmarks {bill}{
\nouppercaseheads}
\makeatother
\makeatletter
 \renewcommand{\bookpagemark}[1]{\itshape\thetitle\\}
  \makepsmarks {billfirst}{
\nouppercaseheads}
\makeatother
 \renewcommand{\bookpagemark}[1]{\noindent\itshape\thetitle\\}

% \renewcommand{\partpagemark}[1]{\itshape\thetitle\\}
 \makepagestyle{front}

 \makepagestyle{sched}
 \makeatletter
 \makepsmarks {sched}{
\nouppercaseheads}
\makeatother
 \renewcommand{\bookpagemark}[1]{\itshape\thetitle\\}
% \renewcommand{\partpagemark}[1]{\itshape\thetitle\\}
\clearmark{chapter}
\clearmark{section}

\createmark{part}{both}{shownumber}{\partname\space}{.\space}

 
 \RequirePackage[margin=3.25cm,headheight=100pt]{geometry}
 \makeatletter
 \makeevenfoot{front}{}{}{\printbillnum}
  \makeoddfoot{front}{}{}{\printbillnum}
  \makeatother

\renewcommand{\bookname}{\printbilltitle}
\makeheadrule{bill}{\textwidth}{1pt}
 \makeevenhead{bill}{\Rightblock\normalsize\thepage\ifnum\value{part}>0\\\else\fi\ifnum\value{schedon}=1\\\else\fi\ifnum\value{subsubsection}>0\vskip 12pt\else\fi}{}{\footnotesize\itshape\bookname
   \ifnum\value{schedon}=1
\\ \itshape Schedule \arabic{subsection}\hspace{1ex}—\hspace{1ex}\currentsubsection \else\fi
  \ifnum\value{part}>0
\\Part \arabic{part}\hspace{1ex}—\hspace{1ex}\rightmark
 \else\fi\ifnum\value{subsubsection}>0\\Part \arabic{subsubsection}\hspace{1ex}—\hspace{1ex}\currentsubsubsection\else\fi}
  \makeoddhead{bill}{\Rightblock\footnotesize\itshape\bookname
   \ifnum\value{schedon}=1
\\ \itshape Schedule \arabic{subsection}\hspace{1ex}—\hspace{1ex}\currentsubsection \else\fi
  \ifnum\value{part}>0
\\Part \arabic{part}\hspace{1ex}—\hspace{1ex}\rightmark
 \else\fi\ifnum\value{subsubsection}>0\\Part \arabic{subsubsection}\hspace{1ex}—\hspace{1ex}\currentsubsubsection\else\fi}{}{\normalsize\thepage\ifnum\value{part}>0\\\else\fi\ifnum\value{schedon}=1\\\else\fi\ifnum\value{subsubsection}>0\vskip 12pt\else\fi}
 \makeoddfoot{bill}{}{}{}
%\renewcommand{\subsectionmark}[1]{#1}




%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% bill-first

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeheadrule{billfirst}{\textwidth}{1pt}
 \makeevenhead{billfirst}{\Firstblock\normalsize\thepage\ifnum\value{part}>0\\\else\fi\ifnum\value{schedon}=1\\\else\fi\ifnum\value{subsubsection}>0\vskip 12pt\else\fi}{}{\footnotesize\itshape\bookname
   \ifnum\value{schedon}=1
\\ \itshape Schedule \arabic{subsection}\hspace{1ex}—\hspace{1ex}\currentsubsection \else\fi
  \ifnum\value{part}>0
\\Part \arabic{part}\hspace{1ex}—\hspace{1ex}\rightmark
 \else\fi\ifnum\value{subsubsection}>0\\Part \arabic{subsubsection}\hspace{1ex}—\hspace{1ex}\currentsubsubsection\else\fi}
  \makeoddhead{billfirst}{\Firstblock\footnotesize\itshape\bookname
   \ifnum\value{schedon}=1
\\ \itshape Schedule \arabic{subsection}\hspace{1ex}—\hspace{1ex}\currentsubsection \else\fi
  \ifnum\value{part}>0
\\Part \arabic{part}\hspace{1ex}—\hspace{1ex}\rightmark
 \else\fi\ifnum\value{subsubsection}>0\\Part \arabic{subsubsection}\hspace{1ex}—\hspace{1ex}\currentsubsubsection\else\fi}{}{\normalsize\thepage\ifnum\value{part}>0\\\else\fi\ifnum\value{schedon}=1\\\else\fi\ifnum\value{subsubsection}>0\vskip 12pt\else\fi}
 \makeoddfoot{billfirst}{}{}{}
%\renewcommand{\subsectionmark}[1]{#1}



\renewcommand{\chaptermark}[1]{#1}
\cftpagenumbersoff{part}
\cftpagenumbersoff{chapter}
\cftpagenumbersoff{subsection}
\cftpagenumbersoff{subsubsection}
\renewcommand{\cftsubsectionpresnum}{\flushleft Schedule\hspace{1ex}}% Prefix to number for \subsection in ToC

\renewcommand{\cftsubsubsectionpresnum}{Part\hspace{1ex}}% Prefix to number for \subsection in ToC

\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\renewcommand{\cftsubsectionaftersnum}{\hspace{1ex}—\hspace{1ex}}
\renewcommand{\cftsubsubsectionaftersnum}{\hspace{1ex}—\hspace{1ex}}

\settocdepth{subsubsection}
\cftpagenumbersoff{section}
\makeatletter
\let\stdl@chapter\l@chapter
\renewcommand*{\l@chapter}[2]{\stdl@chapter{\centerline{#1}}{#2}}
\makeatother
\cftsetindents{subsection}{1.75cm}{10em}
\cftsetindents{subsubsection}{1.75cm}{10em}

\renewcommand{\cftsubsectionpresnum}{Schedule\hfill}
\renewcommand{\cftsubsectionaftersnum}{\quad—\quad}
\renewcommand{\cftsubsubsectionpresnum}{\qquad Part\hfill}
\renewcommand{\cftsubsubsectionaftersnum}{\quad—\quad}

%\setlength\cftsubsectionnumwidth{7.3em}
%\setlength\cftsubsubsectionnumwidth{4em}

\renewcommand{\title}{\printbilltitle}
\RequirePackage{changepage}   % for the adjustwidth environment
\renewcommand{\part}[1]{\stepcounter{part}\markright{#1}
\begin{center}
\printpartname\hspace{1ex}\arabic{part}\\
\printparttitle{#1}\normalfont\normalsize\\\end{center}
\addcontentsline{toc}{part}{\normalsize\bfseries\printpartname\hspace{1ex}\arabic{part}\normalfont\\
\centerline{\normalsize\normalfont\scshape\printparttitle{#1}}}
}
  \renewcommand\contentsname{CONTENTS}%

\renewcommand{\chapter}[1]{\stepcounter{chapter}\markright{#1}
\begin{center}
\itshape\printchaptertitle{#1}\normalfont\normalsize\\\end{center}
\addcontentsline{toc}{chapter}{\normalsize\itshape
\centerline{\normalsize\normalfont\itshape\printchaptertitle{#1}}}
}

\renewcommand{\partnamefont}{\normalfont\centering\bfseries\scshape}
\renewcommand{\parttitlefont}{\normalfont\centering\scshape}
\makeatletter
\renewcommand{\partnumberline}[1]{\hfil\hspace\@tocrmarg #1~}
\makeatother

\renewcommand{\partnumfont}{\normalfont\bfseries\centering\normalsize\scshape}
\renewcommand{\partnamenum}{\normalfont\bfseries\centering\normalsize\scshape}
\RequirePackage{setspace}
\renewcommand{\chapterheadstart}{\vspace*{\beforechapskip}}
\renewcommand{\printchaptername}{\chapnamefont \@chapapp}
\renewcommand{\chapternamenum}{\space}
\renewcommand{\printchapternum}{\chapnumfont \thechapter}
\renewcommand{\afterchapternum}{\par\nobreak\vskip \midchapskip}
\renewcommand{\printchapternonum}{}
\renewcommand{\chapterheadstart}{}
\renewcommand{\printchaptername}{}
\renewcommand{\chapternamenum}{}
\renewcommand{\printchapternum}{}
\renewcommand{\afterchapternum}{}
\setlength{\parskip}{0pt}
\renewcommand{\printchaptertitle}[1]{\chaptitlefont #1}
\renewcommand{\afterchaptertitle}{\par\nobreak\vskip \afterchapskip}
\renewcommand{\printtoctitle}[1]{\large\scshape\centerline{\MakeUppercase{#1}}}
\renewcommand{\chapnamefont}{\normalfont\centering\itshape}
\renewcommand{\chapnumfont}{\normalfont\centering\itshape}
\renewcommand{\chaptitlefont}{\normalfont\centering\itshape}

\setlength{\beforechapskip}{12pt}
\setlength{\midchapskip}{0pt}
\setlength{\afterchapskip}{12pt}
\setbeforesecskip{-1em}
\setaftersecskip{-1em}
\setbeforesubsecskip{-1em}
\setaftersubsecskip{-1em}
\renewcommand*{\thesection}{\arabic{section}}
\setsecnumformat{\csname the#1\endcsname\hspace{5ex}}
%\setsubsecnumformat{\csname the#1\endcsname\hspace{5ex}}
%\setsubsecheadstyle{\bfseries}
%\setsubsecheadstyle{\scshape\centering}
%\setsubsectionnumformat{SCHEDULE\quad\csname the#1\endcsname\newline}
\RequirePackage[compact]{titlesec}
\titleformat{\subsection}[display]
  {\normalfont\centering\scshape}{SCHEDULE \hspace{2ex }\thesubsection}{5pt}{}
\titleformat{\subsubsection}[display]
  {\normalfont\centering\scshape}{Part \thesubsubsection}{5pt}{}

\setsecheadstyle{\centering\bfseries}
\renewcommand{\part}[1]{\stepcounter{part}\markright{#1}
\begin{center}
\normalfont\normalsize\itshape\printchaptertitle{#1}\normalfont\normalsidze\\\end{center}
\addcontentsline{toc}{chapter}{
\centerline{\normalsize\normalfont\itshape\printchaptertitle{#1}}}
}
\RequirePackage{fontspec}
\IfFontExistsTF{Palatine Parliamentary}{
\setmainfont[
Scale=.98, 
SmallCapsFeatures={LetterSpace=10,RawFeature={+smcp,},},
BoldFeatures = {SmallCapsFont= {PalatineP-Bold},SmallCapsFeatures={%
RawFeature={+smcp,}%
}},
BoldFont={PalatineP-Bold}, 
 ItalicFont={PalatineP-Italic},
 BoldItalicFont={PalatineP-BoldItalic}]{PalatineP-Regular}
\newfontface{\extfont}[SmallCapsFont={Times New Roman}]{Times New Roman}}{\ClassWarning{Please install the Palatine Parliamentary Font}}

\RequirePackage[english]{babel}
%\RequirePackage{csquotes}
%\MakeOuterQuote{"}
%%\DeclareQuoteStyle{english}%
%%    {{\extfont\textquotedblleft}}
%%    [\extfont\textquotedblleft]
%%    {{\extfont\textquotedblright}}
%%        [0.05em]
%%    {{\extfont\textquoteleft}}
%%    [{\extfont\textquoteleft}]
%%    {{\extfont\textquoteright}}
\RequirePackage{enumitem}
\newenvironment{statquote}%
{
\begin{list}{}%
{%
\setlength{\topsep}{0ex}%
\setlength{\partopsep}{0ex}%
\setlength{\parsep}{0.5ex}%
\setlength{\itemsep}{i}%
\addtolength{\leftmargin}{3em}%
\addtolength{\rightmargin}{3em}%
}%
\item[]}%
{\end{list}}
\renewenvironment{nostat}{\begin{enumerate}[leftmargin=1.7cm,labelindent=15pt,itemindent=0pt,label=]}{\end{enumerate}}
{%
%\vspace{-9ex}%
\begin{enumerate}[nosep,partopsep=0pt,
%parsep=0.5ex,
%itemsep=1ex,
labelsep=3ex,
leftmargin=4em,rightmargin=1.5em,label=(\arabic*)]%
\item[]}%
{\end{enumerate}%
\vspace{1ex}\normalfont}%
\newenvironment{schumstat}%
{%
%\vspace{-9ex}%
\begin{enumerate}[nosep,partopsep=0pt,
%parsep=0.5ex,
itemsep=0ex,
labelsep=0ex,
leftmargin=0em,rightmargin=0em,label=]%
\item[]}%
{\end{enumerate}%
\vspace{1ex}\normalfont}%

\newcounter{alphcount}

\newenvironment{instatquote}%
{%
\setcounter{alphcount}{0}
\vspace{-3ex}%
\begin{list}{}%
{%
\setlength{\topsep}{0ex}%
\setlength{\partopsep}{1ex}%
\setlength{\parsep}{0.5ex}%
\setlength{\itemsep}{0ex}%
}%
\item[]}%
{\end{list}%
}%
\newenvironment{alphstat}%
{%
\vspace{-3ex}%
\begin{enumerate}[leftmargin=7.5ex,topsep=0ex,partopsep=1ex,parsep=0.5ex,itemsep=0ex,labelsep=3ex,label=({\alph*})]%

\item[]}%
{\end{enumerate}%
}%
\newenvironment{romstat}%
{%
\vspace{-3ex}%
\begin{enumerate}[topsep=0ex,partopsep=1ex,parsep=0.5ex,itemsep=0ex,label=(\roman*)]%

\item[]}%
{\end{enumerate}%
}%
\newenvironment{twoalphstat}%
{%
\vspace{-3ex}%
\begin{enumerate}[leftmargin=7.5ex,topsep=0ex,partopsep=1ex,parsep=0.5ex,itemsep=0ex,labelsep=3ex,label=({\alph*}{\alph*})]%

\item[]}%
{\end{enumerate}%
}%

\newcommand*\statquotelabel[1]{}

\newcommand{\stat}[2]{
\item[(#1)]#2
}

\newcommand{\stathead}[2]{
\textbf{#1}\hspace{5ex}\textbf{#2}
}




\setlength{\parindent}{0pt}
\RequirePackage{lettrine}
\setcounter{DefaultLines}{2}
%\renewcommand{\DefaultLraise}{0.05}
%\renewcommand{\DefaultLoversize}{.07}
%\renewcommand{\LettrineFontHook}{\initials}
%\RequirePackage{initials}
%\RequirePackage{Romantik}%\romantik{} 
%\RequirePackage{Royal}%\royal

\newcommand{\intl}[2]{\lettrine{#1}{\hspace{1ex}\textsc{#2}}}
\renewcommand{\maketitle}{\thispagestyle{front}
  \begin{center}
  {\Huge\textbf{\title}}\\\rule{\textwidth}{1pt}\\\rule[16pt]{\textwidth}{2pt}
  \end{center}
  }
  \newcommand{\schedule}[1]{\subsection{#1}}
\newcounter{schedon}
\setcounter{schedon}{0}

\newcommand{\currentsubsection}{}
\let\oldsubsection\subsection
\renewcommand{\subsection}[1]{\oldsubsection{#1}\renewcommand{\currentsubsection}{#1}}

\newcommand{\currentsubsubsection}{}
\let\oldsubsubsection\subsubsection
\renewcommand{\subsubsection}[1]{\oldsubsubsection{#1}\renewcommand{\currentsubsubsection}{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% enacting
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\enactingformula}{
\intl{B}{e it enacted} by the King's most Excellent Majesty, by and with the advice and consent of the Lords Spiritual and Temporal, and Commons, in this present Parliament assembled, and by the authority of the same, as follows:---}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%enacting option
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{private}{
\makeatletter
\renewcommand{\enactingformula}{
\intl{W}{hereas}---

\hspace{2em}\begin{minipage}{.75\textwidth}

\printwhereas
\end{minipage}

\medskip

\intl{M}{ay} it therefore please Your Majesty that it may be enacted, and be it enacted, by
the King’s Most Excellent Majesty, by and with the advice and consent of the Lords
Spiritual and Temporal, and Commons, in this present Parliament assembled, and by
the authority of the same, as follows:―
}


\makeatother

}

\ProcessOptions\relax


%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% begindoc
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{\emergencystretch 3em
\sloppy
\OnehalfSpacing
\pagestyle{front}
\pagenumbering{roman}
\maketitle
\medskip
\extfont
\begin{center}\scshape\MakeUppercase{\printexptitle}\end{center}

\printexptext
\medskip

\begin{center}\scshape EUROPEAN CONVENTION ON HUMAN RIGHTS\end{center}

\printhumanrights
\normalfont
\clearpage\maketitle
\begin{KeepFromToc}
\normalfont\normalsize
\tableofcontents
\end{KeepFromToc}

\vskip 3ex
\mainmatter
\pagenumbering{arabic}
\pagestyle{bill}\thispagestyle{billfirst}
\begin{center}
	\scshape a
	\medskip
	
	\normalfont\Huge\bfseries B\hspace{.5ex}I\hspace{.5ex}L\hspace{.5ex}L
	
	\medskip
	
	\normalfont\normalsize\scshape to\normalfont
	
\end{center}

	\medskip

\noindent\footnotesize\extfont\printbillto\normalsize \normalfont

\medskip 

\enactingformula

\medskip



}


\AtEndDocument{\cleardoublepage


    \setcounter{page}{0}
    \pagenumbering{arabic}
    \setcounter{page}{1}
\thispagestyle{front}

  \begin{center}
  {\Huge\textbf{\title}}\\\rule{\textwidth}{1pt}\\\rule[16pt]{\textwidth}{2pt}
  \end{center}

\begin{center}
	\normalfont\scshape a
	\medskip
	
	\normalfont\Huge\bfseries B\hspace{.5ex}I\hspace{.5ex}L\hspace{.5ex}L
	
	\vskip 3ex
	\end{center}
	
\normalsize To make provision in connection with the citizens of certain Commonwealth Realms
	
	\vskip 3ex
	\begin{center}
	
\normalsize\normalfont\itshape	Presented by \printdrafter

\vskip 3ex

\rule{.45\textwidth}{1pt}
\vspace{1ex}

\begin{minipage}{.4\textwidth}\centering
\itshape Ordered, by\normalfont\ \printdrafter\itshape\ to be Printed, \normalfont 19\itshape th March \normalfont 2020\itshape.
\end{minipage}

\vspace{1ex} 

\rule{.45\textwidth}{1pt}

\vskip 5ex

\normalfont\footnotesize\printbillcopyright


\vskip 1ex 

\normalfont\scshape\MakeUppercase{Published By \printpublishedby}
\end{center}
}
