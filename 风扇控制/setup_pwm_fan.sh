#!/bin/sh

# 下载 start-rk3328-pwm-fan.sh 脚本
curl -o /usr/bin/start-rk3328-pwm-fan.sh https://raw.githubusercontent.com/friendlyarm/friendlywrt/master-v19.07.1/target/linux/rockchip-rk3328/base-files/usr/bin/start-rk3328-pwm-fan.sh

# 给 start-rk3328-pwm-fan.sh 赋予可执行权限
chmod +x /usr/bin/start-rk3328-pwm-fan.sh

# 下载 fa-rk3328-pwmfan 脚本
curl -o /etc/init.d/fa-rk3328-pwmfan https://raw.githubusercontent.com/friendlyarm/friendlywrt/master-v19.07.1/target/linux/rockchip-rk3328/base-files/etc/init.d/fa-rk3328-pwmfan

# 给 fa-rk3328-pwmfan 赋予可执行权限
chmod +x /etc/init.d/fa-rk3328-pwmfan

# 启用 fa-rk3328-pwmfan 服务
/etc/init.d/fa-rk3328-pwmfan enable

# 启动 fa-rk3328-pwmfan 服务
/etc/init.d/fa-rk3328-pwmfan start

echo "PWM fan setup complete."
