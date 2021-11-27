#!/bin/bash

STATUS=$(nordvpn status)

if [[ ${STATUS} =~ "Disconnected" ]] ; then
	echo "connecting"
	nordvpn c
else
	echo "disconnecting..."
	nordvpn d
fi
