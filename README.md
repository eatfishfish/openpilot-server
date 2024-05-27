# openpilot-server

#### 1. 配置文件
(1)在 config.txt 文件中，  
  <ws_bind> 是绑定websocket server 的ip和端口。  
  <http_bind> 是绑定http server 的ip和端口。  
  <athena_host> 是该服务端公网的域名。  
  <upload_url> 是该服务端公网的域名。  
(2) 启动  
在服务器上启动opserver.exe。  

#### 2. 设置c3/c3x  
(1) ssh进入c3/c3x 设备。  
(2) 在/data/continue.sh export 添加 <athena_host> 和 <upload_url>。  
  export ATHENA_HOST='ws://laolang.duckdns.org:7899'  
  export API_HOST='http://laolang.duckdns.org:7898'  
  export MAPBOX_TOKEN='<自己注册>'  
  像这样：  
/-----/data/continue.sh file-----------------  
#!/usr/bin/bash  
  
export ATHENA_HOST='ws://laolang.duckdns.org:7899'  
export API_HOST='http://laolang.duckdns.org:7898'  
export MAPBOX_TOKEN='<自己注册>'  
  
cd /data/openpilot  
exec ./launch_openpilot.sh  

/----------------------  
     
(3) rm -rf /data/params/d/DongleId  
  sudo reboot #重启你的c3/c3x  
  
#### 3. 下载文件和设置导航  
(1) 浏览器中打开 http://<your_domain_name> 例如 [http://laolang.duckdns.org:7898](http://laolang.duckdns.org:7898/static/index.html)  

(2) 进入设置导航地址。(仅支持IPhone地图和高德地图)  

#### 4.Star me. Thank you

# openpilot-server for english

#### 1. Configuration File  
(1) In the config.txt file,  
<ws_bind> IP and port of the websocket server.  
<http_bind> IP and port of the http server.  
<athena_host> The domain name of the server.  
<upload_url> The domain name of the server.  
(2) Launch  
Launch opserver.exe on your windows server.  
  
#### 2. Configuration in c3/c3x  
(1) SSH into the c3/c3x device.  
(2) In "/data/continue.sh" file, export <athena_host> and <upload_url>.  
export ATHENA_HOST='ws://laolang.duckdns.org:7899'  
export API_HOST=' http://laolang.duckdns.org:7898 '  
export MAPBOX_TOKEN='<register_on_mapbox_website.>'  
like this:  
/-----/data/continue.sh file-----------------  
#!/usr/bin/bash  
  
export ATHENA_HOST='ws://laolang.duckdns.org:7899'  
export API_HOST='http://laolang.duckdns.org:7898'  
export MAPBOX_TOKEN='<register_on_mapbox_website.>'  
  
cd /data/openpilot  
exec ./launch_openpilot.sh  
  
/----------------------  
  
(3) rm -rf /data/params/d/DongleId  
sudo reboot #Restart your c3/c3x  
  
#### 3. Download and navigation  
(1) Open http://<your_domain_name> (for example [http://laolang.duckdns.org:7898](http://laolang.duckdns.org:7898/static/index.html)) in your browser  

(2) In the web page configure the navigation.(Only support IPhone map and AMap)  

#### 4.Star me. Thank you
