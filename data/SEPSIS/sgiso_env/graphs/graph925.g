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
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 Leucocytes
v 15 CRP
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 AdmissionIC
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 Leucocytes
v 28 Leucocytes
v 29 LacticAcid
v 30 Leucocytes
v 31 CRP
v 32 Leucocytes
v 33 Leucocytes
v 34 Leucocytes
v 35 Leucocytes
v 36 CRP
v 37 LacticAcid
v 38 Leucocytes
v 39 Leucocytes
v 40 CRP
v 41 LacticAcid
v 42 AdmissionNC
v 43 Leucocytes
v 44 CRP
v 45 ReleaseA
v 46 ReturnER
v 47 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 14 15  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 25 26  LacticAcid__Leucocytes
e 29 30  LacticAcid__Leucocytes
e 30 31  Leucocytes__CRP
e 31 32  CRP__Leucocytes
e 45 46  ReleaseA__ReturnER
e 46 47  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 21 22  Leucocytes__AdmissionIC
e 21 25  Leucocytes__LacticAcid
e 6 7  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__AdmissionNC
e 13 14  AdmissionNC__Leucocytes
e 15 16  CRP__CRP
e 17 18  CRP__Leucocytes
e 16 17  CRP__CRP
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 24 26  CRP__Leucocytes
e 22 23  AdmissionIC__Leucocytes
e 23 24  Leucocytes__CRP
e 26 27  Leucocytes__Leucocytes
e 28 29  Leucocytes__LacticAcid
e 27 28  Leucocytes__Leucocytes
e 32 33  Leucocytes__Leucocytes
e 35 36  Leucocytes__CRP
e 33 34  Leucocytes__Leucocytes
e 34 35  Leucocytes__Leucocytes
e 36 37  CRP__LacticAcid
e 37 38  LacticAcid__Leucocytes
e 38 39  Leucocytes__Leucocytes
e 39 40  Leucocytes__CRP
e 40 41  CRP__LacticAcid
e 42 43  AdmissionNC__Leucocytes
e 41 42  LacticAcid__AdmissionNC
e 43 44  Leucocytes__CRP
e 44 45  CRP__ReleaseA

