## 🌐 Network Check — Saturday, 25 October, 2025 10:00:01 AM PST
### Ping Test to 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=116 time=15.2 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=116 time=15.4 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=116 time=15.0 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=116 time=15.4 ms

--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3004ms
rtt min/avg/max/mdev = 14.986/15.249/15.444/0.176 ms
### Ping Test to 1.1.1.1
PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.
64 bytes from 1.1.1.1: icmp_seq=1 ttl=56 time=15.1 ms
64 bytes from 1.1.1.1: icmp_seq=2 ttl=56 time=15.3 ms
64 bytes from 1.1.1.1: icmp_seq=3 ttl=56 time=15.1 ms
64 bytes from 1.1.1.1: icmp_seq=4 ttl=56 time=15.1 ms

--- 1.1.1.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3004ms
rtt min/avg/max/mdev = 15.072/15.138/15.271/0.078 ms
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
    link/ether 52:fb:7c:fa:bd:cf brd ff:ff:ff:ff:ff:ff permaddr 98:e7:f4:59:a9:24
    inet 192.168.1.22/24 brd 192.168.1.255 scope global dynamic noprefixroute enp3s0
       valid_lft 56547sec preferred_lft 56547sec
    inet6 fe80::2835:a18a:b7f0:fd36/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: wlp1s0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 84:ef:18:7f:da:af brd ff:ff:ff:ff:ff:ff
4: vmnet1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:50:56:c0:00:01 brd ff:ff:ff:ff:ff:ff
    inet 172.16.189.1/24 brd 172.16.189.255 scope global vmnet1
       valid_lft forever preferred_lft forever
    inet6 fe80::250:56ff:fec0:1/64 scope link 
       valid_lft forever preferred_lft forever
5: vmnet8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:50:56:c0:00:08 brd ff:ff:ff:ff:ff:ff
    inet 192.168.202.1/24 brd 192.168.202.255 scope global vmnet8
       valid_lft forever preferred_lft forever
    inet6 fe80::250:56ff:fec0:8/64 scope link 
       valid_lft forever preferred_lft forever
