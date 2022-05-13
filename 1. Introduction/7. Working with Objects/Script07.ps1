$Mobiles = @(
    [PSCustomObject]@{
        Brand = "Samsung"
        Model = "Galaxy S22 Ultra"
        Storage = @("128GB", "256GB", "512GB")
        Colors = @("Black", "White", "Pink Glod")
        DefaultApps = @(
            @{
                Name = "Assist App"
                Version = 1.2
                Status= "Installed"
            },
            @{
                Name = "Browser App"
                Version = 2.0
                Status= "Installed"
            }
        )
    },
    [PSCustomObject]@{
        Brand = "Samsung"
        Model = "Galaxy S22"
        Storage = @("128GB", "256GB")
        Colors = @("Black", "White", "Grey")
        DefaultApps = @(
            @{
                Name = "Assist App"
                Version = 1.2
                Status= "Installed"
            },
            @{
                Name = "Browser App"
                Version = 2.0
                Status= "Installed"
            }
        )
    }
)

$Mobiles[0].DefaultApps.Item(0)

$Mobiles | Where-Object { $_.Model -eq "Galaxy S22" } | Select-Object -Property Model,Storage