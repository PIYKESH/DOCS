param (
      [Parameter(mandatory=$true)]
      [String[]]
       $ComputerName	  
	 )
	 
$Services = Get-Service -ComputerName $ComputerName
Foreach()