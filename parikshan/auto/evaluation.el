(TeX-add-style-hook
 "evaluation"
 (lambda ()
   (TeX-run-style-hooks
    "microCloneEval"
    "realWorldCloneEval"
    "windowEval"
    "bugTriggerEval")
   (LaTeX-add-labels
    "sec:evaluation"
    "sec:performance"
    "sec:overhead"
    "table:clonePerf"
    "fig:fioResults"))
 :latex)

