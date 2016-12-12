(TeX-add-style-hook
 "design"
 (lambda ()
   (TeX-run-style-hooks
    "clone"
    "proxyDup"
    "proxyAgg"
    "window"
    "divergence")
   (LaTeX-add-labels
    "fig:workflow"
    "sec:design"))
 :latex)

