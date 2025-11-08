#!/bin/bash

# https://wiki.cachyos.org/configuration/gaming/#increase-maximum-shader-cache-size
if grep -q "AMD_VULKAN_ICD=RADV" /etc/environment; then
  echo "RADV driver environment variable already set"
else
  echo "Forcing use of RADV Vulkan driver"
  echo "AMD_VULKAN_ICD=RADV" | sudo tee -a /etc/environment
fi

if grep -q "MESA_SHADER_CACHE_MAX_SIZE=12G" /etc/environment; then
  echo "Shader cache size already increased"
else
  echo "Increasing shader cache size"
  echo "MESA_SHADER_CACHE_MAX_SIZE=12G" | sudo tee -a /etc/environment
fi

