#!/bin/bash

echo Yedekleyiciye Hos Geldiniz !!!
echo Yedek yerel makinaya ise 1'e uzak makinaya ise 2'ye basiniz:
read tus

echo Tercihiniz:$tus
echo Dosya yolunuzu su sekilde belirtin:/path/to/folder:
read yol

echo Hedef dosyanizin yolunu su sekilde belirtin:/path/to/folder:
read hedef

case $tus in
1)
rsync -avz $yol $hedef
;;

2)
echo Karsi kullanici adini giriniz:
read ad
echo Karsi makinanin ip adresini giriniz:
read ip

rsync -avz -e ssh $yol $ad@$ip:$hedef
;;

*)
echo Parametre disina ciktiniz.
;;
esac
