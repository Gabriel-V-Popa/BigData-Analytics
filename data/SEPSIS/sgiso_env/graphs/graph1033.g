v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 IVLiquid
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 CRP
v 14 Leucocytes
v 15 ReleaseA
v 16 END
e 4 5  ERRegistration__ERTriage
e 13 14  CRP__Leucocytes
e 5 6  ERTriage__ERSepsisTriage
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 6 7  ERSepsisTriage__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__CRP
e 9 10  CRP__IVLiquid
e 10 11  IVLiquid__IVAntibiotics
e 12 13  AdmissionNC__CRP
e 11 12  IVAntibiotics__AdmissionNC
e 14 15  Leucocytes__ReleaseA
e 15 16  ReleaseA__END

