@echo off 

echo === Notifikasi Email ===
powershell -Command "send-MailMesessage -To 'reviantidaud2@gmail.com' 
-From 'reviantidaud0@gmail.com' -Subject 'Backup selesai' -Body 'Backup sudah selesai.' -SmtpServer 'smtp.gmail.com' -Port 587 -UseSsl -Credential (New-Object System.Management.Automation.PSC redential('reviantidaud0gmail.com', (Convert To-SecureString 'cpwmoydmfybxajan' -AsPlainText -Force)))"
pause