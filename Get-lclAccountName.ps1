function Get-lclAccountName {

    [CmdletBinding()]
    param (
        [Parameter(HelpMessage = 'This is a demo for the parameter')]
        [string]
        $Namez
    )

    Begin{
        $VerbosePreference = 'Continue'
    }

    Process{


        try {

            Write-Verbose 'This is the first expression'

            Get-CimInstance -ClassName Win32_Account -Filter "Name = '$Namez'" | 
            Format-List Domain, Description, Caption, LocalAccount, PSComputerName

        }
        catch {

            Write-Verbose "This is the else expression run"
            
            Get-CimInstance -ClassName Win32_Account -Filter "SID like '%-100%'" | 
            Format-List Domain, Description, Caption, LocalAccount, PSComputerName

        }
    }

    End{}
}

Get-lclAccountName