set PGPASSWORD=postgres
E: 
cd E:\fuel_man_prod_backup\.git
del HEAD.lock
del E:\fuel_man_prod_backup\prod.dump
F:
cd F:\softwares\postgresql-12.1-3-windows-x64-binaries\pgsql\bin
pg_dump.exe -U postgres -Fc -f E:\fuel_man_prod_backup\prod.dump fuelman
E:
cd E:\fuel_man_prod_backup
git add prod.dump
REM trucate time variable : there is space for hour digits less than two digits; for eg- "10:12:33" and " 8:15:25", hour 8 
REM has prevailing empty space, so to remove empty spaces; added ": =" for below time variable
set datetime= %date%-%time: =%
git commit -m %datetime%
git push origin main
cmd /k