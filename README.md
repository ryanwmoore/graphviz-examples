#Graphviz Demos

These files were made for brief discussion during a lunch and learn. The
documentation is intentionally sparse.

See http://www.graphviz.org/ for better examples.

## Build Instructions

In Linux, run: `./make.sh`

## Contents

`simple-fsm.dot`: A sample FSM, showing how Graphviz can be useful to draw out
processes and/or debug code.

`processes-sample.dot`: A programmatically built graph, to show how Graphviz
can be used to visualize otherwise hard-to-understand dynamic information. When
you run `./make.sh`, a `processes.dot` will be produced from the processes you
are currently running.
