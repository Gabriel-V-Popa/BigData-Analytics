v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 IVLiquid
v 8 AdmissionNC
v 9 ERSepsisTriage
v 10 IVAntibiotics
v 11 AdmissionIC
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 AdmissionNC
v 19 Leucocytes
v 20 CRP
v 21 CRP
v 22 Leucocytes
v 23 ReleaseA
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 10 11  IVAntibiotics__AdmissionIC
e 10 13  IVAntibiotics__LacticAcid
e 13 14  LacticAcid__Leucocytes
e 19 20  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__IVLiquid
e 9 10  ERSepsisTriage__IVAntibiotics
e 7 8  IVLiquid__AdmissionNC
e 8 9  AdmissionNC__ERSepsisTriage
e 12 14  CRP__Leucocytes
e 11 12  AdmissionIC__CRP
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__LacticAcid
e 18 19  AdmissionNC__Leucocytes
e 17 18  LacticAcid__AdmissionNC
e 20 21  CRP__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__ReleaseA
e 23 24  ReleaseA__END

