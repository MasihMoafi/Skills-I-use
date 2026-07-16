Sept 29 2025
<linux>
sudo apt update
sudo apt install lm-sensors
sudo apt install curl
</linux>
<cpu_saved>
sudo apt-get install cpupower-gui -y
echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
echo 2375000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
</cpu_saved>
