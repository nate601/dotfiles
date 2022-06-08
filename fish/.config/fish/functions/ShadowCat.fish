function ShadowCat
    set files (mktemp)
    for f in *.mkv
        set fullpath (realpath $f)
        echo "file $fullpath" >> $files 
    end
    ffmpeg -f concat -safe 0 -i $files -c copy final.mp4
    rm $files
end
