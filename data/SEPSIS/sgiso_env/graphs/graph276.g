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
v 11 LacticAcid
v 12 CRP
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 ReleaseB
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 17 18  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__CRP
e 14 15  LacticAcid__Leucocytes
e 12 13  CRP__CRP
e 13 14  CRP__LacticAcid
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 20 21  ReleaseB__END
e 19 20  CRP__ReleaseB

