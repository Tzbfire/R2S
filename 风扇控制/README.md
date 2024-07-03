# 来源

本项目的部分内容参考了 FriendlyARM 的 FriendlyWRT 项目，详情请见 [FriendlyWRT GitHub 仓库](https://github.com/friendlyarm/friendlywrt)。

## 风扇控制脚本

本项目提供了一组脚本，用于控制 FriendlyWRT 系统上的风扇。

## 系统要求
- R2S（仅在 R2S 测试）
- FriendlyWRT
- Bash shell

## 安装说明

要安装和配置风扇控制脚本，请执行以下步骤：

1. 下载并运行安装脚本：

   ```sh
   wget -O setup_pwm_fan.sh https://raw.githubusercontent.com/Tzbfire/R2S/main/%E9%A3%8E%E6%89%87%E6%8E%A7%E5%88%B6/setup_pwm_fan.sh && chmod +x setup_pwm_fan.sh && ./setup_pwm_fan.sh

2. 或者使用 curl：

   ```sh
   curl -o setup_pwm_fan.sh https://raw.githubusercontent.com/Tzbfire/R2S/main/%E9%A3%8E%E6%89%87%E6%8E%A7%E5%88%B6/setup_pwm_fan.sh && chmod +x setup_pwm_fan.sh && ./setup_pwm_fan.sh

## 使用说明

安装脚本将会：

- 下载 start-rk3328-pwm-fan.sh 到 /usr/bin/ 目录。

- 下载 fa-rk3328-pwmfan 到 /etc/init.d/ 目录。

- 设置脚本的可执行权限。

- 启用并启动风扇控制脚本。
