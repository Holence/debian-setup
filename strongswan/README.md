# ipsec

debian 12

```
sudo ipsec restart
sudo ipsec up CONN_NAME
sudo ipsec status
sudo ipsec down CONN_NAME
```

# swanctl

debian 13

```
sudo service strongswan restart
sudo swanctl --load-all
sudo swanctl --initiate -c CHILDREN_NAME -i CONN_NAME
sudo swanctl --list-sas
sudo swanctl --terminate -i CONN_NAME
```
