% base de conocimientos simulada de pc factory
producto(CPU,'i9-7900X',999.990,'Intel',12).
producto(CPU,'i9-9900KS',599.990,'Intel',12).
producto(CPU,'Ryzen93900X',541.190,'AMD',12).
producto(CPU,'i9-9900K',534.990,'Intel',12).
prodcuto(CPU,'i9-9900KF',459.990,'Intel',12).

producto(GPU,'RTX 2070S',582.990,'Nvidia',6).
producto(GPU,'RTX 2060S',519,990,'Nvidia',2).
producto(GPU,'Radeon RX 5700XT',504.390,'AMD',10).
producto(GPU,'RTX 2060S',469.990,'Nvidia',5).
producto(GPU,'Radeon RX 5700',449.990,'AMD',12).

producto(PSU,'Fuente de poder 1000w',159.990,'Seasonic',12).
producto(PSU,'Fuente de poder 850w',139.990,'Seasonic',8).
producto(PSU,'Fuente de poder 750w',109.990,'Seasonic',12).
producto(PSU,'Fuente de poder True 750w',105.390,'Deepcool',9).
producto(PSU,'Fuente de poder 650w',105.390,'Seasonic',7).

producto(PLACA,'Rog strix gaming',299.990,'Asus',4).
producto(PLACA,'Prime X399-A',299.190,'Asus',12).
producto(PLACA,'Rog strix X299-E',299.190,'Asus',12).
producto(PLACA,'Rog strix Z390-E',259.390,'Asus',2).
producto(PLACA,'Tuf plus gaming',229.990,'Asus',11).

% producto(T,N,P,M,G).

tipo(X) :- producto(X,N,_,_,_),display(N) .
garantia(N) :- producto(_,Na,_,_,G), G == N,write(Na),nl.
menor_a(N) :- producto(_,Na,P,_,_), P < N,write(Na).
mayor_a(N) :- producto(_,Na,P,_,_), P > N,write(Na).

