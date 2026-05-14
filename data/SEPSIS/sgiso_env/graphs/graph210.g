v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 CRP
v 15 Leucocytes
v 16 AdmissionNC
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  AdmissionNC__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__AdmissionNC
e 18 19  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC
e 16 17  AdmissionNC__Leucocytes
e 17 18  Leucocytes__CRP
e 19 20  Leucocytes__CRP
e 21 22  ReleaseA__END
e 20 21  CRP__ReleaseA

