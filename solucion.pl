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

viveEnPropiedadesCopadas(Personas):- (viveEnUnaCasa(Personas, MetrosCuadrados), MetrosCuadrados>100)
viveEnPropiedadesCopadas(Personas):- (viveEnUnDepartamento(Personas, Ambientes, Banios), Ambientes>3).
viveEnPropiedadesCopadas(Personas):- viveEnUnDepartamento(Personas, Ambientes, Banios>1).
viveEnPropiedadesCopadas(Personas):- viveEnUnLoft(Personas, Anio>2015).

barrioCopado(Barrio):- viveEnUnaCasa(Personas, MetrosCuadrados >100) , viveEnUnDepartamento(Personas, Ambientes>3, Banios).

barrioCaro(Barrio):- 