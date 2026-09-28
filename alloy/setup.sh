VER=1.20.0
cd /tmp
curl -LO https://github.com/grafana/alloy/releases/download/v${VER}/alloy-linux-amd64.zip
unzip alloy-linux-amd64.zip

sudo useradd --no-create-home --shell /usr/bin/nologin alloy
sudo usermod -aG systemd-journal alloy
sudo install -o alloy -g alloy alloy-linux-amd64 /usr/local/bin/alloy
sudo mkdir -p /etc/alloy /var/lib/alloy
sudo chown -R alloy:alloy /var/lib/alloy