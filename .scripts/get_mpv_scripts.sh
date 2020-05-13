# Get client thumbnail script
wget https://github.com/TheAMM/mpv_thumbnail_script/releases/download/0.4.2/mpv_thumbnail_script_client_osc.lua -O ~/.config/mpv/scripts/mpv_thumbnail_script_client_osc.lua

# Get server thumbnail script
wget https://github.com/TheAMM/mpv_thumbnail_script/releases/download/0.4.2/mpv_thumbnail_script_server.lua -O ~/.config/mpv/scripts/mpv_thumbnail_script_server-1.lua

# Create two threads for thumbnail
cp ~/.config/mpv/scripts/mpv_thumbnail_script_server-1.lua ~/.config/mpv/scripts/mpv_thumbnail_script_server-2.lua

# Get 
wget https://github.com/TheAMM/mpv_crop_script/releases/download/0.5.0/mpv_crop_script.lua -O ~/.config/mpv/scripts/mpv_crop_script.lua

