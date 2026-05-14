v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionIC
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 Leucocytes
v 18 AdmissionNC
v 19 CRP
v 20 Leucocytes
v 21 ReleaseA
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  LacticAcid__Leucocytes
e 14 15  Leucocytes__CRP
e 17 18  Leucocytes__AdmissionNC
e 18 19  AdmissionNC__CRP
e 19 20  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 13  AdmissionNC__LacticAcid
e 12 14  CRP__Leucocytes
e 11 12  AdmissionIC__CRP
e 15 16  CRP__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 20 21  Leucocytes__ReleaseA
e 21 22  ReleaseA__END

