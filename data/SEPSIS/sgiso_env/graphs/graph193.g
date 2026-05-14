v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 IVLiquid
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 END
e 4 5  ERRegistration__ERTriage
e 8 9  Leucocytes__CRP
e 13 14  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 6 7  ERSepsisTriage__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  CRP__IVLiquid
e 12 13  AdmissionNC__Leucocytes
e 10 11  IVLiquid__IVAntibiotics
e 11 12  IVAntibiotics__AdmissionNC
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__END

