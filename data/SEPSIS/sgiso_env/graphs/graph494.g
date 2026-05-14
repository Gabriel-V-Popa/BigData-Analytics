v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 Leucocytes
v 11 CRP
v 12 LacticAcid
v 13 AdmissionIC
v 14 Leucocytes
v 15 LacticAcid
v 16 Leucocytes
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 CRP
v 22 Leucocytes
v 23 ReleaseB
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 14  LacticAcid__Leucocytes
e 13 14  AdmissionIC__Leucocytes
e 15 16  LacticAcid__Leucocytes
e 17 18  LacticAcid__Leucocytes
e 18 19  Leucocytes__CRP
e 14 15  Leucocytes__LacticAcid
e 16 17  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__Leucocytes
e 11 12  CRP__LacticAcid
e 11 13  CRP__AdmissionIC
e 10 11  Leucocytes__CRP
e 19 20  CRP__LacticAcid
e 21 22  CRP__Leucocytes
e 20 21  LacticAcid__CRP
e 22 23  Leucocytes__ReleaseB
e 23 24  ReleaseB__END

