
next=$(i3-msg -t get_workspaces | jq -r '.[]| select(.focused).num + 1')
prev=$(i3-msg -t get_workspaces | jq -r '.[]| select(.focused).num - 1')


if [[ $1 == "next" ]]
then
    if [[ $2 == "move" ]]
    then
    i3-msg move container to workspace number "$next"
    fi
    
    i3-msg workspace number "$next"
fi

if [[ $1 == "prev" ]]
then
    if [[ $2 == "move" ]]
    then
    i3-msg move container to workspace number "$prev"
    fi
    i3-msg workspace number "$prev"
fi
