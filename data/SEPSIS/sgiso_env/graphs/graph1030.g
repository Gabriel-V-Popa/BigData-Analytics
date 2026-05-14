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
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 ReleaseA
v 20 END
e 1 2  START__ERRegistration
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 7 8  ERSepsisTriage__IVLiquid
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 6 7  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__ERTriage
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 13 14  CRP__AdmissionNC
e 14 15  AdmissionNC__Leucocytes
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__ReleaseA
e 19 20  ReleaseA__END

