# Defined in /home/nathan/.config/fish/functions/todoAdd.fish @ line 2
function todoAdd
   set ticktickEmail todo+ravzks6tmxmm@mail.ticktick.com 
   set subject (rofi -p "Todo Name" -dmenu -l 0)
   if string length -q "$subject"
       set description (rofi -p "Description" -dmenu -l 0)
       echo $description | neomutt -s $subject $ticktickEmail
       return;
   end
   echo Aborted
end
