#!/bin/bash
set -e

ROOT_DIR="$(pwd)"
KERNEL_CONFIG_FILE="target/linux/$(ls target/linux | head -n 1)/config-$(cat include/kernel-version.mk | grep LINUX_VERSION-[0-9] | awk -F '-' '{print $2}')"
GLOBAL_CONFIG_FILE=".config"

if [ ! -f "$GLOBAL_CONFIG_FILE" ]; then
    echo "Global config file not found: $GLOBAL_CONFIG_FILE"
    exit 1
fi

if [ ! -f "$KERNEL_CONFIG_FILE" ]; then
    echo "Kernel config file not found: $KERNEL_CONFIG_FILE"
    exit 1
fi

echo "Synchronizing kernel config changes to global config..."
scripts/kconfig.pl syncconfig "$GLOBAL_CONFIG_FILE" "$KERNEL_CONFIG_FILE"
make defconfig
echo "Kernel configuration changes have been synchronized to the global .config successfully."
