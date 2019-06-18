# waiting to do
## Install
### influx and grafana
`docker-compose up`

```yml
version: '3.1'
volumes:
  influxdb:
  grafana:
services:

  influxdb:
    image: influxdb
    restart: always
    container_name: influxdb
    ports:
      - 8886:8086
      - 3300:3000
    volumes:
      - influxdb:/var/lib/influxdb

  grafana:
    image: grafana/grafana
    restart: always
    depends_on:
      - influxdb
    container_name: grafana
    volumes:
      - grafana:/var/lib/grafana
    network_mode: "service:influxdb"
```
### telegraf
```bash
wget https://dl.influxdata.com/telegraf/releases/telegraf_1.10.4-1_amd64.deb
sudo dpkg -i telegraf_1.10.4-1_amd64.deb
telegraf config >telegraf.conf
```
将telegraf.conf替换，这里提供了
1.对`home`目录占用监控的功能
2.GPU使用情况监控
3.其他基本功能
### Result
