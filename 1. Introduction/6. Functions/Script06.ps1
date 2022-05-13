# Functions
function Get-AppVersion {
    $PSVersionTable
}
Get-AppVersion

function Add-Integers ([int]$x, [int]$y) {
    'The sum of the Integers is' + ($x + $y)
}
Add-Integers 10 20 # Add-Integers -x 10 -y 20

function Get-Course {
    param( 
        [object[]] $CourseList
    )

    foreach ($Course in $CourseList) {
        $Course.Name
        $Course.Rating
    }
}

$CourseList = @(
    [PSCustomObject]@{
        Id = 1
        Name = 'AZ-104 Azure Administrator'
        Rating = 4.7
    },
    [PSCustomObject]@{
        Id = 2
        Name = 'AZ-305 Azure Architect Design'
        Rating = 4.5
    },
    [PSCustomObject]@{
        Id = 3
        Name = 'AZ-500 Azure Security'
        Rating = 4.9
    }
)

Get-Course $CourseList