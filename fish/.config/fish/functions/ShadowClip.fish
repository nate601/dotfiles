function ShadowClip
    set socket (mktemp)
    
    mpv --input-ipc-server=$socket --keep-open=yes --force-window --idle >/dev/null 2>&1 & 
    read -P "Press enter when mpv has started"
    set i 1
    for f in *.mp4
        echo "Clip #$i"
        # mpv $f
        set filePath (realpath $f)
        echo '{ "command": ["loadfile", "'$filePath'"] }' | socat - $socket   
        set outfile "Clip$i.mkv"
        ffmpeg -ss 00:(read -P "Time: (MM:SS) ") -i $f -filter_complex "[0:a:0][0:a:1]amix=2:longest:weights=3 1[aout]" -map 0:V:0 -map "[aout]" -c:v copy -c:a aac -b:a 320k $outfile
        set deletefil (read -P "Delete original file?: (y)")
        if set --query deletefil
            rm $f
        else
            if test $deletefil = "y" 
                rm $f
            end
        end


        set i (math $i+1)
    end
    rm $socket
    pkill mpv
    ShadowCat
end
