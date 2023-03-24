c:
cd C:\Users\praba\OneDrive\Desktop\PROD\prod_db_backup
start prod_backup.bat
E:
cd E:\fuel-man-prod\fuelman\target
start /B java -jar fuelman-1.0.0.jar

E:
cd E:\fuel-man-prod\fuelman-ui
start /B serve -s build -p 8081