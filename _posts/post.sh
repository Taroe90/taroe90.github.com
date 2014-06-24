

EDIT=kate
DATE=`date +%Y-%m-%d`

usage() {
    echo "usage : post.sh title"
}

get_edit() {
    which kate 2>&1 1>/dev/null && return 0
    which vim 2>&1 1>/dev/null && EDIT=vim && return 0
}

[ $# != 1 ] && { 
    usage
    exit 1
}

get_edit
$EDIT $DATE-$1.md

