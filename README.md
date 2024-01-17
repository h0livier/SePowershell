# Selenium Powershell Integration

This project has for purpose to let Powershell code interact with Web pages through Google Chrome.

Once the ChromeDriver object is instanciated, it can almost be used like the C# version of Selenium.  
As it remains Powershell, some changes should still be done.

An exemple on how to start is provide in the ```test.ps1``` file.

## Prerequisites

You need to make sure the Selenium folder is present in the project.  
This project only uses Google Chrome but other browsers could be used. Any Drivers could be add in ```.\Selenium\Drivers\```.

To let the WebDriver.dll recognize the *driver.exe you have two choices:
 - Choose a folder and install the chromedriver inside + add it in the environment PATH of the system
 - Fill the ```$seleniumConfigPath``` variable

### Driver compatibility

Please make sure that you version of the ChromeDriver and the version of the chrome Installed locally is equal  
Please check the [following link](https://www.nuget.org/packages/Selenium.WebDriver.ChromeDriver/) if you encounter this kind of error.  

```
Exception calling ".ctor" with "1" argument(s): "session not created: This version of ChromeDriver only supports Chrome version 114
Current browser version is 120.0.6099.217 with binary path C:\Program Files\Google\Chrome\Application\chrome.exe (SessionNotCreated)"
At C:\Users\ohay\Documents\projets\Powershell\Selenium\test.ps1:15 char:1
+ $chromeDriver = [OpenQA.Selenium.Chrome.ChromeDriver]::new("C:\Users\ ...
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [], MethodInvocationException
    + FullyQualifiedErrorId : InvalidOperationException
```
