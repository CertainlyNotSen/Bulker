#!/bin/bash

# --- CONFIGURATION: Define your app groups ---
# Format: "Label" "command_to_run"
APPS=(
    "Firefox Browser" "firefox"
    "LibreOffice Writer" "libreoffice --writer"
    "VS Code" "code"
    "GIMP Image Editor" "gimp"
    "VLC Media Player" "vlc"
    "Terminal" "gnome-terminal"
)

# --- GUI Generation ---
# Generate the list format cleanly via a function to avoid subshell space splitting
generate_list() {
    for ((i=0; i<${#APPS[@]}; i+=2)); do
        echo "FALSE"
        echo "${APPS[i]}"
    done
}

# Pass the generated list directly into Zenity
SELECTED_APPS=$(generate_list | zenity --list --checklist \
    --title="Bulk App Opener" \
    --column="Select" --column="Application" \
    --width=400 --height=500 --separator="|")

# If the user clicks 'Cancel' or closes the window, exit cleanly
if [ $? -ne 0 ]; then
    exit 0
fi

# --- Launching the Apps ---
# Loop through the selections and launch them in the background
for ((i=0; i<${#APPS[@]}; i+=2)); do
    APP_LABEL="${APPS[i]}"
    APP_CMD="${APPS[i+1]}"
    
    # Check if the current app label is in the selected output (separated by '|')
    if [[ "|${SELECTED_APPS}|" == *"|${APP_LABEL}|"* ]]; then
        # Launch the app and detach it so the script can keep running
        $APP_CMD > /dev/null 2>&1 &
    fi
done

exit 0
