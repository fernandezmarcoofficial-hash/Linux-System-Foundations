## 🌐 Network Check — Monday, 20 October, 2025 10:00:01 AM PST
### Ping Test to 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=116 time=18.8 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=116 time=19.3 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=116 time=19.2 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=116 time=19.3 ms

--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3005ms
rtt min/avg/max/mdev = 18.751/19.130/19.318/0.227 ms
### Ping Test to 1.1.1.1
PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.
64 bytes from 1.1.1.1: icmp_seq=1 ttl=55 time=18.4 ms
64 bytes from 1.1.1.1: icmp_seq=2 ttl=55 time=18.7 ms
64 bytes from 1.1.1.1: icmp_seq=3 ttl=55 time=18.5 ms
64 bytes from 1.1.1.1: icmp_seq=4 ttl=55 time=18.7 ms

--- 1.1.1.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3006ms
rtt min/avg/max/mdev = 18.350/18.589/18.747/0.165 ms
### DNS Lookup for github.com
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
Name:	github.com
Address: 20.205.243.166

### Firewall Status (ufw)
### Interfaces & IPs
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 98:e7:f4:59:a9:24 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.10/24 brd 192.168.1.255 scope global dynamic noprefixroute enp3s0
       valid_lft 79341sec preferred_lft 79341sec
    inet6 fe80::2835:a18a:b7f0:fd36/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: wlp1s0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 84:ef:18:7f:da:af brd ff:ff:ff:ff:ff:ff
