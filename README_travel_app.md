Readme : travel_app

Context: travel_app is meant to allow users to register in order to create a list or places to visit while travelling. The list contains the adress, price and opening hours of each listed place. 
To create this app, Flutter and Firebase have been used. 

Steps and commands before coding:

1)	Install git bash
2)	Install flutter for windows in C drive inside src file, 
In prompt : cd.. -> cd src -> git clone to install flutter onto computer 
Flutter console(in -> src -> flutter) command flutter doctor to check whether evrything is ok to start using flutter 
If problem check if environment variables are defined in path
From pub.dev/packages/ -> copy line from ‘firebase_auth’ and ‘cloud_firestore’ in pubpec.yaml

3)	Install visual studio-> select desktop dev C++ -> select MSVC v143 and C++ CMake and 10 SDK Windows 
4)	Create project on firebase , install Json files , change dependencies and pulgins
5)	Install Android studio giraffe (emulator to visualize the app while changes on code), open -> virtual device manager-> create device -> Nexus6-> Pie -> graphics : hardware
Plugins : install flutter(asks to install dart as well)-> create new flutter pjt, name, location, kotlin ?, android sdk ?, build graddle
Travel_app_2 -> lib main.dart-> no devices-> select Nexus6 API28 (if problem : specify location of android sdk in var environmnt  , android studio-> file -> prjt structure -> select android sdk )
Open prompt -> emulator -list-avds -> select avd wanted with this command : emulator -avd Nexus_6_API_28 -> emulator opens !!!

 Github repository: 
Git clone https://github.com/riouta/Travel_app-MobileApp.git
Git init
Git add . 
Git commit –m « description »
Git push origin main
 
