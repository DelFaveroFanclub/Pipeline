cwlVersion: v1.0
class: Workflow

inputs:
  bamFile: File
  bedpe: 
    type: boolean
    default: True
  bamFileControl: File




outputs:



steps:
  InputBedgraph:
    run: /Users/adams/Documents/TRADAMORE/Pipeline/Tools/InputBedgraph.cwl
    in: 
      bamFile: bamFile
      bedpe: bedpe
    out:
      [bedFile]

  InputBedgraphControl:
    run: /Users/adams/Documents/TRADAMORE/Pipeline/Tools/InputBedgraphControl.cwl
    in:
      bamFileControl: bamFileControl
      bedpe: bedpe
    out:
      [bedFileControl] 

  

  