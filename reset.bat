dropdb --force Yingying
createdb Yingying
psql -d Yingying -f create-tables.sql
psql -d Yingying -f populate-tables.sql