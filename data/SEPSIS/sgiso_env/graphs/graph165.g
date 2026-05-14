v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 LacticAcid
v 9 CRP
v 10 Leucocytes
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 ReleaseA
v 19 END
e 4 5  ERRegistration__ERTriage
e 9 10  CRP__Leucocytes
e 12 13  AdmissionNC__CRP
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 8 9  LacticAcid__CRP
e 6 7  ERSepsisTriage__IVLiquid
e 7 8  IVLiquid__LacticAcid
e 10 11  Leucocytes__IVAntibiotics
e 11 12  IVAntibiotics__AdmissionNC
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 17 18  Leucocytes__ReleaseA
e 18 19  ReleaseA__END

