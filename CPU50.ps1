#3 
#Cree un script qui liste les processus qui utilisent plus que 50% de RAM, 
#on ne fait apparaitre que le nom du processus à l'affichage.

Get-Process | Where-Object {$_.CPU -gt 50} | Format-List -Property ProcessName
#Get-Process | Format-List -Property ProcessName