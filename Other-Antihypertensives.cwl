cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-antihypertensives-discovery---primary:
    run: other-antihypertensives-discovery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  other-antihypertensives-flomax---primary:
    run: other-antihypertensives-flomax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-discovery---primary/output
  other-antihypertensives-250microgram---primary:
    run: other-antihypertensives-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-flomax---primary/output
  other-antihypertensives-025mg---primary:
    run: other-antihypertensives-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-250microgram---primary/output
  other-antihypertensives-doxazosin---primary:
    run: other-antihypertensives-doxazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-025mg---primary/output
  other-antihypertensives-starter---primary:
    run: other-antihypertensives-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-doxazosin---primary/output
  other-antihypertensives-injection---primary:
    run: other-antihypertensives-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-starter---primary/output
  other-antihypertensives-hypovase---primary:
    run: other-antihypertensives-hypovase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-injection---primary/output
  other-antihypertensives-alphavase---primary:
    run: other-antihypertensives-alphavase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-hypovase---primary/output
  other-antihypertensives-suspension---primary:
    run: other-antihypertensives-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-alphavase---primary/output
  other-antihypertensives-hydrochlorothiazide---primary:
    run: other-antihypertensives-hydrochlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-suspension---primary/output
  other-antihypertensives-shire---primary:
    run: other-antihypertensives-shire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-hydrochlorothiazide---primary/output
  other-antihypertensives-amdipharm---primary:
    run: other-antihypertensives-amdipharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-shire---primary/output
  other-antihypertensives-methyldopa---primary:
    run: other-antihypertensives-methyldopa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-amdipharm---primary/output
  other-antihypertensives-metalpha---primary:
    run: other-antihypertensives-metalpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-methyldopa---primary/output
  other-antihypertensives-serpasil---primary:
    run: other-antihypertensives-serpasil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-metalpha---primary/output
  other-antihypertensives-tablet---primary:
    run: other-antihypertensives-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-serpasil---primary/output
  other-antihypertensives-250mg---primary:
    run: other-antihypertensives-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-tablet---primary/output
  other-antihypertensives-carlton---primary:
    run: other-antihypertensives-carlton---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-250mg---primary/output
  other-antihypertensives-hyperplasia---primary:
    run: other-antihypertensives-hyperplasia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-carlton---primary/output
  other-antihypertensives-abbott---primary:
    run: other-antihypertensives-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-hyperplasia---primary/output
  other-antihypertensives-dopamet---primary:
    run: other-antihypertensives-dopamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-abbott---primary/output
  other-antihypertensives-roussel---primary:
    run: other-antihypertensives-roussel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-dopamet---primary/output
  other-antihypertensives-cascor---primary:
    run: other-antihypertensives-cascor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-roussel---primary/output
  other-antihypertensives-500mg---primary:
    run: other-antihypertensives-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-cascor---primary/output
  omnic-other-antihypertensives---primary:
    run: omnic-other-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-500mg---primary/output
  other-antihypertensives-indoramin---primary:
    run: other-antihypertensives-indoramin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: omnic-other-antihypertensives---primary/output
  other-antihypertensives-arrow---primary:
    run: other-antihypertensives-arrow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-indoramin---primary/output
  other-antihypertensives-methoserpidine---primary:
    run: other-antihypertensives-methoserpidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-arrow---primary/output
  other-antihypertensives-125mg---primary:
    run: other-antihypertensives-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-methoserpidine---primary/output
  other-antihypertensives-actavis---primary:
    run: other-antihypertensives-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-125mg---primary/output
  other-antihypertensives-hillcross---primary:
    run: other-antihypertensives-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-actavis---primary/output
  other-antihypertensives-terazosin---primary:
    run: other-antihypertensives-terazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-hillcross---primary/output
  other-antihypertensives-doxadura---primary:
    run: other-antihypertensives-doxadura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-terazosin---primary/output
  other-antihypertensives-cardozin---primary:
    run: other-antihypertensives-cardozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-doxadura---primary/output
  other-antihypertensives-phenoxybenzamine---primary:
    run: other-antihypertensives-phenoxybenzamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-cardozin---primary/output
  other-antihypertensives-sandoz---primary:
    run: other-antihypertensives-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-phenoxybenzamine---primary/output
  other-antihypertensives-sigma---primary:
    run: other-antihypertensives-sigma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-sandoz---primary/output
  other-antihypertensives-cardura---primary:
    run: other-antihypertensives-cardura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-sigma---primary/output
  other-antihypertensives-prolonged---primary:
    run: other-antihypertensives-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-cardura---primary/output
  other-antihypertensives-pamsvax---primary:
    run: other-antihypertensives-pamsvax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-prolonged---primary/output
  other-antihypertensives-modified---primary:
    run: other-antihypertensives-modified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-pamsvax---primary/output
  other-antihypertensives-hydrochloride---primary:
    run: other-antihypertensives-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-modified---primary/output
  other-antihypertensives-aldomet---primary:
    run: other-antihypertensives-aldomet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-hydrochloride---primary/output
  other-antihypertensives-capsule---primary:
    run: other-antihypertensives-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-aldomet---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: other-antihypertensives-capsule---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
