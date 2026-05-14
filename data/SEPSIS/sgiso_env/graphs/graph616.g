v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 AdmissionNC
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 ReleaseA
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 12 13  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 8 9  CRP__LacticAcid
e 11 12  LacticAcid__Leucocytes
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 13 14  CRP__AdmissionNC
e 15 16  AdmissionNC__Leucocytes
e 14 15  AdmissionNC__AdmissionNC
e 18 19  Leucocytes__CRP
e 20 21  ReleaseA__END
e 19 20  CRP__ReleaseA

