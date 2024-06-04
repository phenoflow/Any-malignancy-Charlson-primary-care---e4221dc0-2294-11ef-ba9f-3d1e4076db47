cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  any-malignancy-charlson-primary-care-mneoplasm---primary:
    run: any-malignancy-charlson-primary-care-mneoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  any-malignancy-charlson-primary-care-mcarcinosarcoma---primary:
    run: any-malignancy-charlson-primary-care-mcarcinosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mneoplasm---primary/output
  any-malignancy-charlson-primary-care-mchoriocarcinoma---primary:
    run: any-malignancy-charlson-primary-care-mchoriocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mcarcinosarcoma---primary/output
  any-malignancy-charlson-primary-care-kahler---primary:
    run: any-malignancy-charlson-primary-care-kahler---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mchoriocarcinoma---primary/output
  mlymphocytic-any-malignancy-charlson-primary-care---primary:
    run: mlymphocytic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-kahler---primary/output
  mhepatocellular-any-malignancy-charlson-primary-care---primary:
    run: mhepatocellular-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: mlymphocytic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-erythroleukaemia---primary:
    run: any-malignancy-charlson-primary-care-erythroleukaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: mhepatocellular-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-neoplsm---primary:
    run: any-malignancy-charlson-primary-care-neoplsm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-erythroleukaemia---primary/output
  any-malignancy-charlson-primary-care-mlymphoma---primary:
    run: any-malignancy-charlson-primary-care-mlymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-neoplsm---primary/output
  any-malignancy-charlson-primary-care-unspecif---primary:
    run: any-malignancy-charlson-primary-care-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mlymphoma---primary/output
  any-malignancy-charlson-primary-care-mrespiratory---primary:
    run: any-malignancy-charlson-primary-care-mrespiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-unspecif---primary/output
  any-malignancy-charlson-primary-care-chondroma---primary:
    run: any-malignancy-charlson-primary-care-chondroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mrespiratory---primary/output
  any-malignancy-charlson-primary-care-neuroblastoma---primary:
    run: any-malignancy-charlson-primary-care-neuroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-chondroma---primary/output
  any-malignancy-charlson-primary-care-mliposarcoma---primary:
    run: any-malignancy-charlson-primary-care-mliposarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-neuroblastoma---primary/output
  any-malignancy-charlson-primary-care-mhodgkin---primary:
    run: any-malignancy-charlson-primary-care-mhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mliposarcoma---primary/output
  mlymphoblastic-any-malignancy-charlson-primary-care---primary:
    run: mlymphoblastic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mhodgkin---primary/output
  any-malignancy-charlson-primary-care-stage---primary:
    run: any-malignancy-charlson-primary-care-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: mlymphoblastic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-brillbaehr-rosenthal---primary:
    run: any-malignancy-charlson-primary-care-brillbaehr-rosenthal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-stage---primary/output
  adenocarcinomatous-any-malignancy-charlson-primary-care---primary:
    run: adenocarcinomatous-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-brillbaehr-rosenthal---primary/output
  any-malignancy-charlson-primary-care-mtumour---primary:
    run: any-malignancy-charlson-primary-care-mtumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: adenocarcinomatous-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-madenosarcoma---primary:
    run: any-malignancy-charlson-primary-care-madenosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mtumour---primary/output
  carotid-any-malignancy-charlson-primary-care---primary:
    run: carotid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-madenosarcoma---primary/output
  any-malignancy-charlson-primary-care-maxilla---primary:
    run: any-malignancy-charlson-primary-care-maxilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: carotid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-descending---primary:
    run: any-malignancy-charlson-primary-care-descending---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-maxilla---primary/output
  any-malignancy-charlson-primary-care-mmalig---primary:
    run: any-malignancy-charlson-primary-care-mmalig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-descending---primary/output
  any-malignancy-charlson-primary-care-undescended---primary:
    run: any-malignancy-charlson-primary-care-undescended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mmalig---primary/output
  any-malignancy-charlson-primary-care-mmalignant---primary:
    run: any-malignancy-charlson-primary-care-mmalignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-undescended---primary/output
  transitional-any-malignancy-charlson-primary-care---primary:
    run: transitional-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mmalignant---primary/output
  any-malignancy-charlson-primary-care-mmixed---primary:
    run: any-malignancy-charlson-primary-care-mmixed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: transitional-any-malignancy-charlson-primary-care---primary/output
  nonfollicular-any-malignancy-charlson-primary-care---primary:
    run: nonfollicular-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mmixed---primary/output
  mcarcinoid-any-malignancy-charlson-primary-care---primary:
    run: mcarcinoid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: nonfollicular-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-mmesothelioma---primary:
    run: any-malignancy-charlson-primary-care-mmesothelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: mcarcinoid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-epithelioma---primary:
    run: any-malignancy-charlson-primary-care-epithelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mmesothelioma---primary/output
  mintraepithelial-any-malignancy-charlson-primary-care---primary:
    run: mintraepithelial-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-epithelioma---primary/output
  autonomic-any-malignancy-charlson-primary-care---primary:
    run: autonomic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: mintraepithelial-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-msweat---primary:
    run: any-malignancy-charlson-primary-care-msweat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: autonomic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-myelomatosis---primary:
    run: any-malignancy-charlson-primary-care-myelomatosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-msweat---primary/output
  any-malignancy-charlson-primary-care-mmelanoma---primary:
    run: any-malignancy-charlson-primary-care-mmelanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-myelomatosis---primary/output
  any-malignancy-charlson-primary-care-heavychain---primary:
    run: any-malignancy-charlson-primary-care-heavychain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mmelanoma---primary/output
  any-malignancy-charlson-primary-care-predominance---primary:
    run: any-malignancy-charlson-primary-care-predominance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-heavychain---primary/output
  centroblasticcentrocytic-any-malignancy-charlson-primary-care---primary:
    run: centroblasticcentrocytic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-predominance---primary/output
  any-malignancy-charlson-primary-care-mosteoma---primary:
    run: any-malignancy-charlson-primary-care-mosteoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: centroblasticcentrocytic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-limbunspfd---primary:
    run: any-malignancy-charlson-primary-care-limbunspfd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mosteoma---primary/output
  any-malignancy-charlson-primary-care-naevu---primary:
    run: any-malignancy-charlson-primary-care-naevu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-limbunspfd---primary/output
  any-malignancy-charlson-primary-care-systemunspc---primary:
    run: any-malignancy-charlson-primary-care-systemunspc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-naevu---primary/output
  any-malignancy-charlson-primary-care-bowel---primary:
    run: any-malignancy-charlson-primary-care-bowel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-systemunspc---primary/output
  biphasic-any-malignancy-charlson-primary-care---primary:
    run: biphasic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-bowel---primary/output
  any-malignancy-charlson-primary-care-polycythaemia---primary:
    run: any-malignancy-charlson-primary-care-polycythaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: biphasic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-myosarcoma---primary:
    run: any-malignancy-charlson-primary-care-myosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-polycythaemia---primary/output
  intestinal-any-malignancy-charlson-primary-care---primary:
    run: intestinal-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-myosarcoma---primary/output
  any-malignancy-charlson-primary-care-dermatofibrosarcoma---primary:
    run: any-malignancy-charlson-primary-care-dermatofibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: intestinal-any-malignancy-charlson-primary-care---primary/output
  different-any-malignancy-charlson-primary-care---primary:
    run: different-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-dermatofibrosarcoma---primary/output
  any-malignancy-charlson-primary-care-medulla---primary:
    run: any-malignancy-charlson-primary-care-medulla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: different-any-malignancy-charlson-primary-care---primary/output
  thoracic-any-malignancy-charlson-primary-care---primary:
    run: thoracic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-medulla---primary/output
  any-malignancy-charlson-primary-care-myelofibrosis---primary:
    run: any-malignancy-charlson-primary-care-myelofibrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: thoracic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care---primary:
    run: any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-myelofibrosis---primary/output
  any-malignancy-charlson-primary-care-angiosarcoma---primary:
    run: any-malignancy-charlson-primary-care-angiosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-liposarcoma---primary:
    run: any-malignancy-charlson-primary-care-liposarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-angiosarcoma---primary/output
  any-malignancy-charlson-primary-care-mcystadenoma---primary:
    run: any-malignancy-charlson-primary-care-mcystadenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-liposarcoma---primary/output
  any-malignancy-charlson-primary-care-mastocytoma---primary:
    run: any-malignancy-charlson-primary-care-mastocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mcystadenoma---primary/output
  any-malignancy-charlson-primary-care-chloroma---primary:
    run: any-malignancy-charlson-primary-care-chloroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mastocytoma---primary/output
  any-malignancy-charlson-primary-care-dreyfus'---primary:
    run: any-malignancy-charlson-primary-care-dreyfus'---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-chloroma---primary/output
  any-malignancy-charlson-primary-care-polyposis---primary:
    run: any-malignancy-charlson-primary-care-polyposis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-dreyfus'---primary/output
  any-malignancy-charlson-primary-care-mmycosis---primary:
    run: any-malignancy-charlson-primary-care-mmycosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-polyposis---primary/output
  any-malignancy-charlson-primary-care-mosteosarcoma---primary:
    run: any-malignancy-charlson-primary-care-mosteosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mmycosis---primary/output
  any-malignancy-charlson-primary-care-letterersiwe---primary:
    run: any-malignancy-charlson-primary-care-letterersiwe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mosteosarcoma---primary/output
  any-malignancy-charlson-primary-care-hepatoblastoma---primary:
    run: any-malignancy-charlson-primary-care-hepatoblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-letterersiwe---primary/output
  any-malignancy-charlson-primary-care-nephroblastoma---primary:
    run: any-malignancy-charlson-primary-care-nephroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-hepatoblastoma---primary/output
  any-malignancy-charlson-primary-care-sezary---primary:
    run: any-malignancy-charlson-primary-care-sezary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-nephroblastoma---primary/output
  any-malignancy-charlson-primary-care-leiomyosarcoma---primary:
    run: any-malignancy-charlson-primary-care-leiomyosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-sezary---primary/output
  any-malignancy-charlson-primary-care-msarcoma---primary:
    run: any-malignancy-charlson-primary-care-msarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-leiomyosarcoma---primary/output
  any-malignancy-charlson-primary-care-mpigmented---primary:
    run: any-malignancy-charlson-primary-care-mpigmented---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-msarcoma---primary/output
  any-malignancy-charlson-primary-care-mreticulosarcoma---primary:
    run: any-malignancy-charlson-primary-care-mreticulosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mpigmented---primary/output
  any-malignancy-charlson-primary-care-meningioma---primary:
    run: any-malignancy-charlson-primary-care-meningioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mreticulosarcoma---primary/output
  aleukaemic-any-malignancy-charlson-primary-care---primary:
    run: aleukaemic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-meningioma---primary/output
  any-malignancy-charlson-primary-care-oligodendroglioma---primary:
    run: any-malignancy-charlson-primary-care-oligodendroglioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: aleukaemic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-noninfiltrating---primary:
    run: any-malignancy-charlson-primary-care-noninfiltrating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-oligodendroglioma---primary/output
  any-malignancy-charlson-primary-care-nkcell---primary:
    run: any-malignancy-charlson-primary-care-nkcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-noninfiltrating---primary/output
  any-malignancy-charlson-primary-care-epulis---primary:
    run: any-malignancy-charlson-primary-care-epulis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-nkcell---primary/output
  any-malignancy-charlson-primary-care-granuloma---primary:
    run: any-malignancy-charlson-primary-care-granuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-epulis---primary/output
  abdominal-any-malignancy-charlson-primary-care---primary:
    run: abdominal-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-granuloma---primary/output
  any-malignancy-charlson-primary-care-paragranuloma---primary:
    run: any-malignancy-charlson-primary-care-paragranuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: abdominal-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-cancer---primary:
    run: any-malignancy-charlson-primary-care-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-paragranuloma---primary/output
  mthyroid-any-malignancy-charlson-primary-care---primary:
    run: mthyroid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-cancer---primary/output
  pancreatic-any-malignancy-charlson-primary-care---primary:
    run: pancreatic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: mthyroid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-periph---primary:
    run: any-malignancy-charlson-primary-care-periph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: pancreatic-any-malignancy-charlson-primary-care---primary/output
  msebaceous-any-malignancy-charlson-primary-care---primary:
    run: msebaceous-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-periph---primary/output
  solitary-any-malignancy-charlson-primary-care---primary:
    run: solitary-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: msebaceous-any-malignancy-charlson-primary-care---primary/output
  mucinous-any-malignancy-charlson-primary-care---primary:
    run: mucinous-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: solitary-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-cylindroma---primary:
    run: any-malignancy-charlson-primary-care-cylindroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: mucinous-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-carcinoma---primary:
    run: any-malignancy-charlson-primary-care-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-cylindroma---primary/output
  any-malignancy-charlson-primary-care-recurrence---primary:
    run: any-malignancy-charlson-primary-care-recurrence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-carcinoma---primary/output
  any-malignancy-charlson-primary-care-overlap---primary:
    run: any-malignancy-charlson-primary-care-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-recurrence---primary/output
  any-malignancy-charlson-primary-care-odontoma---primary:
    run: any-malignancy-charlson-primary-care-odontoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-overlap---primary/output
  any-malignancy-charlson-primary-care-haemangioblastoma---primary:
    run: any-malignancy-charlson-primary-care-haemangioblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-odontoma---primary/output
  any-malignancy-charlson-primary-care-sarcoma---primary:
    run: any-malignancy-charlson-primary-care-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-haemangioblastoma---primary/output
  nonrectal-any-malignancy-charlson-primary-care---primary:
    run: nonrectal-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-sarcoma---primary/output
  any-malignancy-charlson-primary-care-erythraemia---primary:
    run: any-malignancy-charlson-primary-care-erythraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: nonrectal-any-malignancy-charlson-primary-care---primary/output
  classical-any-malignancy-charlson-primary-care---primary:
    run: classical-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-erythraemia---primary/output
  myeloproliferative-any-malignancy-charlson-primary-care---primary:
    run: myeloproliferative-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: classical-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-meatus---primary:
    run: any-malignancy-charlson-primary-care-meatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: myeloproliferative-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-resulting---primary:
    run: any-malignancy-charlson-primary-care-resulting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-meatus---primary/output
  any-malignancy-charlson-primary-care-histiocytosis---primary:
    run: any-malignancy-charlson-primary-care-histiocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-resulting---primary/output
  pleural-any-malignancy-charlson-primary-care---primary:
    run: pleural-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-histiocytosis---primary/output
  any-malignancy-charlson-primary-care-lymphosarcoma---primary:
    run: any-malignancy-charlson-primary-care-lymphosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: pleural-any-malignancy-charlson-primary-care---primary/output
  subcutaneous-any-malignancy-charlson-primary-care---primary:
    run: subcutaneous-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-lymphosarcoma---primary/output
  any-malignancy-charlson-primary-care-plasma---primary:
    run: any-malignancy-charlson-primary-care-plasma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: subcutaneous-any-malignancy-charlson-primary-care---primary/output
  pillar-any-malignancy-charlson-primary-care---primary:
    run: pillar-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-plasma---primary/output
  epidermoid-any-malignancy-charlson-primary-care---primary:
    run: epidermoid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: pillar-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-myelosclerosis---primary:
    run: any-malignancy-charlson-primary-care-myelosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: epidermoid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-exocervix---primary:
    run: any-malignancy-charlson-primary-care-exocervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-myelosclerosis---primary/output
  tubulovillous-any-malignancy-charlson-primary-care---primary:
    run: tubulovillous-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-exocervix---primary/output
  splenic-any-malignancy-charlson-primary-care---primary:
    run: splenic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: tubulovillous-any-malignancy-charlson-primary-care---primary/output
  mmyxoid-any-malignancy-charlson-primary-care---primary:
    run: mmyxoid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: splenic-any-malignancy-charlson-primary-care---primary/output
  moxyphilic-any-malignancy-charlson-primary-care---primary:
    run: moxyphilic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: mmyxoid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-mbile---primary:
    run: any-malignancy-charlson-primary-care-mbile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: moxyphilic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-urethra---primary:
    run: any-malignancy-charlson-primary-care-urethra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mbile---primary/output
  sacral-any-malignancy-charlson-primary-care---primary:
    run: sacral-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-urethra---primary/output
  villous-any-malignancy-charlson-primary-care---primary:
    run: villous-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: sacral-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-lymph---primary:
    run: any-malignancy-charlson-primary-care-lymph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: villous-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-protuberan---primary:
    run: any-malignancy-charlson-primary-care-protuberan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-lymph---primary/output
  any-malignancy-charlson-primary-care-siewert---primary:
    run: any-malignancy-charlson-primary-care-siewert---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-protuberan---primary/output
  mameloblastic-any-malignancy-charlson-primary-care---primary:
    run: mameloblastic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-siewert---primary/output
  any-malignancy-charlson-primary-care-reticuloend---primary:
    run: any-malignancy-charlson-primary-care-reticuloend---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: mameloblastic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-chondrosarcoma---primary:
    run: any-malignancy-charlson-primary-care-chondrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-reticuloend---primary/output
  any-malignancy-charlson-primary-care-mpaget---primary:
    run: any-malignancy-charlson-primary-care-mpaget---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-chondrosarcoma---primary/output
  any-malignancy-charlson-primary-care-heilmeyerschoner---primary:
    run: any-malignancy-charlson-primary-care-heilmeyerschoner---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mpaget---primary/output
  any-malignancy-charlson-primary-care-macroglobulinaemia---primary:
    run: any-malignancy-charlson-primary-care-macroglobulinaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-heilmeyerschoner---primary/output
  any-malignancy-charlson-primary-care-subacute---primary:
    run: any-malignancy-charlson-primary-care-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-macroglobulinaemia---primary/output
  any-malignancy-charlson-primary-care-erythroblastoma---primary:
    run: any-malignancy-charlson-primary-care-erythroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-subacute---primary/output
  any-malignancy-charlson-primary-care-mastocytosis---primary:
    run: any-malignancy-charlson-primary-care-mastocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-erythroblastoma---primary/output
  any-malignancy-charlson-primary-care-teratoma---primary:
    run: any-malignancy-charlson-primary-care-teratoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mastocytosis---primary/output
  neutrophilic-any-malignancy-charlson-primary-care---primary:
    run: neutrophilic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-teratoma---primary/output
  any-malignancy-charlson-primary-care-mhepatobiliary---primary:
    run: any-malignancy-charlson-primary-care-mhepatobiliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: neutrophilic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-waldenstrom---primary:
    run: any-malignancy-charlson-primary-care-waldenstrom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mhepatobiliary---primary/output
  any-malignancy-charlson-primary-care-mplasmacytoma---primary:
    run: any-malignancy-charlson-primary-care-mplasmacytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-waldenstrom---primary/output
  any-malignancy-charlson-primary-care-guglielmo---primary:
    run: any-malignancy-charlson-primary-care-guglielmo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mplasmacytoma---primary/output
  any-malignancy-charlson-primary-care-pancoast---primary:
    run: any-malignancy-charlson-primary-care-pancoast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-guglielmo---primary/output
  immunoblastic-any-malignancy-charlson-primary-care---primary:
    run: immunoblastic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-pancoast---primary/output
  aryepiglottic-any-malignancy-charlson-primary-care---primary:
    run: aryepiglottic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: immunoblastic-any-malignancy-charlson-primary-care---primary/output
  modontogenic-any-malignancy-charlson-primary-care---primary:
    run: modontogenic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: aryepiglottic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-stroma---primary:
    run: any-malignancy-charlson-primary-care-stroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: modontogenic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-glioma---primary:
    run: any-malignancy-charlson-primary-care-glioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-stroma---primary/output
  any-malignancy-charlson-primary-care-anaemia---primary:
    run: any-malignancy-charlson-primary-care-anaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-glioma---primary/output
  any-malignancy-charlson-primary-care-symmer---primary:
    run: any-malignancy-charlson-primary-care-symmer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-anaemia---primary/output
  any-malignancy-charlson-primary-care-transverse---primary:
    run: any-malignancy-charlson-primary-care-transverse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-symmer---primary/output
  any-malignancy-charlson-primary-care-vaquez'---primary:
    run: any-malignancy-charlson-primary-care-vaquez'---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-transverse---primary/output
  any-malignancy-charlson-primary-care-ovary---primary:
    run: any-malignancy-charlson-primary-care-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-vaquez'---primary/output
  any-malignancy-charlson-primary-care-jejunum---primary:
    run: any-malignancy-charlson-primary-care-jejunum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-ovary---primary/output
  any-malignancy-charlson-primary-care-fluid---primary:
    run: any-malignancy-charlson-primary-care-fluid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-jejunum---primary/output
  any-malignancy-charlson-primary-care-pericardium---primary:
    run: any-malignancy-charlson-primary-care-pericardium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-fluid---primary/output
  any-malignancy-charlson-primary-care-keratinising---primary:
    run: any-malignancy-charlson-primary-care-keratinising---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-pericardium---primary/output
  any-malignancy-charlson-primary-care-acanthoameloblastoma---primary:
    run: any-malignancy-charlson-primary-care-acanthoameloblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-keratinising---primary/output
  parathyroid-any-malignancy-charlson-primary-care---primary:
    run: parathyroid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-acanthoameloblastoma---primary/output
  myeloblastic-any-malignancy-charlson-primary-care---primary:
    run: myeloblastic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: parathyroid-any-malignancy-charlson-primary-care---primary/output
  pelvic-any-malignancy-charlson-primary-care---primary:
    run: pelvic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: myeloblastic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-phaeochromocytoma---primary:
    run: any-malignancy-charlson-primary-care-phaeochromocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: pelvic-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-hypernephroma---primary:
    run: any-malignancy-charlson-primary-care-hypernephroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-phaeochromocytoma---primary/output
  any-malignancy-charlson-primary-care-mapocrine---primary:
    run: any-malignancy-charlson-primary-care-mapocrine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-hypernephroma---primary/output
  any-malignancy-charlson-primary-care-franklin's---primary:
    run: any-malignancy-charlson-primary-care-franklin's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mapocrine---primary/output
  any-malignancy-charlson-primary-care-seminoma---primary:
    run: any-malignancy-charlson-primary-care-seminoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-franklin's---primary/output
  ovarian-any-malignancy-charlson-primary-care---primary:
    run: ovarian-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-seminoma---primary/output
  any-malignancy-charlson-primary-care-trunkunspecified---primary:
    run: any-malignancy-charlson-primary-care-trunkunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: ovarian-any-malignancy-charlson-primary-care---primary/output
  mrenal-any-malignancy-charlson-primary-care---primary:
    run: mrenal-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-trunkunspecified---primary/output
  embryonal-any-malignancy-charlson-primary-care---primary:
    run: embryonal-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: mrenal-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-madenoma---primary:
    run: any-malignancy-charlson-primary-care-madenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: embryonal-any-malignancy-charlson-primary-care---primary/output
  sigmoid-any-malignancy-charlson-primary-care---primary:
    run: sigmoid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-madenoma---primary/output
  any-malignancy-charlson-primary-care-fibrosarcoma---primary:
    run: any-malignancy-charlson-primary-care-fibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: sigmoid-any-malignancy-charlson-primary-care---primary/output
  unknown-any-malignancy-charlson-primary-care---primary:
    run: unknown-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-fibrosarcoma---primary/output
  any-malignancy-charlson-primary-care-appendix---primary:
    run: any-malignancy-charlson-primary-care-appendix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: unknown-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-stomach---primary:
    run: any-malignancy-charlson-primary-care-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-appendix---primary/output
  any-malignancy-charlson-primary-care-meninge---primary:
    run: any-malignancy-charlson-primary-care-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-stomach---primary/output
  fallopian-any-malignancy-charlson-primary-care---primary:
    run: fallopian-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-meninge---primary/output
  arytenoid-any-malignancy-charlson-primary-care---primary:
    run: arytenoid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: fallopian-any-malignancy-charlson-primary-care---primary/output
  mjuxtacortical-any-malignancy-charlson-primary-care---primary:
    run: mjuxtacortical-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: arytenoid-any-malignancy-charlson-primary-care---primary/output
  sphenoidal-any-malignancy-charlson-primary-care---primary:
    run: sphenoidal-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: mjuxtacortical-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-ependymoma---primary:
    run: any-malignancy-charlson-primary-care-ependymoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: sphenoidal-any-malignancy-charlson-primary-care---primary/output
  uncertain-any-malignancy-charlson-primary-care---primary:
    run: uncertain-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-ependymoma---primary/output
  any-malignancy-charlson-primary-care-mcystosarcoma---primary:
    run: any-malignancy-charlson-primary-care-mcystosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: uncertain-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-eyeball---primary:
    run: any-malignancy-charlson-primary-care-eyeball---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mcystosarcoma---primary/output
  gastric-any-malignancy-charlson-primary-care---primary:
    run: gastric-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-eyeball---primary/output
  female-any-malignancy-charlson-primary-care---primary:
    run: female-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: gastric-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-follicle---primary:
    run: any-malignancy-charlson-primary-care-follicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: female-any-malignancy-charlson-primary-care---primary/output
  mgranular-any-malignancy-charlson-primary-care---primary:
    run: mgranular-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-follicle---primary/output
  any-malignancy-charlson-primary-care-forehead---primary:
    run: any-malignancy-charlson-primary-care-forehead---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: mgranular-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-spreading---primary:
    run: any-malignancy-charlson-primary-care-spreading---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-forehead---primary/output
  any-malignancy-charlson-primary-care-brain---primary:
    run: any-malignancy-charlson-primary-care-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-spreading---primary/output
  any-malignancy-charlson-primary-care-fusiform---primary:
    run: any-malignancy-charlson-primary-care-fusiform---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-brain---primary/output
  malignancy---primary:
    run: malignancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-fusiform---primary/output
  any-malignancy-charlson-primary-care-mnaevi---primary:
    run: any-malignancy-charlson-primary-care-mnaevi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: malignancy---primary/output
  malveolar-any-malignancy-charlson-primary-care---primary:
    run: malveolar-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mnaevi---primary/output
  any-malignancy-charlson-primary-care-throat---primary:
    run: any-malignancy-charlson-primary-care-throat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: malveolar-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-retinoblastoma---primary:
    run: any-malignancy-charlson-primary-care-retinoblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-throat---primary/output
  immunoproliferative-any-malignancy-charlson-primary-care---primary:
    run: immunoproliferative-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-retinoblastoma---primary/output
  any-malignancy-charlson-primary-care-mgastrinoma---primary:
    run: any-malignancy-charlson-primary-care-mgastrinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: immunoproliferative-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-adamantinoma---primary:
    run: any-malignancy-charlson-primary-care-adamantinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mgastrinoma---primary/output
  any-malignancy-charlson-primary-care-reticulosis---primary:
    run: any-malignancy-charlson-primary-care-reticulosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-adamantinoma---primary/output
  mendometrioid-any-malignancy-charlson-primary-care---primary:
    run: mendometrioid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-reticulosis---primary/output
  any-malignancy-charlson-primary-care-adenoma---primary:
    run: any-malignancy-charlson-primary-care-adenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: mendometrioid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-mcarcinoma---primary:
    run: any-malignancy-charlson-primary-care-mcarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-adenoma---primary/output
  mtubular-any-malignancy-charlson-primary-care---primary:
    run: mtubular-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-mcarcinoma---primary/output
  any-malignancy-charlson-primary-care-hepatoma---primary:
    run: any-malignancy-charlson-primary-care-hepatoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: mtubular-any-malignancy-charlson-primary-care---primary/output
  mepithelioid-any-malignancy-charlson-primary-care---primary:
    run: mepithelioid-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-hepatoma---primary/output
  spermatic-any-malignancy-charlson-primary-care---primary:
    run: spermatic-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: mepithelioid-any-malignancy-charlson-primary-care---primary/output
  any-malignancy-charlson-primary-care-oligodendroblastoma---primary:
    run: any-malignancy-charlson-primary-care-oligodendroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: spermatic-any-malignancy-charlson-primary-care---primary/output
  lingual-any-malignancy-charlson-primary-care---primary:
    run: lingual-any-malignancy-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-oligodendroblastoma---primary/output
  any-malignancy-charlson-primary-care-vulva---primary:
    run: any-malignancy-charlson-primary-care-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: lingual-any-malignancy-charlson-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: any-malignancy-charlson-primary-care-vulva---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
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
