v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 AdmissionNC
v 9 ReleaseB
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 8 10  AdmissionNC__END
e 9 10  ReleaseB__END
e 5 6  Leucocytes__LacticAcid
e 7 8  ERSepsisTriage__AdmissionNC
e 7 9  ERSepsisTriage__ReleaseB
e 6 7  LacticAcid__ERSepsisTriage

