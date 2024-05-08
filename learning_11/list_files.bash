#!/bin/bash

# what is stdout -->
# it is the default input stream where a program reasu ints input
# data. In Scripting it is often refers to the data provided to 
# a script via the keyboard or redirected from a file.

# what is stdnerror -->
# it is the default output stream where a program writes its error 
# messages in scriptting 

# in this example we going to list all the file that is 
# located in etc and direct it into the list_files.txt
# we also going to direct all the error into the error logs
# 1> --> meas that the only files that is not giving error will be
# directed 

#2 --> means that the only files that is giving errir will be directed 
find /etc/ -type f 1>log_file.txt 2>error_log.txt