Import-Module ".\SePowershell.ps1" -Force

$driver = New-ChromeDriver -ChromerDriverPath ($seleniumConfigPath + "\Drivers")

$driver.Navigate().GoToUrl("https://selenium.dev")