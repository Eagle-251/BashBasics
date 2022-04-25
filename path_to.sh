#/bin/bash

file=$1

print_contents() {
    if type bat >/dev/null; then
        bat --pager=never $1
        echo "You have bat! Good job"
    else
        cat $1
        echo -e "\n\n\nYou should install bat.. it is waay better then cat ;)"
    fi
}

extension() {
    echo "$file" | awk -F "." {'print $2'}
}

#echo $file
#echo $(extension)

#MAIN

test_path() {
    if [ -z $file ]; then
        echo "You gotta provide a path!"
    elif [ -d $file ]; then
        echo -e "$file is a Directory\nHere is it's contents"
        ls -al $file
    elif [ -f $file ]; then
        case $(extension) in
        js)
            echo "\nLooks like that is a Javascript file..\n\n"
            print_contents $file
            ;;
        txt)
            echo "\nLooks like you have a text file there... \n\n"
            print_contents $file
            ;;
        "test")
            echo "Congrats case is working"
            ;;
        *)
            echo "I can only read .js and .txt files.."
            ;;
        esac
    else
        echo "Don't know what $file is sorry...."
    fi
}

test_path $1
