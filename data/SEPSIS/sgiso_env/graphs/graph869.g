v 1 START
v 2 ERTriage
v 3 ERRegistration
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 AdmissionNC
v 9 IVLiquid
v 10 IVAntibiotics
v 11 END
e 7 8  ERSepsisTriage__AdmissionNC
e 1 2  START__ERTriage
e 2 3  ERTriage__ERRegistration
e 3 4  ERRegistration__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 8 9  AdmissionNC__IVLiquid
e 10 11  IVAntibiotics__END
e 9 10  IVLiquid__IVAntibiotics

