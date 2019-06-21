% main.cls


% --- Class structure: identification part
% ---
\ProvidesClass{main}
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: declaration of options part
% ---
% This class extends the article class
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption*{\InputIfFileExists{\CurrentOption.main}{}{\PassOptionsToClass{\CurrentOption}{article}}}

% --- Class structure: execution of options part
% ---
\ProcessOptions \relax

% --- Class structure: declaration of options part
% ---
\LoadClass{article}

% Page layout
\RequirePackage{geometry}
\geometry{
	a4paper,
	left=1in,
	right=1in,
	top=1in,
	bottom=1in
}

% Font family
 \renewcommand{\familydefault}{\sfdefault}
 \renewcommand{\baselinestretch}{1.0}
 \setlength{\parindent}{2em}
 \setlength{\parskip}{0.8em}
 
 % Header and footer
 \RequirePackage{fancyhdr}
 \fancypagestyle{plain}{
 	\fancyhf{}
 	\lfoot{Confidential}
	\rfoot{Page \thepage}
 }
\renewcommand{\headrulewidth}{0pt} 
\pagestyle{plain}

% Title style
\RequirePackage{titling}
\setlength{\droptitle}{-5em}
\pretitle{
	\begin{center}
		\huge
}
\posttitle{
	\end{center}
}

\preauthor{
	\begin{center}
		\large 
		\it
}
\postauthor{
	\end{center}
	\vskip -1em
	\noindent\vrule height 0.2pt width \textwidth
}
\date{}
\predate{
}
\postdate{
}