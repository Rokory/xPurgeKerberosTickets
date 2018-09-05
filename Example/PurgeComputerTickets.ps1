Configuration PurgeComputerTickets {
    Import-DscResource -ModuleName xPurgeKerberosTickets

    Node 'localhost' {
        xPurgeKerberosTickets PurgeComputerTickets {
            Key = 'FirstPurge'
            Target = 'Computer'        
        }
    }
}

PurgeComputerTickets
Start-DscConfiguration PurgeComputerTickets -Verbose -Wait -Force