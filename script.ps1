Get-ChildItem -Filter *.c | ForEach-Object {
    $command = "gcc $($_.Name) -o $($_.BaseName)"
    $command | Out-File -Append -FilePath .\compile_commands.json
}


