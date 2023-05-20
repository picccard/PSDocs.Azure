# https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/parameters#minimal-declaration


bicep build ./test-template.bicep

Import-Module PSDocs.Azure

Get-AzDocTemplateFile -Path ./test-template.json  | ForEach-Object {
  # Generate a standard name of the markdown file. i.e. <name>_<version>.md
  $template = Get-Item -Path $_.TemplateFile;
  $templateraw = Get-Content -Raw -Path $_.Templatefile;
  $templateName = $template.Directory.Parent.Name;
  $version = $template.Directory.Name;
  $docNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($template.Name);
  $docName = "$($docNameWithoutExtension)_$version";
  $jobj = ConvertFrom-Json -InputObject $templateraw

  $outputpathformds = $template.DirectoryName+'/generateddocs'
  New-Item -Path $outputpathformds -ItemType Directory -Force

  # Conversion
  $templatepath = $template.DirectoryName
  $convertedtemplatename = $template.Name
  $convertedfullpath = $templatepath+"\"+$convertedtemplatename
  $jobj | ConvertTo-Json -Depth 100 | Set-Content -Path $convertedfullpath
  $mdname = ($docNameWithoutExtension)+'.bicep'

  # Generate markdown
  Invoke-PSDocument -Module PSDocs.Azure -OutputPath $outputpathformds -InputObject $template.FullName -InstanceName $mdname -Culture en-US;
}
