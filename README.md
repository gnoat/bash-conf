# bash-conf
Just some stuff I reuse a lot in bash and nushell.  Some functionality like:

  - Make a directory and move into it in a single command with `mc`
  - Create permanent shortcuts to directories with `aliad` (**ali**as **ad**d)
  - Some copy + paste stuff
  - etc

The `bash_init.sh` script will append to current bash configuration (works for both Ubuntu and Mac, no need for Windows as I use Ubuntu WSL on Windows anyways).  If you just run `./initialize.sh` it defaults to appending to ~/.bashrc, if you run `./initalize.sh mac` it will append to ~/.zshrc instead.

The `nu_init.nu` script will do the same as `bash_init.sh`, just for nushell instead of bash.  `nu_init.nu` works the same for all environments and doesn't need OS to be specified.`
