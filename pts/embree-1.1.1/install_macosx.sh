#!/bin/sh

tar -xf embree-3.9.0.x86_64.macosx.zip
unzip -o asian_dragon.zip
unzip -o asian_dragon_obj.zip
unzip -o crown.zip

echo "#!/bin/sh
LD_LIBRARY_PATH=embree-3.9.0.x86_64.macosx/lib:\$LD_LIBRARY_PATH ./embree-3.9.0.x86_64.macosx/bin/\$@ --threads \$NUM_CPU_CORES > \$LOG_FILE 2>&1
echo \$? > ~/test-exit-status" > embree
chmod +x embree
