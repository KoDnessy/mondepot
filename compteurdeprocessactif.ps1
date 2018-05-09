#Compter le nombre de service qui sont démarré via un script.


(Get-Service | Where-Object {$_.Status -eq "Running"}).length