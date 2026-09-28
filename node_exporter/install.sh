VER=1.12.1
cd /tmp
curl -LO https://github.com/prometheus/node_exporter/releases/download/v${VER}/node_exporter-${VER}.linux-amd64.tar.gz
tar xzf node_exporter-${VER}.linux-amd64.tar.gz

sudo useradd --no-create-home --shell /usr/bin/nologin node_exporter
sudo install -o node_exporter -g node_exporter \
  node_exporter-${VER}.linux-amd64/node_exporter /usr/local/bin/node_exporter