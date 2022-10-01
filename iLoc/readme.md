# iLock

**A quick-open script manager**
helps you lock/unlock folders quickly 

## Table of Contents
- [Install](#install)
- [Usage](#usage)
	- [Use](#Use)
  - [Attention](#Attention)
- [Log](#Log)
- [Related Efforts](#related-efforts)
- [Maintainers](#maintainers)
- [Contributing](#contributing)
- [License](#license)


## Install
1. clone from github
2. click *install* and follow **Useage**
3. click *uninstall* to delete quickopen absolutely
4. profile files in ./.ilock/
5. you can run `zsh ./test.sh` to test

## Usage
lock files to make it only readable
### Use
- initialize the folder with ilock
  `ilock init`
  > create profile folder ./.ilock/

- delete ilock and profile file
  `ilock delete`

- lock and unlock target files
  `ilock lock [target filepath]`#(relative path are recommanded for target filepath)
  `ilock unlock [target filepath]`

  `ilock lock .`# lock all files in the folder
  `ilock unlock .`# unlock all files in the folder

  `ilock .`#lock/unlock all files acccording to its state automaticlally

- show lock/unlock log
  `ilock log`
  >log records each change in lock status and its user("$USER")

- show lock status at present
  `ilock status`

- show help
  `ilock help`
  `ilock version`


### Attentiton
pass

## Log
20221001
Its normal and efficient to control versions with *git* or *svn* when developing in team.But it may be your wishful thinking to work with teammates not good at these useful tools(even not good at computer).
It's merciful to see all progress come down to zero after a version sync.In this team,using git would be a disaster.

In a project,my failure in git server (problems like server version delay and uncomplete version sync annoy me a lot)pushes me to develop my own tool.Git was developed by linus himself,so why couldn't me?

When I reading about multi-threads,it hit me that 'lock' can help me.Efficency vs safety,I choose the latter.

[to-do] check files each time to avoid unexcepted changes(make shotcuts like git)

## Related Efforts
None

## Maintainers
[@LinXu](https://github.com/DawnEver)

## Contributors
This project exists thanks to all the people who contribute.

## License

[MIT](LICENSE) © Richard Littauer
