#!/bin/bash

# Theme for TeXShop inspried by the Atom One Dark Vivid theme
# Monika Bialy
# Dec 28, 2016

# Colours from the theme's colors.less file
# DESCRIPTION	HEX	RBG
# ---------------------------------------
# cyan      #7FE2F7 0.498 0.886 0.969
# blue      #7DB9FE	0.490 0.725 0.996
# blue_2    #8599FF	0.522 0.600 1.00
# purple    #E29BF7	0.886 0.608 0.969
# green     #9FED9C	0.624 0.929 0.612

# red       #FB8578	0.984 0.522 0.571
# red_2     #CF8191 0.812 0.506 0.569

# orange    #EDDC96 0.929 0.863 0.588
# orange_2  #FDCE68 0.992 0.808 0.408

# grey_1    #D0D4E9	0.816 0.831 0.831
# grey_2    #63677F	0.388 0.404 0.498
# grey_3    #2C2f3A	0.173 0.184 0.227

# All colours are defined so you can easily switch them around
cyan=(0.498 0.886 0.969)
blue=(0.490 0.725 0.996)
blue_2=(0.522 0.600 1.00)
purple=(0.886 0.608 0.969)
green=(0.624 0.929 0.612)

red=(0.984 0.522 0.571)
red_2=(0.812 0.506 0.569)

orange=(0.929 0.863 0.588)
orange_2=(0.992 0.808 0.408)

grey_1=(0.816 0.831 0.831)
grey_2=(0.388 0.404 0.498)
grey_3=(0.173 0.184 0.227)

# Change Colours
echo Changing background colour...
defaults write TeXShop background_R ${grey_3[0]}
defaults write TeXShop background_G ${grey_3[1]}
defaults write TeXShop background_B ${grey_3[2]}

echo Changing text colour...
defaults write TeXShop foreground_R ${grey_1[0]}
defaults write TeXShop foreground_G ${grey_1[1]}
defaults write TeXShop foreground_B ${grey_1[2]}

echo Changing keyword colour...
defaults write TeXShop commandred ${blue[0]}
defaults write TeXShop commandgreen ${blue[1]}
defaults write TeXShop commandblue ${blue[2]}

echo Changing comment colour...
defaults write TeXShop commentred ${grey_2[0]}
defaults write TeXShop commentgreen ${grey_2[1]}
defaults write TeXShop commentblue ${grey_2[2]}

echo Changing cursor colour...
defaults write TeXShop insertionpoint_R ${purple[0]}
defaults write TeXShop insertionpoint_G ${purple[1]}
defaults write TeXShop insertionpoint_B ${purple[2]}

echo Changing {} and $ colour...
defaults write TeXShop markerred ${orange_2[0]}
defaults write TeXShop markergreen ${orange_2[1]}
defaults write TeXShop markerblue ${orange_2[2]}

echo Changing \index terms colour...
# Note: To enable this colouring, customize the TeXShop toolbar by adding the
# ColorIndex checkbox, and check it.
defaults write TeXShop indexred ${green[0]}
defaults write TeXShop indexgreen ${green[1]}
defaults write TeXShop indexblue ${green[2]}

# Change Other Options
echo Changing transparencies of windows...
defaults write TeXShop SourceWindowAlpha 1.00
defaults write TeXShop PreviewWindowAlpha 1.00
defaults write TeXShop ConsoleWindowAlpha 0.95

echo Done!
