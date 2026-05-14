v 1 ERSepsisTriage
v 2 IVAntibiotics
v 3 AdmissionIC
v 4 SUB_507
v 5 SUB_925
v 6 SUB_1802

e 2 3 IVAntibiotics__AdmissionIC
e 2 6 IVAntibiotics__LacticAcid
e 1 2 ERSepsisTriage__IVAntibiotics
e 5 4 IVLiquid__ERRegistration
e 4 1 LacticAcid__ERSepsisTriage
e 3 6 AdmissionIC__CRP

