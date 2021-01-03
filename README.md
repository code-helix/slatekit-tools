
# About
Slate Kit CLI (command line interface) application to create Slate Kit projects

# Links
Refer to https://www.slatekit.com/start/generators/ page on setup and the pages below

Page|Link|Notes
---|---|---
Site|https://www.slatekit.com/| Main Site
Setup|https://www.slatekit.com/start/setup/| Set up Dependencies
Tools|https://www.slatekit.com/start/generators/| Set up Generator tool
Source|https://github.com/code-helix/slatekit | Git Page for project

# Install
Ensure security -> privacy -> full disk access -> iterm2 ( of what ever terminal you use )
```bash
# WIP: This is just a test
brew tap code-helix/slatekit
brew tap 
brew install skt
skt
```

# Uninstall
```bash
brew uninstall skt
brew untap code-helix/slatekit
```


# Create
```bash
  slatekit new app -name="MyApp1" -package="company1.apps"
  slatekit new api -name="MyAPI1" -package="company1.apis"
  slatekit new cli -name="MyCLI1" -package="company1.apps"
  slatekit new env -name="MyApp2" -package="company1.apps"
  slatekit new job -name="MyJob1" -package="company1.jobs"
  slatekit new lib -name="MyLib1" -package="company1.libs"
  slatekit new orm -name="MyApp3" -package="company1.data"
```
