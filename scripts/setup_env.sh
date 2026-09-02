!/bin/bash
CIP-B102 Lab 5 Environment Setup and Baseline Hasher
Author: Waliyat Olalekan

echo "[+] Creating evidence workspace directories..."
mkdir -p ../docs/screenshots ../recovered

echo "[+] Calculating baseline MD5 and SHA-256 hashes..."
cd ../evidence
md5sum *.* > initial_md5.txt 2>/dev/null
sha256sum *.* > initial_sha256.txt 2>/dev/null

echo "[+] Done. Hashes logged to initial_md5.txt and initial_sha256.txt."
