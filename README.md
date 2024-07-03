#  [R2S大杂烩](https://github.com/Tzbfire/R2S)


///////////////////其他///////////////////

## 易有云文件管理

官网：https://app.linkease.com

- 一键搭建命令：
-
   ```sh
   sh -c "$(curl -sSL http://fw.koolcenter.com/binary/LinkEase/Openwrt/install_linkease.sh)"

## 压力测试
-
   ```sh
   fulload() { dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null &amp; }; fulload; read; killall dd
