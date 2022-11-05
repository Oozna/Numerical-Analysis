(TeX-add-style-hook
 "instructions2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish") ("hyperref" "hidelinks") ("parskip" "parfill") ("geometry" "margin=1in") ("biblatex" "style=ieee" "backend=biber")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "amsmath"
    "amssymb"
    "babel"
    "graphicx"
    "float"
    "hyperref"
    "fancyhdr"
    "parskip"
    "geometry"
    "listings"
    "xcolor"
    "biblatex"
    "csquotes")
   (TeX-add-symbols
    "getauthor"
    "gettitle"
    "getcourse"
    "getsupervisor")
   (LaTeX-add-labels
    "sec:2b"
    "eqn:normf"
    "eqn:tarning_medel"
    "eqn:varians"
    "eqn:stdev"
    "eqn:integral"
    "eqn:integral_mc"
    "eqn:komplexitet"
    "eqn:loggad")
   (LaTeX-add-bibliographies
    "../sources")
   (LaTeX-add-listings-lstdefinestyles
    "mystyle")
   (LaTeX-add-xcolor-definecolors
    "codegreen"
    "codegray"
    "codepurple"
    "backcolour"))
 :latex)

