%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------

\ProvidesClass{resume_config}[2023 v1.0 resume_config]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------

\LoadClass[11pt]{article} % adjust font size here

%-------------------------------------------------------------------------------
%                Packages
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{color}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}

\RequirePackage{fancyhdr}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[normalem]{ulem}

\RequirePackage{etoolbox,refcount}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\RequirePackage{xparse}
\RequirePackage{relsize}
\usepackage{graphicx}


\setmainfont{texgyreheros}[
  UprightFont = *-regular,
  BoldFont = *-bold,
  ItalicFont = *-italic,
  BoldItalicFont = *-bolditalic,
  Extension = .otf
]


% Additional fonts can be found at the following URL: https://www.draketo.de/anderes/latex-fonts.html#org9f59ea3

%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=a4paper,
    top=0.25in, 
    bottom=0.25in,
    left=0.3in, 
    right=0.3in, 
    headheight=0.5cm,
    footskip=0.3cm,
    headsep=0.3cm
}

% section title format
\titleformat{\section}%
    {\vspace{-4pt}\scshape\raggedright\large\bfseries}% format
    {}% label
    {0em}% space between label and title
    {}% before code
    [\color{NavyBlue}\titlerule\vspace{-5pt}]% after code

%-------------------------------------------------------------------------------
%                Custom Commands
%-------------------------------------------------------------------------------

\newcommand*{\CustomBullet}{%
    \hspace{0.1em}%
    \raisebox{-0.1em}{\scalebox{1.4}{$\cdot$}}%
    \hspace{0.1em}%
}


\NewDocumentCommand{\Header}{m m m m m m }{
    \fancyhf{}
    \begin{center}
        {\Huge\textbf{\textsc{\textcolor{NavyBlue}{#1}}}}\\[3pt]
        \textcolor{black}{
            % Line 1: Phone, Email, LinkedIn
            #2 \CustomBullet \href{mailto:#3}{#3} \CustomBullet \href{https://linkedin.com/in/#4}{linkedin.com/in/#4}
        }\\[2pt]
        \textcolor{black}{
            % Line 2: GitHub and Portfolio
            \href{https://github.com/#6}{github.com/#6} \CustomBullet \href{https://#5}{#5}
        }
    \end{center}
    \vspace{-15pt}
}


\newcommand{\WorkExperience}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2 & #4 \\
    \end{tabular*}
    
    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1em]
        #5
    \end{itemize}
}

\newcommand{\Certification}[3]{
    \noindent
    \textbf{#1} $|$ {#2}\hfill \textit{#3}\\
}

\newcommand{\EducationExperience}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
    \textbf{#1} & \textit{#3} \\
        #2 & #4 \\
    \end{tabular*}
}

\newcommand{\SkillItem}[2]{\item \textbf{#1}{#2}}

\newcommand{\SkillList}[1]{
    \begin{itemize}[label={}, itemsep=-0.2em, leftmargin=0em]
                #1
        \end{itemize}
}

% Body link style with subtle underline
\renewcommand{\ULthickness}{0.6pt}
\setlength{\ULdepth}{1.5pt}
\newcommand{\bodylink}[2]{\href{#1}{\textcolor{NavyBlue}{\uline{\textcolor{black}{#2}}}}}
