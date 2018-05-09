#6 - Créer une fonction displayprocessinfo()
#Qui demande en argument une chaine de caractère et qui affiche comme résultats : 
#Le  Id, Name, Description, Product, VM, StartTime des processus trouvé
Function displayprocessinfo  
{    
$nomduprocess = Read-Host "Veuillez Entrez le nom du process ?"    
Get-Process | Where-Object {$_.ProcessName -eq "$nomduprocess"} | Format-List -Property ProcessName, Id, VM, Description, Product, StartTime
} 
displayprocessinfo