
- 压缩：

   ```sh
   tar -czvf docker.tar.gz docker

- 解压：

   ```sh
   tar -zxvf docker.tar.gz

- 青龙安装
- 
   ```sh
   docker run -dit -v /root/docker/ql/data:/ql/data -p 5700:5700 --name qinglong --hostname qinglong --restart always whyour/qinglong:latest
