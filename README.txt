///ANGULAR CODE
<!-- SETUP ANGULAR AND RUN -->
npm install -g @angular/cli@17.1.0
set PATH=%PATH%;c:\users\l00172489\AppData\Roaming\npm
ng version
ng new hello-world
cd hello-world
ng serve
code 


//when saving
go to c drive, users, l nukmber -> project name -> ZIP the src folder and save it 
to one drive. then copy the src to replace the new angluar project src folder
when wanting to start it up again.


//create component within angular on command line terminal 
C:\PROJECTNAME> ng g c componentName --standalone



//create a interface 
> ng g interface interfaceName



//create a service in angular
> ng g s serviceName


//install bootstrap
projectName> npm install bootstrap --save
--> you will need to import bootstrap into the files, node_modules>bootstrap>dist>css>bootstrap.css 
--> https://getbootstrap.com/docs/5.3/forms/form-control/ <-reccomend



-------------------------------------------------------------------------------------------------------------------
get zip file here
https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.2.12/

1. stop mysql running on task manager in services.
2. download xxamp and exctract, on command prompt cd to that extracted path for xxamp, then xampp_start.exe in ther command prompt
3. after running, go to localhost, then if xamp is running it will pop up, create the DB by importing the db gaanfl2026 into xxamp
4. go to visual studio code and then cd into the 2026-restapi and run the index.js through npx nodemon index.js
3. test to see on port 3000 / routeName that youre getting the nfl data.