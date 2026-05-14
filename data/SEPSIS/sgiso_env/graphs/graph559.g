v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 13 14  AdmissionNC__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__LacticAcid
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 19 20  Leucocytes__CRP
e 21 22  ReleaseA__END
e 20 21  CRP__ReleaseA

