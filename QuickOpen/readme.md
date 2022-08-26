# QuickOpen

**A quick-open script manager**
helps you open folder quickly and manage your quickopens(shell scripts to open folder in terminal).


### Start
1. clone from github
2. click *install* and follow **Use QuickOpen**
3. click *uninstall* to delete quickopen absolutely
  > the repo and your quickopens will not be delete.Please run `quickopen del all` before

~~4. profile files in ~/.quickopen~~
5. you can run `zsh ./test.sh` to test

### Use QuickOpen

- **create a new quickopen**
  ~~`quickopen -n [shotcut] [targetPath]`~~
  `quickopen new [shotcut] [targetPath]` (targetPath should be absolute path)

- **quickopen**
  `quickopen [shotcut]`
  `quickopen o-[shotcut]`
  `o-[shotcut]`	
  
  > o-[shotcut] : quickcut with a prefex "o-" 
  
- **delete a quickopen**
  ~~`quickopen -d o-[shotcut]`~~
    ~~`quickopen -d [shotcut]`~~
  `quickopen del o-[shotcut]`
  `quickopen delete o-[shotcut]`
  `quickopen del [shotcut]`
  `quickopen delete [shotcut]`

- **delete all quickopens**
  ~~`quickopen -d all`~~
  `quickopen del all`

- **help**
  show a quickopen's absolute path 
  ~~`quickopen -h o-[shotcut]`~~
  ~~`quickopen -h [shotcut]`~~
  `quickopen help o-[shotcut]`
  `quickopen help [shotcut]`

  search quickopen according to absolute path 
  ~~`quickopen -h [targetPath]`~~
  `quickopen help [targetPath]`

  show help
  ~~`quickopen -h`~~
  `quickopen help`

- **list**
  ~~'quickopen -l'~~
  'quickopen list'

- **version**
  ~~'quickopen -v'~~
  'quickopen version'

### attentiton
~~Please give the quickopen name a shot before you name it to avoid unexcepted results.~~

**Reserved Word**
don't name a quickopen like these to avoid unexcepted results.

- help

- list

- all

- version

- del,delete

- o-*
	
	> o-* : word prefixed with 'o-'
### Developing Log

When I want to open a folder in the terminal deep in my Mac,I need to open its parent folders generation by generation.I believe my system is well-organized but maybe I need to open the project folder hundreds times in a developing cycle.

What makes it worse is that I need reveal it in finder at the same time(In any case,macos is not all based on file system like linux).

**NEED**: quick-open a directory in termianl and open in finder.

However,folder name is changing,and so is its absolute path,which may trigger bugs in scripts.Besides,I couldn't imagine that I would have to create a new script when I create a new project.

At this time,an amazing idea hit me that,developing a quickopen manager script,like brew,may be a good choice.

**NEED plus**: a quickopen manager

Hating files prefixed with "." accumulating in User path,I decided take a different route.

I planned to maintain profile file ('~/.quickopen') in User path,but an absolutely different idea catch me now.Placing all quickopens in work directory(usr/local/bin) and prefixing each with "o-" to distinguish.Then quickopen list is easy to get and I don't need to design a complex sync system to get list updated when user delete quickopen system via other ways.

By coincidence, I find script 'open [alias]'in terminal will create a new terminal window and cd to its source directory.So I don't need to battle with subshell and tupe in shell.So I create a collection of targetPath alias named *alias*. in '~/.quickopen/alias'
However.I found the difference between aliases created by `ln -s` and finder,and my flame estinguished in face of the gap between Aliases and Symbolic links.

I get different results when I run script `quickopenList=($(find /usr/local/bin -name "o-*" -exec basename {} \;)); echo $quickopenList`in bash and zsh.
