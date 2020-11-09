
function Get-FirstRecurringCharacter {
    param([string] $InputString)
    $charArray = $InputString.ToCharArray();
    $hash = @{}

    foreach ($item in $charArray) {
    if($hash.ContainsKey($item)) {
        return $item
        }
    $hash.Add($item, $true)
    }
}

Get-FirstRecurringCharacter("")
Get-FirstRecurringCharacter("123456")
Get-FirstRecurringCharacter("abcdedcba")
Get-FirstRecurringCharacter(".++()******")