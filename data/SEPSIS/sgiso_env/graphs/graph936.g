v 1 START
v 2 ERRegistration
v 3 CRP
v 4 Leucocytes
v 5 ERTriage
v 6 ERSepsisTriage
v 7 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__CRP
e 3 4  CRP__Leucocytes
e 4 5  Leucocytes__ERTriage
e 6 7  ERSepsisTriage__END
e 5 6  ERTriage__ERSepsisTriage

