for graph in *.dot
do
    dot -Tpdf "${graph}" > $(basename "${graph}" .dot).pdf
done

