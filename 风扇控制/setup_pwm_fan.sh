#!/bin/sh

# 下载 start-rk3328-pwm-fan.sh 脚本
echo "正在下载 start-rk3328-pwm-fan.sh..."
if curl -o /usr/bin/start-rk3328-pwm-fan.sh https://raw.githubusercontent.com/Tzbfire/R2S/main/%E9%A3%8E%E6%89%87%E6%8E%A7%E5%88%B6/start-rk3328-pwm-fan.sh; then
    echo "成功下载 start-rk3328-pwm-fan.sh。"
else
    echo "下载 start-rk3328-pwm-fan.sh 失败。" >&2
    exit 1
fi

# 给 start-rk3328-pwm-fan.sh 赋予可执行权限
echo "正在设置 start-rk3328-pwm-fan.sh 的执行权限..."
if chmod +x /usr/bin/start-rk3328-pwm-fan.sh; then
    echo "成功设置执行权限。"
else
    echo "设置 start-rk3328-pwm-fan.sh 的执行权限失败。" >&2
    exit 1
fi

# 下载 fa-rk3328-pwmfan 脚本
echo "正在下载 fa-rk3328-pwmfan..."
if curl -o /etc/init.d/fa-rk3328-pwmfan https://raw.githubusercontent.com/Tzbfire/R2S/main/%E9%A3%8E%E6%89%87%E6%8E%A7%E5%88%B6/fa-rk3328-pwmfan; then
    echo "成功下载 fa-rk3328-pwmfan。"
else
    echo "下载 fa-rk3328-pwmfan 失败。" >&2
    exit 1
fi

# 给 fa-rk3328-pwmfan 赋予可执行权限
echo "正在设置 fa-rk3328-pwmfan 的执行权限..."
if chmod +x /etc/init.d/fa-rk3328-pwmfan; then
    echo "成功设置执行权限。"
else
    echo "设置 fa-rk3328-pwmfan 的执行权限失败。" >&2
    exit 1
fi

# 启用 fa-rk3328-pwmfan 服务
echo "正在启用 fa-rk3328-pwmfan 服务..."
if /etc/init.d/fa-rk3328-pwmfan enable; then
    echo "成功启用服务。"
else
    echo "启用服务失败。" >&2
    exit 1
fi

# 启动 fa-rk3328-pwmfan 服务
echo "正在启动 fa-rk3328-pwmfan 服务..."
if /etc/init.d/fa-rk3328-pwmfan start; then
    echo "成功启动服务。"
else
    echo "启动服务失败。" >&2
    exit 1
fi

echo "PWM 风扇设置完成。"
