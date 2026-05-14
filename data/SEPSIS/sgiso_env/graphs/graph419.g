v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__ERSepsisTriage
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 6 7  ERSepsisTriage__IVLiquid
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 7 8  IVLiquid__LacticAcid
e 10 11  AdmissionNC__CRP
e 8 9  LacticAcid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 14 15  Leucocytes__ReleaseA
e 15 16  ReleaseA__END

