v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 LacticAcid
v 9 IVLiquid
v 10 IVAntibiotics
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 AdmissionIC
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 LacticAcid
v 20 LacticAcid
v 21 Leucocytes
v 22 CRP
v 23 AdmissionNC
v 24 Leucocytes
v 25 CRP
v 26 LacticAcid
v 27 CRP
v 28 Leucocytes
v 29 Leucocytes
v 30 CRP
v 31 LacticAcid
v 32 AdmissionNC
v 33 Leucocytes
v 34 CRP
v 35 Leucocytes
v 36 CRP
v 37 Leucocytes
v 38 CRP
v 39 CRP
v 40 Leucocytes
v 41 ReleaseB
v 42 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 24 25  Leucocytes__CRP
e 33 34  Leucocytes__CRP
e 34 35  CRP__Leucocytes
e 35 36  Leucocytes__CRP
e 36 37  CRP__Leucocytes
e 37 38  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 12 13  Leucocytes__LacticAcid
e 12 14  Leucocytes__AdmissionIC
e 5 6  Leucocytes__CRP
e 8 9  LacticAcid__IVLiquid
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__LacticAcid
e 9 10  IVLiquid__IVAntibiotics
e 10 11  IVAntibiotics__CRP
e 13 15  LacticAcid__LacticAcid
e 14 15  AdmissionIC__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 17 18  CRP__LacticAcid
e 20 21  LacticAcid__Leucocytes
e 18 19  LacticAcid__LacticAcid
e 19 20  LacticAcid__LacticAcid
e 22 23  CRP__AdmissionNC
e 23 24  AdmissionNC__Leucocytes
e 25 26  CRP__LacticAcid
e 27 28  CRP__Leucocytes
e 26 27  LacticAcid__CRP
e 28 29  Leucocytes__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__LacticAcid
e 32 33  AdmissionNC__Leucocytes
e 31 32  LacticAcid__AdmissionNC
e 38 39  CRP__CRP
e 39 40  CRP__Leucocytes
e 40 41  Leucocytes__ReleaseB
e 41 42  ReleaseB__END

