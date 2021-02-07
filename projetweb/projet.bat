@echo off
echo Appuyez sur une touche pour lancer le script
pause
call composer update
copy .env.example .env
php artisan key:generate
echo.
echo Assurez-vous que votre base de donnees soit bien demarree avant de faire la migration. Veuillez remplir votre fichier .env avant de continuer
echo.
pause
call php artisan migrate:fresh
call php artisan db:seed
pause