cwlVersion: v1.0
class: CommandLineTool
baseCommand: ["bedtools bamtobed"]

inputs:
  bamFileControl:
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
  bedFileControl:
		type: File
		outputBinding: 
			glob: *.bed