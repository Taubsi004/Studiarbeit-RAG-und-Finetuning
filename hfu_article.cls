% Theme for the Hochschule Furtwangen University
% Version 1
% https://git.unfug.hs-furtwangen.de/weva/HFU-Article

\LoadClass[a4paper,12pt, titlepage]{article}

\RequirePackage[onehalfspacing]{setspace}

\RequirePackage{xltxtra}
\setsansfont{Liberation Sans Narrow}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{amsmath}

\RequirePackage{graphicx}

\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}

\RequirePackage[backend=biber,style=authoryear]{biblatex}
\RequirePackage{csquotes}

\RequirePackage{dblfnote}


\RequirePackage[most]{tcolorbox}
\definecolor{hfu-lightgray}{rgb}{0.85 0.86 0.86}
\definecolor{hfu-apfelgruen}{rgb}{0.46 0.72 0}
\newtcolorbox{task}{colback=hfu-lightgray!50!white,colframe=hfu-apfelgruen,boxrule=0pt,leftrule=1mm,boxsep=0pt,breakable,sharp corners}

\setcounter{biburllcpenalty}{9000}% Kleinbuchstaben
\setcounter{biburlucpenalty}{9000}% Großbuchstaben

\setlength{\parskip}{1ex}
\setlength{\parindent}{0em}

\def\@course{}
\newcommand{\course}[1]{\def\@course{#1}}

\renewcommand{\HyOrg@maketitle}{
    \begin{titlepage}
        \let \footnotesize \small
        \let \footnoterule \relax
        \let \footnote \thanks
        \null
        {\raggedleft \includegraphics[width=6cm]{Logo_HFU_CMYK_Anthrazit_Gruen.eps} \par}
        \vfil
        \vskip 60\p@
        \begin{center}
            {\LARGE \@title \par}
            \vskip 3em
            {
                \large
                \lineskip .75em
                \begin{tabular}[t]{c}
                    \@author
                \end{tabular}
                \par
            }
            \vskip 1.5em
            {\large \@course \par}
            \vskip 1.5em
            {\large \@date \par}
        \end{center}
        \par
        \@thanks
        \vfil
        \null
    \end{titlepage}
    \setcounter{footnote}{0}
    \global \let \thanks \relax
    \global \let \maketitle \relax
    \global \let \@thanks \@empty
    \global \let \@author \@empty
    \global \let \@date \@empty
    \global \let \@title \@empty
    \global \let \title \relax
    \global \let \author \relax
    \global \let \date \relax
    \global \let \and \relax
}
