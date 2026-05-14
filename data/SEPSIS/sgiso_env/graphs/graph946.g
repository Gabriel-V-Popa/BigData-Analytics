v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 END
e 4 5  ERRegistration__ERTriage
e 5 6  ERTriage__ERSepsisTriage
e 6 7  ERSepsisTriage__END
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP

