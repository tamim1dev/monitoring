VER=3.7.8
cd /tmp
curl -LO https://github.com/grafana/loki/releases/download/v${VER}/loki-linux-amd64.zip
unzip loki-linux-amd64.zip

sudo useradd --no-create-home --shell /usr/bin/nologin loki
sudo install -o loki -g loki loki-linux-amd64 /usr/local/bin/loki
sudo mkdir -p /etc/loki /var/lib/loki
sudo chown -R loki:loki /var/lib/loki