#! /bin/sh
if [ -s /etc/localtime  -a ! -L /etc/localtime ]; then
          echo "=> File "
          sudo cp -rp /etc/localtime /etc/localtimeBKP
          sudo    rm -f  /etc/localtime
          sudo      ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
        elif [ -L /etc/localtime ]; then
                  echo "=> Link simbolico"
          else
                    echo "nada"
            fi
