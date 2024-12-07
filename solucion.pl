% Solución en Prolog
viveEnElBarrioDe(alf, almagro).
viveEnElBarrioDe(juan, almagro).
viveEnElBarrioDe(nico, almagro).
viveEnElBarrioDe(julian, almagro).
viveEnElBarrioDe(vale, flores).
viveEnElBarrioDe(fer, flores).
viveEnUnaCasa(juan, 120).
viveEnUnaCasa(fer, 110).
viveEnUnaCasa(rocio, 90).
viveEnUnDepartamento(nico, 3, 2).
viveEnUnDepartamento(alf, 3, 1).
viveEnUnDepartamento(vale, 4, 1).
viveEnUnLoft(julian, 2000).
valeLaCasa(juan, 150000).
valeLaCasa(nico, 80000).
valeLaCasa(alf, 75000).
valeLaCasa(julian, 140000).
valeLaCasa(vale, 95000).
valeLaCasa(fer, 60000).

viveEnPropiedadesCopadas(Personas):- (viveEnUnaCasa(Personas, MetrosCuadrados), MetrosCuadrados>100).
viveEnPropiedadesCopadas(Personas):- (viveEnUnDepartamento(Personas, Ambientes, Banios), Ambientes>3).
viveEnPropiedadesCopadas(Personas):- (viveEnUnDepartamento(Personas, Ambientes, Banios), Banios>1).
viveEnPropiedadesCopadas(Personas):- (viveEnUnLoft(Personas, Anio), Anio>2015).

barrioCopado(Barrio):- (viveEnUnaCasa(Personas, MetrosCuadrados), MetrosCuadrados>100) , (viveEnUnDepartamento(Personas, Ambientes, Banios), Ambientes>3).

barrioCaro(Barrio):-not(barato(Casa)).
                    barato(Casa):- (viveEnUnLoft(_, Anios), Anios<2005).
                    barato(Casa):- (viveEnUnaCasa(_, MetrosCuadrados), MetrosCuadrados<90).
                    barato(Casa):- (viveEnUnDepartamento(_, Ambientes, _), Ambientes<3).
