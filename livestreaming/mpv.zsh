############################################################
######## Multitasking Versions (currently broken) ##########
############################################################

# function to open livestream from twitch in a new window using multithreading
# Currently replaced by iina functionality
stream(){
   osascript <<-EOF
   tell application "iTerm"
   create window with profile "ZSH_livestream"
   select first window
   launch session "Default Session"
       tell current session of first window
           write text "streamlink twitch.tv/'$1' best --player 'mpv' --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=>>YOUR_TWITCH_CLIENT_ID_HERE<<"
       end tell
   end tell
EOF
}

############################################################
######## in Terminal  Version (working) ####################
############################################################

# function to open livestream from twitch in a new window using multithreading
termstream(){
            echo "$(streamlink twitch.tv/"$1" best --player 'mpv' --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=>>YOUR_TWITCH_CLIENT_ID_HERE<<)"
}

termstream720(){
            $ echo "$(streamlink twitch.tv/"$1" 720p60 --player 'mpv' --player-passthrough=hls --hls-segment-threads 2 --http-header Client-ID=>>YOUR_TWITCH_CLIENT_ID_HERE<<)"
}

termstreamdl(){
            zsh "cd ~/downloads; streamlink -o $(echo "$1" | tr / _).mp4 --hls-segment-threads 4 twitch.tv/'$1' source"
}
