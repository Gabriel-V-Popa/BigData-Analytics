v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 LacticAcid
v 15 CRP
v 16 AdmissionNC
v 17 CRP
v 18 LacticAcid
v 19 Leucocytes
v 20 CRP
v 21 AdmissionNC
v 22 ReleaseA
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  CRP__Leucocytes
e 16 17  AdmissionNC__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  CRP__IVLiquid
e 6 7  LacticAcid__CRP
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__LacticAcid
e 15 16  CRP__AdmissionNC
e 13 14  LacticAcid__LacticAcid
e 14 15  LacticAcid__CRP
e 17 18  CRP__LacticAcid
e 18 19  LacticAcid__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__AdmissionNC
e 21 22  AdmissionNC__ReleaseA
e 22 23  ReleaseA__END

