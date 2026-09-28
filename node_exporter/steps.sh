sudo systemctl daemon-reload
sudo systemctl enable --now node_exporter
systemctl status node_exporter
curl -s localhost:9100/metrics | grep -E '^node_(cpu_seconds|memory_MemTotal|filesystem_size|network_receive_bytes)' | head