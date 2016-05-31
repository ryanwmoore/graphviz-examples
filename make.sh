(
  echo "digraph G {" &&
  ps xo ppid,pid,cmd |
    tail -n +2 |
    awk 'BEGIN{OFS="->"} { print $1, $2; print $2 "[label=\"" $3 "\"]"}' &&
        echo "1[label=\"init (PID #1)\"]"
  echo "}"
) > processes.dot

for graph in *.dot
do
    OUTNAME=$(basename "${graph}" .dot).pdf
    echo "Processing ${graph} to ${OUTNAME}"
    dot -Tpdf "${graph}" > "${OUTNAME}"
done

