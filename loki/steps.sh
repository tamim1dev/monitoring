sudo systemctl daemon-reload
sudo systemctl enable --now loki
systemctl status loki
curl localhost:3100/ready