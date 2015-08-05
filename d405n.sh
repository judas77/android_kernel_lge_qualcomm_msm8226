export ARCH=arm
export CROSS_COMPILE=~/android/cc/bin/arm-eabi-
make d405n_defconfig && make -j2 && ./dtbToolCM -2 -o ./arch/arm/boot/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/
mkdir -p ~/android/kernel-out/modules && find . -name "*.ko" -exec cp {} ~/android/kernel-out/modules \;
find . -name "*zImage" -exec cp {} ~/android/kernel-out \;
find . -name "*boot.img" -exec cp {} ~/android/kernel-out \;
