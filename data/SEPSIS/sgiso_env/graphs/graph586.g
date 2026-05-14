v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 IVLiquid
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__IVLiquid
e 10 11  IVLiquid__END

