v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 END
e 1 2  START__ERRegistration
e 10 11  AdmissionNC__END
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 6 7  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__ERTriage
e 7 8  ERSepsisTriage__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 8 9  IVLiquid__IVAntibiotics

