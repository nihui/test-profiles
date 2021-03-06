#!/bin/sh

tar -xf toyBrot-20210215.tar.xz
cd toyBrot-master/
mkdir build
cd build
cmake ..
make -j $NUM_CPU_CORES
# echo $? > ~/install-exit-status
cd ~

echo "#!/bin/sh
cd toyBrot-master/build/
./\$@ > \$LOG_FILE
echo \$? > ~/test-exit-status" > toybrot
chmod +x toybrot
