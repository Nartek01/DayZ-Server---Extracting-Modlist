# DayZ-Server---Extracting-Modlist

# Warning
THIS batch file sole purpose is to assist the ServerStartupstandard.bat because it reads from the Modlist.txt which in turns contains the publishedid,mod name.
Make the server run as "every1knowsdave" intended ( https://www.youtube.com/watch?v=FdJYsBqPgrI ). THEN use this batch file to save time.

# Introduction
I was looking on how to automate my DayZ Server hosting and stumbled upon "every1knowsdave" video about a certain start.bat that download DayZ mods based on their publishedid using SteamCMD. For the moment I only show how to use the .bat file itself not how to setup SteamCMD, Maybe in the future I will release a guide on how to setup SteamCMD...
Todo this manually you would need to open meta.cpp and copy the value of the variable publishedid and the name of the mod and paste it inside Modlist.txt resulting in inside Modlist.txt
```
123124,@SomeModFromWorkshop
```

Now imagine doing it 75 times or more....this is why extract_modlist.bat exist because it checks all the folder with "@" in their name and retrieve the publishedid, paste it into output.txt the retrieve parents folder of the meta.cpp which is the modname and put it beside resulting in inside the ouput.txt
```
123124,@SomeModFromWorkshop
```

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

# Usage
Run the extract_modlist.bat -> rename the output.txt to Modlist.txt
