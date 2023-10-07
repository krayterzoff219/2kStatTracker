#!/bin/bash
export PGPASSWORD='postgres1'
export PGPORT=15432
BASEDIR=$(dirname $0)
DATABASE=2kstats
for i in 18 17 16 15 14 13 12 11 10 9
do
    file="c:/program files/postgresql/$i/"
    FILEPATH="c:/program files/postgresql/$i/bin"
    if [ -d "$file" ]
    then
        echo "Postgres version $i found."
        createdb -U postgres -p $PGPORT $DATABASE &&
        "$FILEPATH/psql.exe" -U postgres -p $PGPORT -d $DATABASE -f "$BASEDIR/schema.sql" &&
        "$FILEPATH/psql.exe" -U postgres -p $PGPORT -d $DATABASE -f "$BASEDIR/data.sql"
        break
    fi
done