bedtools bamtobed -bedpe -i $sample.bam > $sample.bed
awk '$1==$4 && $6-$2 < 1000 {print $0}' $sample.bed > $sample.clean.bed
cut -f 1,2,6 $sample.clean.bed > $sample.fragments.bed
bedtools genomecov -bg -i $sample.fragments.bed -g my.genome > $sample.fragments.bedgraph

cwlVersion: v1.0
class: CommandLineTool
baseCommand: ["bedtools bamtobed"]

inputs:
  bamFile:
    type: File 
    inputBinding:
      position: 1
      prefix: --bam-file

  bedpe:
    type: boolean
    inputBinding:
      position: 2
      prefix: --bedpe     #Write BAM alignments in BEDPE format. 

outputs:
  bedFile:
		type: File
		outputBinding: 
			glob: *.bed



  