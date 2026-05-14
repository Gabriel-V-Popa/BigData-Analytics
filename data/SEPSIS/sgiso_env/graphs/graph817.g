v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 AdmissionIC
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 Leucocytes
v 20 LacticAcid
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 LacticAcid
v 25 Leucocytes
v 26 Leucocytes
v 27 Leucocytes
v 28 Leucocytes
v 29 Leucocytes
v 30 Leucocytes
v 31 ReleaseB
v 32 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 20 21  LacticAcid__Leucocytes
e 21 22  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 24 25  LacticAcid__Leucocytes
e 19 20  Leucocytes__LacticAcid
e 23 24  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 13 14  CRP__CRP
e 15 16  AdmissionIC__Leucocytes
e 14 15  CRP__AdmissionIC
e 17 18  CRP__LacticAcid
e 18 19  LacticAcid__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 31 32  ReleaseB__END
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__Leucocytes
e 28 29  Leucocytes__Leucocytes
e 29 30  Leucocytes__Leucocytes
e 30 31  Leucocytes__ReleaseB

