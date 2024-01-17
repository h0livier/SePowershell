class ChromeDriver : OpenQA.Selenium.Chrome.ChromeDriver {

    ChromeDriver([string] $driverPath) : base($driverPath, [OpenQA.Selenium.Chrome.ChromeOptions]::new()){

    }

}

function New-ChromeDriver{
    param(
        [string] $ChromerDriverPath = ""
    )
    if($ChromerDriverPath -eq ""){
        return [ChromeDriver]::new()
    }else{
        return [ChromeDriver]::new($ChromerDriverPath)
    }
}