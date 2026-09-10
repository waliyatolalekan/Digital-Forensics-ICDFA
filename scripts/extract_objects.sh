
WORK_PCAP="working/image_traffic_working.pcapng"
EXPORT_DIR="exported/http_objects"

mkdir -p "$EXPORT_DIR" reports

echo "[+] Extracting HTTP Objects from capture..."
tshark -r "$WORK_PCAP" --export-objects http,"$EXPORT_DIR"

echo "[+] Computing Hashes..."
sha256sum /var/www/html/lab_photo.jpg "$EXPORT_DIR"/* | tee reports/extracted_object_hashes.txt

echo "[+] Object Extraction & Integrity Verification Complete."
