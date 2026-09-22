echo '\033[43;30m[i] setting up appearance..\033[0m'

## Moving file to .config
echo '[i] copy all config file to .config'
cp -r fish/ ~/.config/
cp -r kitty/ ~/.config/
cp -r tmux/ ~/.config/
cp -r openbox/ ~/.config/

## Set temple os font 
echo '\033[1m[i] set the temple os font..\033[0m'

    ## Setting console font
    echo '[i] copy temple os font to /usr/share/consolefonts/'
    sudo cp font/templeos_font_22x22.psf.gz /usr/share/consolefonts/
    sudo cp font/templeos_font.psf.gz /usr/share/consolefonts/

    echo '[i] set font console setup with temple os 22x22'
    sudo sh -c "echo 'FONT=\"templeos_font_22x22.psf.gz\"' >> /etc/default/console-setup"

    echo '[i] reconfig setup'
    sudo setupcon


    ## Setting general font
    echo '[i] copying temple os font to /usr/share/fonts/'
    sudo cp font/templeos_font.ttf /usr/share/fonts/
    echo '[i] detecting font'
    fc-cache -f



echo '\033[32mdone to set\033[0m'
