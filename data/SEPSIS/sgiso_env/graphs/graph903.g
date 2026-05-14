v 1 START
v 2 ERRegistration
v 3 CRP
v 4 Leucocytes
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__CRP
e 3 4  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 4 5  Leucocytes__LacticAcid
e 5 6  LacticAcid__ERTriage
e 6 7  ERTriage__ERSepsisTriage
e 10 11  AdmissionNC__CRP
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__END

