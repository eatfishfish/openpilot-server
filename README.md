# openpilot-server
Openpilot server

1. 配置文件
(1)在 config.txt 文件中，
  <ws_bind> 是绑定websocket server 的ip和端口。
  <http_bind> 是绑定http server 的ip和端口。
  <athena_host> 是该服务端公网的域名。
  <upload_url> 是该服务端公网的域名。
(2) 启动
在服务器上启动opserver.exe。

2. 设置c3/c3x
(1) ssh进入c3/c3x 设备。
(2) 在/data/continue.sh export 添加 <athena_host> 和 <upload_url>。
  export ATHENA_HOST='ws://laofolan.tpddns.cn:7899'
  export API_HOST='http://laofolan.tpddns.cn:7898'
  像这样：
/-----/data/continue.sh file-----------------
#!/usr/bin/bash

export ATHENA_HOST='ws://laofolan.tpddns.cn:7899'
export API_HOST='http://laofolan.tpddns.cn:7898'

cd /data/openpilot
exec ./launch_openpilot.sh

(3) rm -rf /data/params/d/DongleId
  sudo reboot #重启你的c3/c3x
/----------------------
 
3. 下载文件
(1) 浏览器中打开 http://laofolan.tpddns.cn:7898/op/<DongleId>
  <DongleId>替换成你的ID。 DongleId可以在你的c3/c3x设备上查看。