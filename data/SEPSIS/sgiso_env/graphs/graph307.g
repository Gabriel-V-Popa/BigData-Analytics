v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 CRP
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 AdmissionNC
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 14 15  Leucocytes__AdmissionNC
e 3 4  ERTriage__LacticAcid
e 4 5  LacticAcid__CRP
e 6 7  Leucocytes__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 15 16  AdmissionNC__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__AdmissionNC
e 18 19  AdmissionNC__Leucocytes
e 19 20  Leucocytes__CRP
e 21 22  ReleaseA__END
e 20 21  CRP__ReleaseA

