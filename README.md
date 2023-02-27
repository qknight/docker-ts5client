# Motivation

This docker container, builds on top of ghcr.io/linuxserver/baseimage-rdesktop-web:focal, and one can then execute linux programs on the web basically.
In this case we execute the ts5client, which is quite handy for testing.

1. compile it

        docker build -t docker-ts5client:latest .

2. run the container

        docker run -v ${PWD}:/mnt -p 80:3000/tcp -i -t docker-ts5client:latest

3. Once you visit the webpage, localhost:80, the TeamSpeak will automatically start

  Inside the container, the ts5client should start automatically already. You can also use **xterm** with right mouse button to start the /ts5client/TeamSpeak binary or use the TeamSpeak link below the xterm link.

This work was inspired by https://gitlab.com/Linuxserver.io/docker-wireshark

# Windows warning

On Windows the line endings are LFCR and they must be LF only for the files in /root.

Note: If they have the wrong format the TeamSpeak application will not autostart nor will the menu be correct.

Files can be checked for encoding in the Docker Linux environment with `cat -A filename` and it should look like this:

    root@8a85ce970105:/mnt# cat -A /etc/cont-init.d/56-openboxcopy
    #!/usr/bin/with-contenv bash$
    $
    # default file copies first run$
    [[ ! -f /config/.config/openbox/menu.xml ]] && \$
        mkdir -p /config/.config/openbox && \$
        cp /defaults/menu.xml /config/.config/openbox/menu.xml && \$
        chown -R abc:abc /config/.config$

If you see any ^M it is windows LFCR encoding and needs conversion.

#  Limitations

* no VoIP (for example via webrtc)
* no copy'n'paste
* no persistance, all configuration is gone after restart
* no TLS, http only
* no access control (.htpasswd or similar)

# License

public domain as far as this Dockerfile goes
