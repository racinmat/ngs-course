
# count features per chromosome
INPUT=data/Ensembl.NCBIM37.67.bed
<$INPUT cut -f1 | sort | uniq -c
<data/HRTMUOC01.RL12.00.fastq paste - - - - | awk '(length($2) > 100)' | tr '\t' '\n' | head