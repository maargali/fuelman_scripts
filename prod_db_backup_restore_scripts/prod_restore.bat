set PGPASSWORD=postgres
F:
cd F:\softwares\postgresql-12.1-3-windows-x64-binaries\pgsql\bin
createdb -U postgres database_name
pg_restore.exe -U postgres  -d database_name  E:\fuel_man_prod_backup\prod.dump
cmd /k