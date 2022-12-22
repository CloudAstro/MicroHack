1)     Developer Productivity / Developer Velocity – Dren Gjini 

Possible ideas for challenges: 

How to get up to speed as Developer 

Comparison Microsoft DevBox and GitHub Codespaces 

Comparison VDI and Microsoft DevBox 

Azure Deployment Environments  

 

 

MicroHack introduction and context 

In order to start working on a software project, a developer needs to first set up a development environment containing all the tools, libraries, dependencies and configuration necessary before the actual work can begin. This process is cumbersome, frustrating and very time-consuming. 

This MicroHack scenario walks through the use of modern dev tools  to help you to improve your productivity as a developer with a focus on the best practices and the design principles.  

This lab is not a full explanation of the complete tool set, please consider the following articles required pre-reading to build foundational knowledge. 

What is a Cloud Environment Development 

Why would we use the Cloud Environment for Development 

 

If you want to take your knowledge deeper than what is will be explaining here, we recommand reading: 
Github Codespaces or/and  Microsoft Dev Box 

 

Objectives 

After completing this MicroHack you will: 

Understand how to be more productive as a developer  

Understand How Development Environment can improve productivity 

know the basics of Cloud Environment Development 

Prerequisites 

In order to use the MicroHack time most effectively, the following tasks should be completed prior to starting the session. 

With these pre-requisites in place, we can focus on building the differentiated knowledge in ... that is required when working with the product, rather than spending hours repeating relatively simple tasks such as setting up.... 

In summary: 

Azure Subscription 

Github account 

Basic knowledge in coding (any programing language) 

Visual Studio Code installed on your machine 

Permissions for the deployment: 

Contributor on your Resource Group 

Other necessary permissions 

Lab environment for this MicroHack 

All you need in order to follow is a browser, Visual Studio Code 

Architecture 

At the end of this MicroHack your base lab build looks as follows: 

![image](Path to the architecture ) 

MicroHack Challenges 

Challenge 1 - How to get up to speed as Developer 

 

Goal 

The goal of this exercise is how to eliminate the installation libraries, dependencies and configuration necessary before the actual work can begin using Github codespaces 

 

Task 1: Open Github Codespaces 

Github offers 60 hours free usage if codespaces and thats what we are gonna select "Start for free" for learning purposes, you can then check the pricing for you purposes. 

 

GitHub Codespaces • GitHub 
C github.com/features/codespaces 
o 
Product 
Features 
Incognito (2) 
Solutions v Open Source 
Pricing 
Actions Packages Security Codespaces 
Copilot 
Code review 
Search 
Issues 
Search GitHub 
Discussions 
Sign in 
Sign up 
Start coding instantly 
with Codespaces 
Spin up fully configured dev environments in the cloud that start in seconds 
O hours a month free. 
Get started for free > 
PI ns and pricing > 
 

After, we will have to sign in with our GitHub account we created. 

 

 

Task 2: Clone or create a new project 

All 
Your instant dev environment 
Templates 
Go from code to commit faster on any project. 
1 
Explore quick start templates 
Blank 
By github @ 
Start with a blank canvas or import any packages you need. 
Go to docs 
Jupyter Notebook 
By github @ 
New codespace 
See all 
React 
By github @ 
A popular JavaScript library for building user interfaces based on ul 
components. 
Use this template 
Getting started with GitHub Codespaces 
JupyterLab is the latest web-based interactive development environment 
for notebooks, code, and data. 
Use this template 
Use this template 
o 
2022 GitHub, Inc. 
Learn core concepts 
New to Codespaces? Start here. Learn the 
core concepts and how to get started. 
Configure and manage 
Learn more about features like secret 
management and port forwarding. 
Terms 
P Hvacy 
Security 
Status 
Docs 
Contact GitHub 
Pricing 
API 
Training 
Slog 
Develop locally 
Access codespaces from within Visual Studio 
Code or Jet8rains. 
About 
 

As you can see in the picture above we have 2 options of getting started 
(1) chose a template (there are also 3 quick start templates avilable) 

(2) clone a repository existing in your GitHub account. 

 

We will be going with opion one. 

 

 

All 
Templates 
Choose a template 
Start a codespace from e template end get to developing with the power of a virtual machine in the cloud 
Blank 
By github @ 
Start with a blank canvas or import any packages you need. 
Use this template 
Jupyter Notebook 
By github @ 
JupyterLab is the latest web-based interactive development environment 
Ruby on Rails 
By github @ 
A full-stack web framework for building dynamic websites that deliver a 
rich user experience. 
Use this template 
Express 
By github @ 
Express is a minimal and flexible Nodejs web application framework. 
Use this template 
Flask 
By github @ 
Flask is a lightweight web application framework. 
Use this template 
React 
By github @ 
A pa 
components. 
t library for building user interfaces based on UI 
for notebooks, code, and data. 
Use this template 
Django 
By github @ 
Django is a high-level Python web framework that encourages rapid 
development and clean, pragmatic design. 
dj 
Status 
Use this template 
Next.js 
By github @ 
Nextjs is a React framework that gives you building blocks to create web 
applications. 
Use this template 
P react 
By github @ 
A fast 3kB alternative to React with the same modern API. 
Use this template 
Use this template 
O 
2022 GitHub, Inc. 
Terms 
Privacy 
Security 
Docs 
Contact GitHub 
Pricing 
API 
Training 
Blog 
About 
 

Click on templates and you will have an extended view on templates to start with. 

We will use the React template for ths MicroHack, so next click on "Use this template" inside the React template box. 

 

 

 

EXPLORER 
v CODESPACES-REACT ICODESPACES] 
.devcontainer 
.vscode 
node modules 
public 
src 
JS 
JS 
JS 
JS 
JS 
App.css 
App.js 
App.testjs 
index.css 
index.js 
lago.svg 
reportWebVitals.js 
setupTests.js 
JS App.js 
src > JS App.js > „ 
import ./App. css'; 
function App() { 
return ( 
(div 
(header className="App-header"> 
<img className-"App-10go" 
GitHub Codespaces <span React 
<p className=" 
Edit <code>src/App.js</code> and save to reload. 
href="https : //reactjs.org" 
blank" 
target 
noreferrer" 
Simple Browser x 
U https://cadreni-upgraded-tribble-qrv4xqg6q7p24q67-3000.preview.app.github.dev/ 
GitHub Codespaces D React 
Edit src/App.js and save to reload. 
Learn React 
.gitignare 
LICENSE 
{ } package-lock.json 
{ ) package.json 
README.md 
> OUTLINE 
> TIMELINE 
Codespaces 
main 
PROBLEMS 
OUTPUT 
Learn React 
DEBUG CONSOLE 
TERMINAL 
Compiled successfully! 
You can now view codespaces-react in the browser. 
Local : 
http : / / localhost : 3øøø 
on Your Network: http://172.16.s.4:3øøø 
Mote that the development build is not optimized. 
To create a production build, use npm run build. 
webpack compiled successfully 
@oAo 
bash 
Codespaces... 
Layout: LIS 
You will be redirected to a new page where if you used Visual studio code before, you should be familiar with, basically this is VS code running on your browser. 

After a few seconds the app should start automatically and you should end up with a few like in the image above. 

If your app did not start, in the terminal run the following command: npm start 

 
Now that we have the basics done, we can proceed to the next challenge. 

 

  

Challenge 2 : Working in a Cloud environment development  

Goal 

In this challenge we will be focusing on making our simple app production ready without having any tools in our local system installed. 

 

Task 1: Check the pre-installed tools version 

We can now either create a new terminal or stop the app from running in the current terminal by focusing on the terminal (left mouse click on the terminal field) and pressing Ctrl + c  for windows and linux  (CMD + M MacOs). 

 

EXPLORER 
v CODESPACES-REACT ICODESPACES] 
.devcontainer 
.vscode 
node modules 
public 
src 
JS 
JS 
JS 
o 
JS 
JS 
App.css 
App.js 
App.testjs 
index.css 
index.js 
lago.svg 
reportWebVitals.js 
setupTests.js 
JS App.js 
src > JS App.js > „ 
import ' ./App. css'; 
function App() { 
return ( 
(div 
(header className="App-header"> 
<img className-"App-10go" 
GitHub Codespaces <span React 
<p className=" small" > 
Edit <code>src/App.js</code> and save to reload. 
href="https : //reactjs.org" 
blank" 
target 
noreferrer" 
Simple Browser x 
U https://cadreni-upgraded-tribble-qrv4xqg6q7p24q67-3000.preview.app.github.dev/ 
GitHub Codespaces D React 
Edit src/App.js and save to reload. 
Learn React 
.gitignare 
LICENSE 
{ } package-lock.json 
{ ) package.json 
README.md 
> OUTLINE 
> TIMELINE 
Codespaces 
main 
PROBLEMS 
OUTPUT 
Learn React 
DEBUG CONSOLE 
TERMINAL 
Compiled successfully! 
You can now view codespaces-react in the browser. 
Local : 
http : / / localhost : 3øøø 
On Your Network: http://172.16.S.4:3øøø 
Mote that the development build is not optimized. 
To create a production build, use 
webpack compiled successfully 
npm run build. 
• @CADreni 
v16.1g.e 
• @CADreni 
8.19.3 
@CADreni 
4 'workspaces/ codespaces 
'workspaces/ codespaces 
'workspaces/ codespaces 
-react 
-react 
-react 
(main) 
(main) 
(main) 
$ node 
npm 
-version 
-version 
@oAo 
bash 
Codespaces... 
Layout: LIS 
The webpack should stop compiling our app and we can now write commands on the terminal. 
The first thing we should check is node version. We can simply write on the terminal: node –version and get the version of node which is installed in the cloud environment we will build of project on.  

 

 

Task 2: Code 

Its time we write our first code in our cloud environment development tool.  

 

EXPLORER 
v CODESPACES-REACT ICODESPACES] 
.devcontainer 
.vscode 
node modules 
public 
src 
JS App.js M 
src > JS App.js > App 
App.css 
App.js 
App.testjs 
index.css 
index.js 
lago.svg 
reportWebVitals.js 
setupTests.js 
import ' ./App. css'; 
function App() { 
return ( 
(div 
(header className="App-header"> 
<im n ' 
className 
Hello world 
<p className="sma11"> 
"A 
- logo" 
alt 
"logo" 
JS 
JS 
JS 
o 
JS 
JS 
Edit <code>src/App.js</code> and save to reload. 
href="https : //reactjs.org" 
blank" 
target 
noreferrer" 
Learn React 
< 'header > 
export default App; 
Simple Browser x 
U https://cadreni-upgraded-tribble-qrv4xqg6q7p24q67-3000.preview.app.github.dev/ 
Hello world 
Edit src/App.js and save to reload. 
Learn React 
.gitignare 
LICENSE 
{ } package-lock.json 
{ ) package.json 
README.md 
> OUTLINE 
> TIMELINE 
Codespaces 
main 
PROBLEMS OUTPUT DEBUG CONSOLE 
Compiled successfully! 
TERMINAL 
You can now view codespaces-react in the browser. 
Local : 
http : / / localhost : 3øøø 
on Your Network: http://172.16.s.4:3øøø 
Mote that the development build is not optimized. 
To create a production build, use npm run build. 
webpack compiled successfully 
@oAo 
bash 
Codespaces... 
Layout: LIS 
 
On line 9  replace everything with Hello world since we wont be focusing here to write a whole app, this should give you the idea how to proceed.  

Next (if you stopped the app from running in task 1) you should start running your app  by giving the following command in the terminal: npm start. 

You should end with a page similar to the image above after the execution. 

 

 

 

 

(Optional ) Also, you can copy the link in the simple browser and paste in a new tab in your browser, you should get the same result but now you will have a cleaner work environment inside VS Code 

 


 

 

 

Task 3: Push our code in a repository 

 

We dont need to create any repository by ourselves, GitHub codespaces will create it for us in some clicks only. 

 

JS App.js M X 
Edit 
Selection 
View 
Run 
Terminal 
Help 
Go to Repository 
My Cadespaces 
Open in VS Code Desktop 
Open in VS Code Insiders Desktop 
.gitignare 
LICENSE 
{ ) package-lock.json 
package.json 
README.md 
src > 
4 
12 
14 
15 
JS 
16 V 
Appjs > App 
import ' ./App. css'; 
function App() { 
return ( 
(div 
(header className="App-header"> 
<img classNa 
Hello world 
<p className=" small" > 
Edit < code>src/App.js</code> 
href="https : //reactjs.org" 
blank" 
target 
noreferrer" 
Learn React 
 

Click on the top-left menu and then "My Codespaces"  

 

You will then be in the main page of GitHub codespaces but now you can see you created react project in the dashboard. 

 

 

We should rename our project before we head to the next step. 

 

All 
Your codespaces 
Templates 
By repository 
Explore quick start templates 
Created from a template 
Blank 
By github @ 
Start with a blank canvas or import any packages you need. 
Go to docs 
Jupyter Notebook 
By github @ 
New codespace 
See all 
React 
By github @ 
A popular JavaScript library for building user interfaces based on ul 
components. 
Use this template 
JupyterLab is the latest web-based interactive development environment 
for notebooks, code, and data. 
Use this template 
Use this template 
Owned by CADreni 
Created from github/codespaces-react 
sturdy disco 
O 
2022 GitHub, Inc. 
@4-core • 
Open in 
Rename 
• Active 
Terms 
P Hvacy 
Security 
Status 
Docs 
Contact GitHub 
Pricing 
API 
Training 
Slog 
About 
Publish to a new repository 
Change machine type 
Stop codespace 
Delete 
 
In the project box appeared below the templates click the menu (three dots, right side of the box) and click on Rename.  

For my Project ive chosen to name it "First GitHub codespaces project".  

After we are done with the name, we should click again on the same menu and then Publish to a new repository. 

 

 

All 
Your codespaces 
Templates 
By repository 
Explore quick start templates 
Created from a template 
Blank 
By github @ 
Start with a blank canvas or import any packages you need. 
Go to docs 
Jupyter Notebook 
By github @ 
New codespace 
See all 
React 
By github @ 
A popular JavaScript library for building user interfaces based on UI 
components. 
Use this template 
Use this template 
Owned by CADreni 
Created from github/codespaces-react 
First Github codespaces project 
O 
2022 GitHub, Inc. 
Terms 
Privacy 
Security 
Status 
Docs 
Contact GitHub 
Pricing 
API 
Training 
Blog 
About 
JupyterLab is the latest web-based interactive development environment 
for notebooks, code, and data. 
Use this template 
@4-core • 
• Active 
Publish to a new repository 
This will create a new repository 
and push up your work. 
Name 
First-Github-codespaces-projec 
Public 
Anyone on the intemet can see 
this repository. You choose who 
can commit. 
@ a Private 
You choose who can see and 
commit to this repository. 
Create repository 
 

You should then chose if you want your repository to be private or public (you can later change this option). 

 

 

All 
Your codespaces 
Templates 
By repository 
Explore quick start templates 
Created from a template 
Blank 
By github @ 
Start with a blank canvas or import any packages you need. 
Go to docs 
Jupyter Notebook 
By github @ 
New codespace 
See all 
React 
By github @ 
A popular JavaScript library for building user interfaces based on UI 
components. 
Use this template 
Use this template 
Owned by CADreni 
Created from github/codespaces-react 
First Github codespaces project 
O 
2022 GitHub, Inc. 
Terms 
Privacy 
Security 
Status 
Docs 
Contact GitHub 
Pricing 
API 
Training 
Blog 
About 
JupyterLab is the latest web-based interactive development environment 
for notebooks, code, and data. 
Use this template 
@4-core • 
• Active 
Publish to a new repository 
This will create a new repository 
and push up your work. 
Name 
First-Github-codespaces-projec 
Public 
Anyone on the intemet can see 
this repository. You choose who 
can commit. 
@ a Private 
You choose who can see and 
commit to this repository. 
Create repository 
 

Click on create repository and after few seconds the repository will be created with the given name. 

The button then will be replaced with a new button see repository, upon clicking it will get you to your new GitHub rository page which should look like this:  

 


    

 

After your repository has been created you now can add collaborators, continue coding localy or hosting it to a cloud provider. 

 

 

 

 

Task 4: Working on an existing repository. 

Lets imagine a scenario where you need to work on a existing repository  in GitHub codespaces.  

 


 

Next go to the GitHub codespaces main page again and delete your existing codespace. 

 

 

Then we will approach option two of starting a codespace 

 


 

Press the New Codespace button top-right of the screen  

 

 

You will then be moved to a new page where you need to select your repository to work on, 

Branch, region, and machine type. 


  

Select the repository we created earlier and the other options are depending, 

 

 

 

Now we have a field which is not knowt before to us called Dev container Configuration.  

This are configurations predefined to (i.eg Port the app should run at, CPUs minimum requirement etc.) see more... 

 


 

 

To edit the devcontainer configuration, inside your project repository you will find a folder named .devcontainer and inside of it devcontainer.json which then you can edit based on the configuration you want. For now we are going to let the configuration like it is for this microhack. 

 


 

 

If your devcontainer configuration looks different, in order to follow up with this microhac it is recommanded to set the configuration like the json file above. 

 

 

On Machine Type you will recognize that the predefined configuration will not allow you to chose a machine type below that. 


 

Chose an appropriate machine type and create your codespace. Thats it! Now you are back to your cloud environment and can start imediately to code. 

 

 

Before proceeding to challenge 3,  

if you would like to code localy in GitHub codespaces there are ways to do that which are out of the scope of this microhack.  
If you are looking to code localy: how to use GitHub codespaces in Visual studio code, there is also support for other IDEs. 

 

 

Challenge 3 : Other CED and what is the difference 

Goal 

Know other Cloud environment development tools which exist and what fits you best 

 

 

Task 1: Other CED tools 

There are many possible cloud environments you can chose in the internet like: 

Microsoft Dev Box, 

AWS CLoud9, 

GitLab 

… and the list goes on. 

 

In this microhack we are going to focus comparing Microsoft Dev Box to GitHub codespaces and see what would benifit you more depending on the project you have or plan to have. 

 

 

 

Task 2: GitHub codespaces or Microsoft Dev Box 

 

(1) GitHub codespaces runs on Linux where as Microsoft Dev Box runs on Windows. 

 

(2) Source Code Management on GitHub codespaces is supported only on github, in Microsoft Dev Box any version control system would do the job. 

 

(3) GitHub codespaces supports workloads like Web Apps, APIs, Backends Microsoft Dev Box on the other hand any workload including desktop, games and much more 

 

(4) The IT in GitHub CodeSpaces is managed by github.com team and Microsoft Dev Box by the Endpoint Manager & Microsoft Azure. 

 

 

Task 3:  What is the best opion for you  

 

If we have a simple app like we have developed in this microhack then both opionions would do for development. 

In Production if the plan is Azure then Microsoft Dev Box would be a more ideal pick. 

 

For windows users Microsoft Dev Box offers an amazing feature running the cloud environament as a desktop page in which you also have access to other Microsoft software like office. 

 

To wrap everything up, in the end it depends on the needs and/or personal preference which one to go for. 

 

 

This was a basic introduction to Cloud Environment Development and is by far not everything what cloud environment offers you as a developer. It is recommanded to try on your own and see based on your personal experience where you would find yourself more productive. 

 

 

Task 4: Where have we reached 

 

By now your created GitHub repository which we created should look like this. 

 

If you ran into any problems it is good to double check if you missed any task or part of the challenge. 

 

Note! If you delete the repository, your codespace will be deleted aswell! 
