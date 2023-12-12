# Gitignore
https://git-scm.com/docs/gitignore  
https://help.github.com/en/github/using-git/ignoring-files  
https://github.com/github/gitignore  

```

# command level
nano .gitignore               # folder level,  general,                    synced with remote
nano .git/info/exclude        # workdir level, user specific workflow, NOT SYNCED with remote
git config core.excludesFile  # general ignorance, temp and backup files

file_pattern_to_exclude >> .gitignore

git rm –cached <filename> # stop tracking the file 
git rm -r --cached . 
git ls-files --ignored --exclude-standard
git ls-files --ignored --exclude-standard | sed 's/.*/"&"/' | xargs git rm -r --cached
 
git add . 
git commit -m ".gitignore: added …, removed …, changed …" 
git ls-files --other --directory #list of ignored files 
git push
```

## Whitelisting
https://jasonstitt.com/gitignore-whitelisting-patterns  
```
# typical
*
!*/
*/some/dir3/**
!.gitignore

# for all dir content
/*
!/whitelisteddir1
!/whitelisteddir2
!.gitignore

# to track only the dir but not the files in it
*
!.gitignore
```


## Windows user profile
```
.bash_history
ntuser*

Application Data/
Anwendungsdaten/

Cookies/
Documents/My Music/
Documents/My Pictures/
Documents/My Videos/

Local Settings/
Lokale Einstellungen/

My Documents/

NetHood/
Netzwerkumgebung/

PrintHood/
Druckumgebung/

Recent/
SendTo/

Start Menu/
Startmenü/

Templates/
Vorlagen/

Appdata/
Eigene Dateien/

Downloads/
Favorites/
Links/
Searches/

*.log
desktop.ini

.ssh/id_rsa*
.ssh/known_hosts
```




