#! /bin/bash
#dialouge box for playing sopcast streams, requires sopcast launcher & mpv
action=$(zenity --window-icon "/usr/share/zenity/zenity.png"  --list  \
    --column="               📺  Stream Listing 📺"   --text=" 🐧               Pick a stream: ⏬↓📺📺📺📺📺↓⏬                🐧  " \
   "Discovery" "Discovery_ID" "Discovery_Science" "Diva_Universal" "Nat_Geo_Wild" "History" "HBO_2" "Film_Cafe" "Duck_TV" "Fox_Sport_Hd" "AXN")
ret=$?

[[ $ret -eq 1 ]] && exit 0


case $action in
    Discovery*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/256241 --player mpv" ;;
    Discovery_ID*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/256244 --player mpv" ;;
    Discovery_Science*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/256243 --player mpv" ;;
    Diva_Universal*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/253034 --player mpv" ;;
    Nat_Geo_Wild*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/253037 --player mpv" ;;
    History*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/253032 --player mpv" ;;
    HBO_2*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/149259 --player mpv" ;;
    Film_Cafe*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/256238 --player mpv" ;;      
    Duck_TV*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/148259 --player mpv" ;; 
    AXN*) cmd="sopcast-launcher sop://broker.sopcast.com:3912/253035 --player mpv" ;;     
    Fox_Sport_Hd*) cmd="mpv http://motorsport.hopto.org:8080/ " ;;     
    
        *) exit 1 ;;
    esac

eval exec $cmd 
