#!/bin/bash

# Theme for TeXShop inspried by the Sublime Monokai theme
# Monika Bialy
# Jan 10, 2017

# Colours from the theme
# DESCRIPTION	HEX	RBG
# ---------------------------------------
# pink      #F92672 0.976 0.149 0.447
# orange    #FD971F 0.992 0.592 0.122
# yellow    #E6DB74 0.902 0.859 0.455
# green_1   #A6E22E 0.651 0.886 0.180
# green_2   #529B2F 0.322 0.608 0.184
# blue      #66D9EF 0.400 0.851 0.937
# purple    #AE81FF 0.682 0.506 1.000
# brown     #75715E 0.443 0.443 0.369
# grey      #272822 0.153 0.157 0.133
# white     #F8F8F0 0.972 0.972 0.941

# All colours are defined so you can easily switch them around
pink=(0.976 0.149 0.447)
orange=(0.992 0.592 0.122)
yellow=(0.902 0.859 0.455)
green_1=(0.651 0.886 0.180)
green_2=(0.322 0.608 0.184)
blue=(0.400 0.851 0.937)
purple=(0.682 0.506 1.000)
brown=(0.443 0.443 0.369)
grey=(0.153 0.157 0.133)
white=(0.972 0.972 0.941)

# Change Colours
echo Changing background colour...
defaults write TeXShop background_R ${grey[0]}
defaults write TeXShop background_G ${grey[1]}
defaults write TeXShop background_B ${grey[2]}

echo Changing text colour...
defaults write TeXShop foreground_R ${white[0]}
defaults write TeXShop foreground_G ${white[1]}
defaults write TeXShop foreground_B ${white[2]}

echo Changing keyword colour...
defaults write TeXShop commandred ${pink[0]}
defaults write TeXShop commandgreen ${pink[1]}
defaults write TeXShop commandblue ${pink[2]}

echo Changing comment colour...
defaults write TeXShop commentred ${brown[0]}
defaults write TeXShop commentgreen ${brown[1]}
defaults write TeXShop commentblue ${brown[2]}

echo Changing cursor colour...
defaults write TeXShop insertionpoint_R ${purple[0]}
defaults write TeXShop insertionpoint_G ${purple[1]}
defaults write TeXShop insertionpoint_B ${purple[2]}

echo Changing {} and $ colour...
defaults write TeXShop markerred ${blue[0]}
defaults write TeXShop markergreen ${blue[1]}
defaults write TeXShop markerblue ${blue[2]}

echo Changing \index terms colour...
# Note: To enable this colouring, customize the TeXShop toolbar by adding the
# ColorIndex checkbox, and check it.
defaults write TeXShop indexred ${orange[0]}
defaults write TeXShop indexgreen ${orange[1]}
defaults write TeXShop indexblue ${orange[2]}

echo Changing highlighted {} colour...
defaults write TeXShop highlightBracesRed ${green_1[0]}
defaults write TeXShop highlightBracesGreen ${green_1[1]}
defaults write TeXShop highlightBracesBlue ${green_1[2]}

echo Changing highlighted text colour between {} ...
defaults write TeXShop highlightContentRed ${brown[0]}
defaults write TeXShop highlightContentGreen ${brown[1]}
defaults write TeXShop highlightContentBlue ${brown[2]}

# Change Other Options
echo Changing transparencies of windows...
defaults write TeXShop SourceWindowAlpha 1.00
defaults write TeXShop PreviewWindowAlpha 1.00
defaults write TeXShop ConsoleWindowAlpha 0.95

echo Done!
