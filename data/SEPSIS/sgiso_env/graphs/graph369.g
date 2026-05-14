v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 AdmissionNC
v 13 LacticAcid
v 14 CRP
v 15 Leucocytes
v 16 LacticAcid
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 CRP
v 23 Leucocytes
v 24 ReleaseB
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 8 9  Leucocytes__IVAntibiotics
e 11 12  Leucocytes__AdmissionNC
e 14 15  CRP__Leucocytes
e 16 17  LacticAcid__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__CRP
e 15 16  Leucocytes__LacticAcid
e 3 4  IVLiquid__ERTriage
e 5 6  ERSepsisTriage__CRP
e 4 5  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 12 13  AdmissionNC__LacticAcid
e 13 14  LacticAcid__CRP
e 20 21  CRP__LacticAcid
e 22 23  CRP__Leucocytes
e 21 22  LacticAcid__CRP
e 23 24  Leucocytes__ReleaseB
e 24 25  ReleaseB__END

