# Custom Objects
$Course = [PSCustomObject]@{
    Id = 1
    Name = 'Az-104 Azure Administrator'
    Rating = 4.7
}
$Course
'The Course Id is '+ $Course.Id

# Array of Custom Objects
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
$CourseList
$CourseList[0].Name