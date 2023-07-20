#!/bin/bash
function concatenate_files {
    for file in "$1"/*; do
        if [[ -f "$file" ]]; then
            cat "$file" >> output.txt
        elif [[ -d "$file" ]]; then
            concatenate_files "$file"
        fi
    done
}

> output.txt

concatenate_files './Hi-Motor-Hub-main'

# sh './concatenate_files.sh'  