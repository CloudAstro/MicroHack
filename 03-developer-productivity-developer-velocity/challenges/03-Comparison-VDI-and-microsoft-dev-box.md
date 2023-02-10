# Challenge 3 - Comparison VDI and Microsoft Dev Box

## Introduction

In this challenge, you will deploy two popular cloud-based Microsoft VDI solutions and make a comparison first-handed to microsoft dev box we previously created and used. 

[Solution for this challenge](../solutionguide/03-Deploy-on-Azure-App-Service-Solution.md)

## Goal 

After you complete this challenge, you will have a solid understanding about VDI and comparison between dev box and similar VDIs.

## useful resources

[Windows 365 Cloud Pc](https://www.microsoft.com/en-us/windows-365)


### Task 1: Windows 365 - “Desktop as a Service” (DaaS) 

- Obtain 1-month free trial of Windows 365 and assign a Windows 365 license. 
- Access your [new cloud PC](https://windows365.microsoft.com/)  
- Enter your credentials and logon you your Windows 365
- Install required applications. 
- Cancel Windows 365 within a month to avoid any charges. 


### Task 2: Azure Virtual Desktop 

- Logon to the Azure portal to access your subscription
- Create a new Resources Group
- Create vNET and Subnet for your AVD environment
- Create new Personal Host Pool 
- Create VM 
- Create workspace and register the newly created VM
- Assign your user to the newly created Session Host 
- Navigate to [https://client.wvd.microsoft.com/arm/webclient/index.html](https://client.wvd.microsoft.com/arm/webclient/index.html) and logon to your AVD session host 


### Task 3: Install required applications and remove resource. 
- Install your applications of choice
- Remove resources once you are done with testing 

## Challenge Completed if

Successful deployment of Windows 10 in the VDI solutions Windows 365 and AVD, understanding key benefits of cloud PC
