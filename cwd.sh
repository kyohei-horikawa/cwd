#!/usr/local/bin/fish

set len (count $argv)

if test "$len" -gt 0 
    and test "$len" -lt 2

    if test "$argv" = "-p"
        set wd (pwd)
        echo $wd > ~/cwd/.cwd_path
    else
        set wd $argv 
        echo $wd > ~/cwd/.cwd_path
    end
end

while read line
   set path $line
end< ~/cwd/.cwd_path

cd $path