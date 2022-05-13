# If Statement
$NumberOfVideos = 10
if($NumberOfVideos -ge 20){
    "Greater or equal to 20"
} else {
    "Less than 20"
}

# While statement
$i = 1
while ($i -le 10) {
    $i
    ++$i
}

# For Statement
for ($i=1; $i -le 10; ++$i){
    $i
}

# Foreach Statement
$CourseName = 'Introduction', 'Installation', 'Variables'
foreach ($Course in $CourseName) {
    $Course
}