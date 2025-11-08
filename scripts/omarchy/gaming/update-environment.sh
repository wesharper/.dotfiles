#!/bin/bash

echo "Installing RADV drivers"
omarchy-pkg-install vulkan-radeon mesa

# https://wiki.cachyos.org/configuration/gaming/#increase-maximum-shader-cache-size
echo "Forcing use of RADV Vulkan driver"
echo "AMD_VULKAN_ICD=RADV" | sudo tee -a /etc/environment

echo "Increasing shader cache size"
echo "MESA_SHADER_CACHE_MAX_SIZE=12G" | sudo tee -a /etc/environment
