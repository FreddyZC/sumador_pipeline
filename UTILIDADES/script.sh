#!bin/bash
rm *.vcd
rm *.gtkw

if [ $1 == "1" ]; then
    cp ./UTILIDADES/SEED_FILES/probador.v ./probador.v
    cp ./UTILIDADES/SEED_FILES/000SUMADOR.gtkw ./000SUMADOR.gtkw
fi

if [ $1 == "2" ]; then
    cp ./UTILIDADES/SEED_FILES/probadorPUSHS.v ./probador.v
    cp ./UTILIDADES/SEED_FILES/000PUSHS.gtkw ./000PUSHS.gtkw
fi
