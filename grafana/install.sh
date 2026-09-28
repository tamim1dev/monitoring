VER=13.2.2
cd /tmp
curl -LO https://dl.grafana.com/oss/release/grafana-${VER}.linux-amd64.tar.gz
tar xzf grafana-${VER}.linux-amd64.tar.gz

sudo useradd --no-create-home --shell /usr/bin/nologin grafana
sudo mv grafana-${VER} /opt/grafana
sudo mkdir -p /var/lib/grafana /var/log/grafana
sudo chown -R grafana:grafana /opt/grafana /var/lib/grafana /var/log/grafana