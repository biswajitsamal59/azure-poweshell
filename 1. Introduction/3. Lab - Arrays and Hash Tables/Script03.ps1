# Arrays are index based
# String Array
$CourseVideos = 'Introduction', 'Installation', 'Variables'
$CourseVideos

# Interger Array
$CourseNumbers = 1,2,3
$CourseNumbers

# Another Syntax of declaring array
$CourseVideos_1 = @(
    'Introduction'
    'Installation'
    'Variables'
)
$CourseVideos_1
$CourseVideos_1[2] # Get
$CourseVideos_1[1] = 'Configuration' # Set
$CourseVideos_1

# Hash Table (Key/Value pairs)
$ServerName = @{
    Development = 'Server01'
    Testing = 'Server02'
    Production = 'Server03'
}
$ServerName['Development']
$ServerName.Development
$ServerName.Add('QA', 'Server04')
$ServerName