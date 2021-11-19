\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{yuki}[28/07/2003 v0.0.9 Plantilla para hacer libritos de tamaño A5, especiales para tablaturas.]

%\DeclareOption{borrador}{%
%\PassOptionsToPackage{draft}{graphicx}
%\PassOptionsToPackage{hyperref}{draft}
%}

\ProcessOptions
\LoadClass[10pt,a4paper,twoside,openany]{scrbook}
\RequirePackage[ansinew]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{multicol}
%\RequirePackage{scrpage}
\RequirePackage{titlesec}
%\RequirePackage{url}
%\RequirePackage{fancybox}
%\RequirePackage{tabularx}
\RequirePackage[pdftex]{graphicx}
\RequirePackage[absolute]{textpos}
\RequirePackage{ifthen}
\RequirePackage[pdftex]{color}
%\RequirePackage{fancyvrb}
%\RequirePackage{amssymb}
%\RequirePackage{multibib}
%\RequirePackage[hypertexnames=false,pdftex=true,colorlinks=true,linkcolor=blue,bookmarks=true]{hyperref}
\RequirePackage[pdftex, twoside, paper=a4paper,includemp=false]{geometry}


%%
%% PORTADA
%%

% Datos de la portada
\newcommand{\autor}[1]{\def\@autor{#1}}
\newcommand{\titulo}[1]{\def\@titulo{#1}}
\newcommand{\anio}[1]{\def\@anio{#1}}
\newcommand{\volumen}[1]{\def\@volumen{#1}}
%\newcommand{\descriptores}[1]{\def\@descriptores{#1}}

%\AtBeginDocument{%
%\ifthenelse{\equal{\@autorDos}{}}{\def\@autores{\@autorUno}}{\def\@autores{\@autorUno{} y \@autorDos}}
%\hypersetup{pdftitle={\@titulo},pdfauthor={\@autor}}
%\hypersetup{pdfsubject={Libro de Tablaturas a tamaño A5paper},pdfkeywords={\@anio}}
% Aparecen todas las fuentes, no solo las que citemos explicitamente en el texto
%\nocite{*}
%\nociteotras{*}
%}

% Para dibujar una box de un ancho y alto especifico
%\newcommand\xyparbox[4][c]{\mbox{%
%  \dimen0=2\fboxrule\advance\dimen0 2\fboxsep
%  \dimen1=#2\advance\dimen1 -\dimen0
%  \dimen2=#3\advance\dimen2 -\dimen0
%  \parbox[#1][\dimen2][c]{\dimen1}{#4}}}
	
%%
%% FORMATO DE LA PAGINA
%%

% Margenes absurdos
\geometry{left=2.5cm}
\geometry{right=2cm}

\geometry{top=2.5cm}
%\geometry{headheight=2cm} %Supongo que esto sera para la cabecera YUKI
\geometry{headsep=1cm}

\geometry{bottom=2.5cm}
%\geometry{footskip=1.75cm} %Para el pie de pagina???? YUKI


% Comando que dibuja la portada
\newcommand{\hacerportada}{%
\begin{titlepage}
% YUKI: La siguiente linea tiene miga: 
%    \begin{texblock*}{ancho_maximo_del_texto}(donde_comienza_desde_la_izquierda, donde_comienza_desde_arriba)
\begin{textblock*}{13cm}(4.3cm,10cm)%
\centering%
%\xyparbox{9cm}{9cm}{%
\centering\Huge %\sffamily\Large
\textsc{\@titulo{}}\\ %para que salga en versalles
\vspace{3ex}
\huge\textsc{Volumen \@volumen{}}\\
\vspace{3ex}
\Large\textsc{by \@autor{}}\\
%\vspace{0.8ex}
%\parbox{10cm}{\bf\centering\sffamily\Large\@titulo}\\
%\vspace{2ex}
\large\textsc{(\@anio)}\\
%\ifthenelse{\equal{\@autorDos}{}}{}{%
%\vspace{1ex}
%\@autorDos{} (\@DNIDos)\\
%}
%\vspace{1ex}
%Director: \@director\\
%\vspace{1ex}
%Mayo de 2003\\
%}
\end{textblock*}
\end{titlepage}
}



%%
%% RESUMEN
%%

%De momento todo comentado YUKI

% Comando que crea la página resumen
%\newcommand{\hacerresumen}{%
%\cleardoublepage
%\subsection*{Resumen}
%\@resumen
%\subsection*{Descriptores}
%\@descriptores
%}


% Esta es la tabla que aparece en la cabecera
%YUKI: Y como no quiero que aparezca, la quito :D
%\newcommand{\tablacabecera}{%
%\begin{tabularx}{\textwidth}{|c|>{\centering\arraybackslash}X|p{0.8in}|}
%\hline 
%\begin{minipage}{4cm} \vspace{5pt}\includegraphics[height=1.60cm]{logo.png} \vspace{5pt} \end{minipage} 
%&  
%{\sf \headmark}   
%&
%\begin{minipage}[c]{0.8in} \centering\sf\small Proyecto Fin de Carrera \end{minipage}
%\\ \hline 
%\end{tabularx}%
%}

% Creamos un estilo de página corporativo - UD
%Tampoco quiero que salga, asi que a quitar... 
%\newpagestyle{CabeceraPFC}
% Definicion de la cabecera:
%{(0pt,0pt){\tablacabecera}{\tablacabecera}{\hfill\headmark\hfill}(0pt,0pt)}%
% Definición del pie de pagina:
%{(0pt,0pt){\pagemark\hfill}{\hfill\pagemark}{\hfill\headmark\hfill}(0pt,0pt)}

% Redefinimos el estilo de página "plain", que es el que aparece
% en las 'primeras páginas' de capitulos, etc. En principio, es
% exactamente igual que la anterior.
%\renewpagestyle{plain}%
% Definicion de la cabecera:
%{(0pt,0pt){\tablacabecera}{\tablacabecera}{\hfill\headmark\hfill}(0pt,0pt)}%
% Definición del pie de pagina:
%{(0pt,0pt){\pagemark\hfill}{\hfill\pagemark}{\hfill\headmark\hfill}(0pt,0pt)}

% Por defecto, estilo de página corporativo
%\pagestyle{CabeceraPFC}

% Esto es para que no aparezca el numero de página en las páginas en blanco.
% YUKI: ESTO TENDRË QUE MIRARLO; PORQUE PUEDE INTERESAR :D
%\makeatletter
%\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
%  \hbox{}
%  \vspace*{\fill}
%  \vspace{\fill}
%  \thispagestyle{empty}
%  \newpage
%  \if@twocolumn\hbox{}\newpage\fi\fi\fi}
%\makeatother



%%
%% ENCABEZADOS DE SECCIONES
%%

% Redefinimos el formato de \chapter
\renewcommand{\thechapter}{\arabic{chapter}}
\titleformat{\chapter}[display]
  {\bfseries\center}%	\small\center}
  {}      %\Huge\thechapter}
  %esta distancia es entre el margen superior de la hoja y el titulo del capitulo
  {-4cm}
{\huge}
%Esta distancia es entre el capitulo y la seccion
[\vspace{-1cm}]


% Redefino el formato de \section
\titleformat{\section}[block]{\normalfont\center\sffamily\Large}{}{0em}{\bfseries}[\titlerule]
%esto tambien se las trae XD
%\titlespacing*{\section}{distancia_desde_el_lado_izquiero}{distancia_entre_parrafos}{distancia entre seccion y lo siguiente que va a aparecer}
\titlespacing*{\section}{0pt}{*4}{0.2cm}

% Redefino el formato de \subsection
\titleformat{\subsection}[block]{\normalfont\center\sffamily\large}{\thesubsection}{.5em}{\bfseries}
\titlespacing*{\subsection}{0pt}{*4}{*1}


% Redefino el formato de \subsubsection
%\titleformat{\subsubsection}[block]{\normalfont\sffamily\normalsize}{}{0pt}{$\,\blacksquare\;\;\;$\bfseries}
%\titlespacing*{\subsubsection}{0pt}{*4}{0.5ex}



%%
%% COMANDOS
%%

% Estas definiciones son para el comando \figura
%\newlength{\anchoFigura}
%\newlength{\anchoFloat}
%\addtolength{\fboxsep}{2\fboxsep}
%\renewcommand{\capfont}{\normalfont\normalcolor\sffamily\small}
%\renewcommand{\caplabelfont}{\normalfont\normalcolor\sffamily\bfseries\small}

% El comando \figura nos permite insertar figuras comodamente, y utilizando
% siempre el mismo formato. Los parametros son:
% 1 -> Porcentaje del ancho de página que ocupará la figura (de 0 a 1)
% 2 --> Fichero de la imagen
% 3 --> Texto a pie de imagen
% 4 --> Etiqueta (label) para referencias
% 5 --> Opciones que queramos pasarle al \includegraphics
%\newcommand{\figura}[5]{%
%  \setlength{\anchoFloat}{#1\textwidth}%
%  \addtolength{\anchoFloat}{-4\fboxsep}%
%  \setlength{\anchoFigura}{\anchoFloat}%
%  \begin{figure}%
%    \begin{center}%
%      \Ovalbox{%
%        \begin{minipage}{\anchoFloat}%
%          \begin{center}%
%            \includegraphics[width=\anchoFigura,#5]{#2}%
%            \caption{#3}%
%            \label{#4}%
%          \end{center}%
%        \end{minipage}
%      }%
%    \end{center}%
%  \end{figure}%
%}

% El comando \figuraSinMarco es igual que \figura, pero no pone marco a la figura.
% Viene bien para diagramas grandes.
%\newcommand{\figuraSinMarco}[5]{%
%  \begin{figure}%
%    \begin{center}%
%    \includegraphics[width=#1\textwidth,#5]{#2}%
%    \caption{#3}%
%    \label{#4}%
%    \end{center}%
%  \end{figure}%
%}

% Referencia a una figura
%\newcommand{\ver}[1]{(ver figura~\ref{#1})}



% Para escribir extractos de codigo
%
% Las tabulaciones se substituyen por dos espacios
%\fvset{tabsize=2}
% Creamos un nuevo environment de fancyvrb para los ejemplos enmarcados
%\DefineVerbatimEnvironment{VerbEj}{BVerbatim}{fontsize=\small,samepage=true,commandchars=\\\{\}}
% Colo de fondo
%\definecolor{grisfondo}{gray}{0.9}
% Environment para extractos de codigo
%\newenvironment{codigo}%
%{\VerbatimEnvironment\begin{Sbox}\begin{VerbEj}}%
%{\end{VerbEj}\end{Sbox}\setlength{\fboxsep}{8pt}\begin{center}\fcolorbox{black}{grisfondo}{\TheSbox}\end{center}}


% Para el preambulos de los capitulos
%\newenvironment{precapitulo}%
%{\begin{center}\begin{quote}\sffamily}%
%{\end{quote}\end{center}}


%%
%% Miscelanea
%%

% Esto es para que los primeros parrafos no esten indentados
%\makeatletter
%\let\@afterindenttrue\@afterindentfalse
%\@afterindentfalse
%\makeatother

% Definimos el nivel de detalle del índice: \section
%\setcounter{tocdepth}{1}

% Redefinimos el nombre de las tablas.
% En babel está traducido por 'Cuadro' :-?
%\addto\captionsspanish{\renewcommand{\tablename}{Tabla}}
%\addto\captionsspanish{\renewcommand{\listtablename}{Índice de tablas}}


%\newcites{otras}{Bibliografia (Otras fuentes documentales)}

% Comandos para insertar comodamente las dos bibliografias de la memoria:
% la de libros y articulos, y la de 'otras fuentes'.
%\newcommand{\bibliografia}[1]{%
%\cleardoublepage \addcontentsline{toc}{chapter}{Bibliografía (Libros y artículos)}
%\renewcommand{\bibname}{Bibliografía (Libros y artículos)}
%\bibliographystyle{aalphaurl}
%\bibliography{#1}
%}

%\newcommand{\bibliografiaOtras}[1]{%
%\cleardoublepage \addcontentsline{toc}{chapter}{Bibliografía (Otras fuentes documentales)}
%\renewcommand{\bibname}{Bibliografía (Otras fuentes documentales)}
%\bibliographystyleotras{plainurl}
%\bibliographyotras{#1}
%}



% El estilo de bibliografia es plain con extensiones para poder citar URLs
%\bibliographystyle{plainurl}
