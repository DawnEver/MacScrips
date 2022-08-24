# QuickOpen
When I want to open a folder in the terminal deep in my Mac,I need to open its parent folders generation by generation.I believe my system is well-organized but maybe I need to open the project folder hundreds times in a developing cycle.

What makes it worse is that I need reveal it in finder at the same time(In any case,macos is not all based on file system like linux).

**NEED**: quick-open a directory in termianl and open in finder.

However,folder name is changing,and so is its absolute path,which may trigger bugs in scripts.Besides,I couldn't imagine that I would have to create a new script when I create a new project.

At this time,an amazing idea hit me that,developing a quickopen manager script,like brew,may be a good choice.

**NEED plus** a quickopen manager

### Start
1. clone from repo
2. click install and begin your quickopen
3. click uninstall to delete absolutely(the repo will not be delete)
4. profile files in ~/.quickopen




### Use QuickOpen

- **create a new quickopen**
  `quickopen -n [shotcut] [absolute path]`
  `quickopen new [shotcut] [absolute path]`

- **quickopen**
  `quickopen [shotcut]`

- **delete a quickopen**
  `quickopen -d [shotcut]`
  `quickopen del [shotcut]`

- **delete all quickopens**
  `quickopen -d all`
  `quickopen del all`

- **help**
	show a quickopen's absolute path 
  `quickopen -h [shotcut]`
  `quickopen help [shotcut]`
	
	show help
  `quickopen -h`
  `quickopen help`
  
- **list**
	'quickopen -l'
	'quickopen list'

- **version**
	'quickopen -v'
	'quickopen version'
	
### attentiton
Please give the quickopen name a shot before you name it to avoid unexcepted results.

**Reserved Word**
don't name a quickopen like these

- help

- list

- all

- version

- -.*			**(word begin with "-")**

