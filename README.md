![VeeamLogo](https://cdn.veeam.com/content/dam/veeam/global/veeam-graphics/veeam_logo_topaz-500.png.web.480.480.webp)


## Status service Veeam VBR

 *stop_veeam.ps1*
 
 Open powershell as administrator and run the command
 
 ~~~powershell 
 Get-Service Veeam*
 ~~~
 
 ![image](https://user-images.githubusercontent.com/25879162/216475754-1c308391-ecf8-46f1-b4f7-0d9758531d1c.png)


## Stop service Veeam VBR

 Open powershell as administrator and run the command
 
 ~~~powershell 
 Get-Service Veeam* | Stop-Service
 ~~~
 
![image](https://user-images.githubusercontent.com/25879162/216475478-2d56eba5-deaa-42a4-acdf-b3fa351a7df7.png)

## Start service Veeam VBR

Open powershell as administrator and run the command
 
 ~~~powershell 
Get-Service Veeam* | Start-Service
 ~~~
 
![image](https://user-images.githubusercontent.com/25879162/216475692-7c148a3d-48eb-4220-90e4-797f4061465b.png)
