# A function to break out parameters from an ARM template.
function global:GetTemplateParameter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $True)]
        [String]$Path
    )
    process {
        $template = Get-Content -Path $Path -Raw | ConvertFrom-Json;
        foreach ($property in $template.parameters.PSObject.Properties) {
            $result = [PSCustomObject]@{
                Name = $property.Name
                Description = ''
                DefaultValue = $Null
                AllowedValues = $Null
                Required = $Null
            }
            if ([bool]$property.Value.PSObject.Properties['metadata'] -and [bool]$property.Value.metadata.PSObject.Properties['description']) {
                $result.Description = $property.Value.metadata.description;
            }
            if ([bool]$property.Value.PSObject.Properties['defaultValue']) {
                $result.DefaultValue = $property.Value.defaultValue;
                $result.Required = "Optional"

                #region custom

                # set defaultValue to empty list in json format when property is array and defaultValue has count of 0
                if ($property.Value.type -eq 'array' -and $property.Value.defaultValue.Count -eq 0) {
                    $result.DefaultValue = '[]'
                }
                # set defaultValue to empty list in json format when property is object and defaultValue has no
                elseif ($property.Value.type -eq 'object' -and @($property.Value.defaultValue.PSObject.Properties).Count -eq 0) {
                    $result.DefaultValue = '{}'
                }
                # set defaultValue to 0 in json format when property is int and defaultValue is 0
                elseif ($property.Value.type -eq 'int' -and $property.Value.defaultValue -eq 0) {
                    $result.DefaultValue = '0'
                }
                # set defaultValue to "" in json format when property is string and defaultValue is ""
                elseif ($property.Value.type -eq 'string' -and $property.Value.defaultValue -eq "") {
                    $result.DefaultValue = '""'
                }

                #endregion custom
            }
            if ([bool]$property.Value.PSObject.Properties['allowedValues']) {
                $result.AllowedValues = $property.Value.allowedValues;
            }
            $result;
        }
    }
}
