Get-process | where {($_.Name -like "Veeam*")} | stop-process -Force
Get-Service | where {($_.Name -like "Veeam*")-and ($_.Status -eq "Running")} | Stop-service -Force
