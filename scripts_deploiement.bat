@echo off
setlocal

REM Variables
set PROJECT_DIR=C:\Users\oussama2004\Desktop\Projet_SIP

REM Naviguer vers le répertoire du projet
cd /d %PROJECT_DIR%

REM Pull des dernières images depuis le registre Docker (optionnel)
docker-compose pull

REM Arrêter et supprimer les conteneurs existants
docker-compose down

REM Construire et lancer les conteneurs
docker-compose up --build -d

REM Vérifier le statut des conteneurs
docker-compose ps

REM Tests de déploiement (en option)
echo Tester l'application...

curl -s http://localhost | findstr "React App"
curl -s http://localhost:8080/api/users | findstr "oussama"

endlocal