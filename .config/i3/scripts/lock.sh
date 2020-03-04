#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#2c2c2ccc'  # default
T='#eeeeeeee'  # text
W='#eeeeeeee'  # wrong
V='#4c4c4cbb'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$D      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M"  \
--datestr="%a %d, %b %Y" \

sleep 5
xset dpms force off        
