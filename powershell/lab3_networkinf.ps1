Write-Host "Network information:"
Get-CimInstance Win32_NetworkAdapterConfiguration |
Where-Object {$_.ipenabled -eq "True" } | 
Format-Table Description, Index,
IPAddress,
IPSubnet,
#test
#DNSHostName,
#DNSServerOrder
@{n="DNSHostName";e={switch($_.DNSDomain){$Null{$myvar="No data found.."; $myvar}};if($Null -ne $_.DNSDomain){$_.DNSDomain}}},
@{n="DNSServerOrder";e={switch($_.DNSServersearchorder){$Null{$myvar="No data found.."; $myvar}};if($Null -ne $_.DNSServersearchorder){$_.DNSServersearchorder}}}