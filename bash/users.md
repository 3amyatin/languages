# Users

## Add PKA key to user
    adduser $USER
    usermod -aG sudo $USER
    
    cd /home/$USER
    mkdir .ssh
    echo $PUBKEY >> .ssh/authorized_keys
    chmod -R go= .ssh
    chown -R $USER:$USER .ssh
    passwd -d $USER
