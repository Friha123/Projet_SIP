# Variables
$composeFile = "C:\Users\oussama2004\Desktop\Projet_SIP\docker-compose.yml"


# Mettre à jour les images Docker
Write-Output "Updating Docker images..."
docker-compose -f $composeFile pull

# Lancer les services
Write-Output "Starting Docker services..."

docker-compose -f $composeFile up -d

Write-Output "Deployment completed successfully." 
