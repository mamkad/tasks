$Source    = "D:\Eltex\logs"
$LogFile   = "C:\Users\Admin\Logs\clean.log"
$LogString = "Eltex. Временные файлы очищены"

# Запись в лог
function WriteLog()
{
    $DateTime = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
    $LogMessage = "$DateTime : $LogString"
    Add-content $LogFile -value $LogMessage
}

# Поиск и удаление
function Main()
{
    $Filelist = Get-ChildItem -Path $Source -Filter "*.tmp " -File

    if (-not $Filelist) { return }
    
    $Filelist

    foreach ($File in $Filelist)
    { 
        Remove-item "$Source\$File"
    }

    WriteLog
}
