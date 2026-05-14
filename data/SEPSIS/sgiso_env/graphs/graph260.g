v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 ReleaseA
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 13 14  Leucocytes__CRP
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__Leucocytes
e 14 15  CRP__AdmissionNC
e 15 16  AdmissionNC__Leucocytes
e 16 17  Leucocytes__CRP
e 19 20  ReleaseA__END
e 17 18  CRP__CRP
e 18 19  CRP__ReleaseA

