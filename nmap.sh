#!/bin/bash
echo "           ___.-------.___"
sleep 0.03
echo "       _.-' ___.--;--.___ '-._ "
sleep 0.03
echo "    .-' _.-'  /  .+.  \  '-._ '-. "
sleep 0.03
echo "  .' .-'      |-|-o-|-|      '-. '. "
sleep 0.03
echo " (_ <O__      \  '+'  /      __O> _) "
sleep 0.03
echo "   '--._''-..__'._|_.'__..-''_.--' "
sleep 0.03
echo "         ''--._________.--'' "
sleep 0.03
echo " ==================================="
sleep 2
echo " ==           Nmap Lite           =="
sleep 0.07
echo " ==================================="
echo "powered by :Hammond-sys"|lolcat
echo
echo "Masukan IP target"
read target
echo
echo "Apakah target "$target" sudah benar?"
echo "y/n?"
read confirm
echo $confirm
if [ $confirm = "y" ]; then
echo "Sedang Melakukan Scanning"
i=0
max=100
while [ $i -le $max ]; do
echo -ne "\nScanning $target percentage : $i% "
sleep 0.03
if [ $i -eq 100 ]; then
echo -ne " [complete!]\n"
echo "========================================"
curl -s http://zlucifer.hol.es/Project_nmap_lite/index.php?target=$target
echo "======================================="
fi
let i++
done
else
echo "Kesalahan"
fi

