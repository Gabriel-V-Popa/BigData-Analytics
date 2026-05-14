v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 ERTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 ReleaseB
v 21 END
e 1 2  START__ERRegistration
e 7 8  CRP__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 2 3  ERRegistration__ERSepsisTriage
e 3 4  ERSepsisTriage__ERTriage
e 4 5  ERTriage__IVLiquid
e 6 7  LacticAcid__CRP
e 5 6  IVLiquid__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  CRP__LacticAcid
e 10 11  AdmissionNC__CRP
e 17 18  Leucocytes__Leucocytes
e 20 21  ReleaseB__END
e 18 19  Leucocytes__CRP
e 19 20  CRP__ReleaseB

