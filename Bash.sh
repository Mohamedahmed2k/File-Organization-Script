#!/usr/bin/bash

# input ---> path 
PATHs=$1
# func move and mkdir
function move_dirc () {
               if [ ! -d "/$2" ]; then
              mkdir $1/$2
         fi
        cd ..
        mv $1 $2
}
# logic : # check if path exi
function path_exi () {
     if [ -e "$1" ]; then
    echo "Path \"$1\" exists"
    else 
    exit 1
    fi
}
# Make sure path ends with /
function dirc_in_path () {
# Make sure path ends with /
 for directory in $1/*; do
    echo $directory
  if [ -d "$directory" ]; then
    echo "directory \"$directory\" exists"
 fi
done
}
# searching
function search_for_exit () {
for directory in $1/*; do
        if [[ "${directory}" == *".pdf" ]]; then
        echo "${directory} contains: pdf"
move_dirc $directory "Files_pdf"
    fi
        if [[ "${directory}" == *".jpg" ]]; then
        echo "${directory} contains: image"
move_dirc $directory "Files_jpg"
    fi
    if [[ "${directory}" == *".txt" ]]; then
        echo "${directory} contains: .txt"
move_dirc $directory "Files_txt"
    fi
done
for directory in $1/*; do
    if [[ "${directory}" == *"."* ]]; then
        echo "${directory} contains: misc"
 move_dirc $directory "Files_misc"
    fi
done
}

# make dirc to each tybe 

# send each file to it's dir
function main() {
    # check if it a path
    path_exi  $1
    # check dir
   dirc_in_path $1
   # pdf
    search_for_exit $1

}

# output :  # print as tree
main $PATHs
