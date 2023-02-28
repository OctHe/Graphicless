# Shortcut

Bash has two style interface: emacs style and vi style.
Emacs style is the default style.
Vi style can type <Esc> to exit insert mode and use vim keybindings.

    CTRL+a/e    # Move to begin/End of the line
    CTRL+b/f    # Backward/forward
    CTRL+c      # Halt
    CTRL+d      # Logout when no editing command
                # Display the completion for the commmand
    CTRL+g      # Abort the editing command
    CTRL+h      # Delete the character before cursor
    CTRL+j/m    # <RETURN>
    CTRL+k/w    # Delete to the end/begin of the line
    CTRL+l      # Clears the terminal except the current line
    CTRL+n/p    # <DOWN>/<UP>
    CTRL+o      # <RETURN>, then display next line in the history

    CTRL+s/q    # Suspend/Resume shell output
    CTRL+r      # Search backward
    CTRL+t      # Transpose two characters
    CTRL+u      # Delete the line
    CTRL+v      # Enable to insert control strings
    CTRL+y      # Yank (for CTRL+k/u/w)
    CTRL+z      # Stop the current command, resume with 'fg' in the foreground

    CTRL+x (    # Recording a keyboard macro
    CTRL+x )    # Stop recording
    CTRL+x e    # Recall the record

    CTRL+x CTRL+e   # Invoke text editor in $EDITOR 
                    # Recommandation: export EDITOR=vim
                    # In vim, you can type the command
                    # Type 'ZZ' in normal mode to input multi-line commands for bash

    CTRL+S      # Search forword

    ALT+b/f     # Backward/Forward one word
    ALT+c       # Upper character
    ALT+d       # Delete word
    ALT+h       # 'run-help' program 
    ALT+l/u     # Upper, to the end/begin of the line
    ALT+n/p     # Search history to match the edited command
    ALT+r       # Revert changes of the command from the history
    ALT+t       # Transpose two words
    ALT+.       # Paste last word from the last command
    ALT+?       # List completions

    !!          # Repeat the last command
    !<n>        # Refer to command line 'n'
    !<string>   # Refer to command starting with 'string'


# Commands

## Directory

    cd                  # Change directory
    ls                  # List
    mv                  # Move
    rm                  # Remove
    pwd                 # Present work directory
    tree                # show directories and subdirectories in easilly readable file tree
    find                # Search directories
    cp                  # Copy
    mkdir               # Make directory
    rmdir               # Remove an empty directory


## File

    touch <file>        # Update timestamp
                        # Make a new file
    mktemp -t <file>    # Make a temp file in /tmp/ 
    cat <file>          # Display <file>
    nl <file>           # Number of lines 
    wc <file>           # Word count
    more/less <file>    # Display a file and type q to quit
    head/tail <file>    # Output the first/last lines of file 
    diff                # Compare two files
    sort <file>         # Sort the file line by line
    rev <file>          # Reverse strings in file line by line
    grep <pat> <file>   # Find for the string in the <file>
    sed                 # Stream editor

    ln -s <file> <link> # Symbolic link to <file>
    readlink <link>     # Display the file name of the symbolic link 

## Disk

    df                  # Disk free
    du                  # Disk used

# Process and Job

    Job &               # Run job in the background
    jobs                # List jobs
    ps                  # List processes in snapshot
    top                 # Real-time list processes
    kill/killall        # Kill process with PID/name
    bg                  # List background jobs
    fg                  # Bring the background job to foreground
    time <command>      # Execution time
    wait                # Wait all background jobs to finish
    sleep <num>         # wait <num> seconds before continuing
    yes                 # Always yes


## Bash script

## Variables

    var=value           # Variables, NO SPACE
    export VAR=value    # Environment variable to child, NO SPACE
    ${#var}             # Length of var

    list=(a b c)        # List
    ${list[@]}          # All elements in list


    read <var>          # Read from input and assign it to <var>
    let <var> = <expr>  # let a result of <expr> 
    declare <var>       # Declare variable and its attribute


| | Parameter Set and Not Null | Parameter Set but Null | Parameter Not Set |
|:----:|:----:|:----:|:----:|
|${parameter:-word}|substitute parameter|substitute word|substitute word|
|${parameter:=word}|substitute parameter|assign word|assign word|
|${parameter:?word}|substitute parameter|error, exit|error, exit|
|${parameter:+word}|substitute parameter|substitute null|substitute null|
|${parameter-word}|substitute parameter|substitute null|substitute word|
|${parameter=word}|substitute parameter|substitute null|assign word|
|${parameter?word}|substitute word|substitute null|error, exit|
|${parameter+word}|substitute word|substitute word|substitute null|

    ${variable#pattern}     # Remove Smallest Prefix Pattern
    ${variable##pattern}    # Remove Largest Prefix Pattern
    ${variable%pattern}     # Remove Smallest Suffix Pattern    
    ${variable%%pattern}    # Remove Largest Suffix Pattern     


# IF Condition

    test expression
    [ expression ]
    [[ expression ]]

## String

    str1 == str2    # Match
    str1 != str2    # Not match
    str1 < str2     # Less
    str1 > str2     # Greater
    -z str1         # Null
    -n str1         # Not null

## File

    -a file         # File
    -b file         # Block file
    -c file         # character file
    -d file         # Directory
    -e file         # File
    -f file         # Regular file
    -r file         # Read
    -s file         # Not empty
    -w file         # Write
    -x file         # Execute
    -N file         # File was modified
    -O file         # File belongs to user
    -G file         # File belongs to user group

## NUMBERS

    -lt         # Less than
    -le         # Less than or equal
    -eq         # Equal
    -ge         # Greater than or equal
    -gt         # Greater than
    -ne         # Not equal

# Input/Output redirector

    |           # Pipe
    < file      # Redirect input
    > file      # Redirect output
    >> file     # Redirect output and append to a file
    <> file     # uses file as both standard input and standard output
    2>&1        # Redirect error output to standard output
    n<&m        # Redirect input file n to m
    n>&m        # Redirect output file n to m 
    
    cat << EOF # Here document
        Text
    EOF

    tee <file>  # output input to both terminal and a file 


# Debug


Run the script

    bash -n scriptname  # Check errors without running
    bash -v scriptname  # Print shell input lines as they are read.
    bash -x scriptname  # Print commands and their arguments as they are executed.

Set options in script

    set -o noexec       # Check errors without running
    set -o verbose      # Print shell input lines as they are read.
    set -o xtrace       # Print commands and their arguments as they are executed.


Trap

    trap

# Tricks

Bash supports some interesting tricks, but they are always useless.

```bash
    # With eval, bash can print the value of a variable as well as its name
    # In this case, the value of BLACK is a string to control the string's color
    # The value of COLOR is the string "BLACK"
    BLACK='\e[30m'
    COLOR=BLACK
    eval echo -e '$'{${COLOR}}${COLOR}
```