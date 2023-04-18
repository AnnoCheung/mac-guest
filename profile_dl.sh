#!/bin/bash
fileid="1s04o5Vy1Soev-q8gb89BZsXFR-IUoRQp"
filename="Default.zip"
html=`curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}"`

curl -Lb ./cookie "https://drive.google.com/uc?export=download&`echo ${html}|grep -Eio '(confirm=[a-zA-Z0-9\-_]+)'`&id=${fileid}" -o ${filename}

#echo ${html}|grep -Po '(confirm=[a-zA-Z0-9\-_]+)'
