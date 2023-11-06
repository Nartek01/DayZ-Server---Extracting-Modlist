# DayZ-Server---Extracting-Modlist

# Warning
THIS batch file sole purpose is to assist the ServerStartupstandard.bat because it reads from the Modlist.txt which in turns contains the publishedid,mod name.
Make the server run as "every1knowsdave" intended ( https://www.youtube.com/watch?v=FdJYsBqPgrI ). THEN use this batch file to save time.

# Introduction
I was looking on how to automate my DayZ Server hosting and stumbled upon "every1knowsdave" video about a certain start.bat that download DayZ mods based on their publishedid using SteamCMD. For the moment I only show how to use the .bat file itself not how to setup SteamCMD, Maybe in the future I will release a guide on how to setup SteamCMD...

# Prerequisite
SteamCMD, Steam Account with DayZ

# Installation
Simply download or clone the bat file and paste it in the server root folder. Meaning where the mpMissions and @mod1,@mod2 are located.
e.g The file structure should look something like this
keys
addons
@cf
@dabsFramework
extract_modlist.bat
Modlist.txt
ServerStartupstandard.bat
