\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{majorproblem}[2024/04/30 Major Problems in American History Class]
\LoadClass[openany]{book}


\RequirePackage[paperwidth=6in, paperheight=9in, lmargin=0.5in, rmargin=0.5in, tmargin=1in, bmargin=0.5in, bindingoffset=0.25in, headheight=0.5in, footskip=0.25in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{rotating}
\RequirePackage{letterspace}
\RequirePackage{blindtext}
\RequirePackage[hang, flushmargin]{footmisc}
\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage{nccfoots}
\RequirePackage[footmarkoff,backend=biber]{biblatex-chicago}
\pagestyle{fancy}
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footnoterule}{%
	\kern -3pt
	\hrule width 0.5in
	\kern 2.6pt
}

\fancyhead[RO]{\mbox{\rightmark\hspace{3em}\textbf{\thepage}}}
\fancyhead[LE]{\textbf{\thepage}\hspace{3em}\leftmark}
\fancyfoot{}

\fancypagestyle{plain}{%
	\fancyhf{}%
	\fancyfoot[C]{\textbf{\thepage}}}

\titlespacing{\chapter}{0pt}{1em}{6em}[0pt]
\titleformat{\chapter}[display]{\normalfont\large\filcenter\rmfamily}{
	\textbf{\large\MakeUppercase{\chaptertitlename} \thechapter}\\%
	\vspace{0.5em}%
	\titleline[c]{\hspace{0.3\textwidth}\titlerule\hspace{0.3\textwidth}}%
	\vspace{0.5em}%
	\includegraphics[height=1.5em]{clover.eps} \\}{1em}{\Huge}

\titlespacing*{\section}{-2.3em}{1.5em}{1.5em}[0pt]
\newcommand{\secformat}[1]{\MakeUppercase{\textls[150]{#1}}}
\titleformat{\section}[hang]{\normalfont\Large\bfseries}{}{0em}{\includegraphics[totalheight=1em]{clover.eps}\hspace{0.5em}\Large\secformat}[\titleline{\hspace{2.3em}\titlerule}]

\titlespacing*{\subsection}{0.1\textwidth}{1em}{1em}[0.1\textwidth]
\titleformat{name=\subsection}[hang]{\normalfont\large\bfseries\filcenter}{\arabic{subsection}. }{0em}{\large}
\titleformat{name=\subsection, numberless}[block]{\normalfont\large\bfseries\filcenter}{}{0em}{\large}

\newcommand\smaller[2][0.85]{{\scalefont{#1}#2}}
\newcommand{\amhchapter}[1]{\chapter{#1}%
	\markboth{\smaller{CHAPTER \arabic{chapter}}}{\smaller{\MakeUppercase{#1}}}}
\newcommand{\seccite}[1]{\Footnote{}{\fullcite{#1}}\ignorespaces}
\newcommand{\textbe}[1]{\textbf{\emph{#1}}}

\newenvironment{itsec}
{\par\itshape\ignorespaces}
{\par\ignorespacesafterend}
\newcommand{\addprimarybib}[1]{%
	\addbibresource{#1}%
	\DeclareSourcemap{
		\maps[datatype=bibtex]{
			\map[overwrite]{
				\perdatasource{#1}
				\step[fieldset=keywords, fieldvalue={,nobib}, append]
			}
		}
	}
}
\newcommand{\addfurtherreadingbib}[1]{\addbibresource{#1}%
	\DeclareSourcemap{
		\maps[datatype=bibtex]{
			\map[overwrite]{
				\perdatasource{#1}
				\step[fieldset=keywords, fieldvalue={,inbib}, append]
			}
		}
}}


\newcommand{\printfurtherreadingbib}{\nocite{*}\printbibliography[heading=none, notkeyword=nobib, keyword=inbib]}
