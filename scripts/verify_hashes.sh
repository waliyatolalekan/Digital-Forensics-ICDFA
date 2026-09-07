

echo "[+] Calculating SHA-256 Hashes..."
sha256sum evidence/basic.pcapng working/basic_working.pcapng | tee reports/capture_hashes.txt

echo "[+] Verification check:"
sha256sum -c reports/capture_hashes.txt
