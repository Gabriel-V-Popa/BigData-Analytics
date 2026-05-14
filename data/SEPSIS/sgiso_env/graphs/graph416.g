v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 7 8  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 8 9  LacticAcid__IVAntibiotics

