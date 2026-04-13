apsolutna_putanja=$1
datotecni_nastavak=$2
broj_argumenata=$#
ima=0

if [ "$broj_argumenata" -ne 2 ]; then
    echo "Potrebno je proslijediti tocno 2 argumenta."
    exit
fi



for dat in "$apsolutna_putanja"/*"$datotecni_nastavak"; do
       if [ -f "$dat" ]; then
           echo "Ove datoteke imaju taj nastavak: $(basename "$dat")"
           ima=1
       fi
done

if [ "$ima" -eq 0 ]; then
    echo "Nema takvih datoteka"
fi








