#!/bin/bash
copy() {
    # echo "$1 -> $2"
    # echo "${root}"
    
    local source_parts=""
    local dest_parts="" 
    local dest_path""
    IFS="/"
    read -ra source_parts <<< "$1"
    read -ra dest_parts <<< "$2"
    unset IFS
    if [[ "${dest_parts[-1]}" == "${source_parts[0]}" ]];then
        dest_path=$(IFS=/ ; echo "${dest_parts[*]}/${source_parts[*]:1}")
    else
        dest_path=$(IFS=/ ; echo "${dest_parts[*]}/${source_parts[*]}")
    fi
  
   
    if [[ -d "$1" ]]; then
        # echo "directory $i"
        mkdir -p "$dest_path"
    elif [[ -f "$1" ]] || [[ -L "$1" ]]; then
        cp -a "$1" "$dest_path"
    else
        echo "$1 No such file or directory"
    fi

}
dest=$2
# rm -r $dest
mkdir -p $dest
find "$1" -follow -print0 |
    while IFS= read -r -d '' i; do
        IFS="/"
        # parts=(${i//\// })
        read -ra parts <<< "$i"
        root="${parts[0]}"
        source=$i
        if [ "$root" == "." ] || [ "$root" == "" ]; then

            source=("${i[@]:2}")
        fi
       
       
        copy "${source}" "$dest" &
        if [[ -d "$source" ]]; then
            wait
        fi
        
        unset IFS

    done
wait
echo "finished"
