#Pegar o diretótio atual
$scriptDirectory = path $MyInvocation.MyComand.Definition -Parent
#Arquivo de saída com todos sql
$outputFile = Join-Path - Path $scriptdiretory -ChildPath
"migration.sql"
#Verifica se arquivo ja existe , se existir deleta
if (Test-Path $outoutFile){
   Rewmove-Item $outoutFile
   }
   #Pega conteúdo dos arquivos
   $sqlFiles =  Get-ChildItem -Path $scriptDiretory -Filter
   -File | Sort-Object Name
   #Concatena Arquivos
   foreach($file in $sqlFile){
       Get-Content $file.FullName | Out-File  -Append -FilePath $outputFile
        "GO" | Out-File -Append -FilePath $ outputFile
       }
       Write-Host "Todos os arquivos foram combinados em $outputFile"
