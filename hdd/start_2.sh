#!/bin/sh
export QEMU_S2E=/home/zaddach/projects/avatar-pandora/s2e-build/qemu-release/arm-s2e-softmmu/qemu-system-arm
export PYTHONPATH=/home/zaddach/projects/avatar-pandora/avatar-python:/home/zaddach/projects/avatar-pandora/avatar-gdbstub/scripts 

python3 avatar_hdd_2.py  --power-control /home/zaddach/projects/avatar-pandora/avatar-samples/hdd/on_off.sh --serial /dev/ttyUSB0 --gdbstub /home/zaddach/projects/avatar-pandora/avatar-gdbstub-build/cmake/gdbstub_ST3320413AS_0x7000/gdbstub_ST3320413AS_0x7000.bin --gdbstub-loadaddress $(( 0x7000 )) -vvv
