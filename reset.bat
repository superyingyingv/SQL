dropdb --force Yingying-contacts
createdb Yingying-contacts
psql -d Yingying -f create-tables.sql
psql -d Yingying -f populate-tables.sql