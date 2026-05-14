v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 IVAntibiotics
v 9 CRP
v 10 Leucocytes
v 11 LacticAcid
v 12 AdmissionNC
v 13 Leucocytes
v 14 LacticAcid
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 AdmissionIC
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 ReleaseB
v 23 END
e 4 5  ERRegistration__ERTriage
e 9 10  CRP__Leucocytes
e 18 20  AdmissionIC__Leucocytes
e 19 20  LacticAcid__Leucocytes
e 10 11  Leucocytes__LacticAcid
e 13 14  Leucocytes__LacticAcid
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 8 9  IVAntibiotics__CRP
e 6 7  ERSepsisTriage__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 11 12  LacticAcid__AdmissionNC
e 12 13  AdmissionNC__Leucocytes
e 14 15  LacticAcid__AdmissionNC
e 15 16  AdmissionNC__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__AdmissionIC
e 17 19  CRP__LacticAcid
e 20 21  Leucocytes__CRP
e 22 23  ReleaseB__END
e 21 22  CRP__ReleaseB

