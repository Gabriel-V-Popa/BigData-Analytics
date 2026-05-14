v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 Leucocytes
v 16 AdmissionNC
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  Leucocytes__CRP
e 15 16  Leucocytes__AdmissionNC
e 16 17  AdmissionNC__CRP
e 17 18  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__LacticAcid
e 14 15  CRP__Leucocytes
e 13 14  LacticAcid__CRP
e 18 19  Leucocytes__Leucocytes
e 21 22  ReleaseA__END
e 19 20  Leucocytes__CRP
e 20 21  CRP__ReleaseA

