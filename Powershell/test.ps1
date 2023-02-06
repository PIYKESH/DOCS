param (
      [Parameter(mandatory=$true)]
      [String[]]
       $ComputerName	  
	 )
	 
$Services = Get-Service -ComputerName $ComputerName
Foreach($services in $services) {
    
	    $ServiceStatus = $Service.status
		$ServicerviceDisplayName = $Service.displayname
		
	if ($services -eq 'running' ) {
		Write-Output "Service ok -Status of $ServiceDisplayName is $ServiceStatus"
	}
	Else{
		Write-Output "Check Service -Status of $ServiceDisplayName is $ServiceStatus"
	}
}