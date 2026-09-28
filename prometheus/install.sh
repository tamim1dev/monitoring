VER=3.15.0
cd /tmp
curl -LO https://github.com/prometheus/prometheus/releases/download/v${VER}/prometheus-${VER}.linux-amd64.tar.gz
tar xzf prometheus-${VER}.linux-amd64.tar.gz
cd prometheus-${VER}.linux-amd64

sudo useradd --no-create-home --shell /usr/bin/nologin prometheus
sudo mkdir -p /etc/prometheus /var/lib/prometheus
sudo install -o prometheus -g prometheus prometheus promtool /usr/local/bin/
sudo chown -R prometheus:prometheus /etc/prometheus /var/lib/prometheus