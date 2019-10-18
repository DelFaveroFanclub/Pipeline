bash SEACR_1.1.sh experimental bedgraph [control bedgraph | numeric threshold] ["norm" | "non"] 
["relaxed" | "stringent"] output prefix


cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["bash SEACR_1.1.sh"]
inputs:
	experimentalBedgraph:
		type: File
		inputBinding:
			position: 1
			prefix: --experimental-bedgraph

	controlBedgraph:
		type: File
		inputBinding:
			position: 2
			prefix: --control-bedgraph

  normalization
		type: string
		default: "norm"
		inputBinding:
			position: 3
			prefix: --normalization

  mode
    doc: can be "relaxed" or "stringent"
    type: string
    inputBinding:
      position: 4
      prefix: --mode

	outputPrefix
		type: string
		inputBinding:
			position: 5
			prefix: --output-prefix
	
outputs:
	outputFile
		type: File
		outputBinding: 
			glob: $(inputs.outputPrefix).auc.threshold.merge.bed


	


