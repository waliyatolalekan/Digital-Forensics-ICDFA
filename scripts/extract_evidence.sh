
mkdir -p "$REPORT_DIR"

echo "[+] Extracting TCP Handshake..."
tshark -r "$PCAP_FILE" -Y 'tcp.stream eq 0 && tcp.flags.syn==1' \
  -T fields -e frame.number -e frame.time -e ip.src -e tcp.srcport -e ip.dst -e tcp.dstport \
  -e tcp.flags -e tcp.seq -e tcp.ack | tee "$REPORT_DIR/handshake.tsv"

echo "[+] Extracting HTTP Requests..."
tshark -r "$PCAP_FILE" -Y 'http.request' -T fields \
  -e frame.number -e frame.time -e ip.src -e tcp.srcport -e ip.dst -e tcp.dstport \
  -e http.request.method -e http.request.uri -e http.host -e http.user_agent \
  | tee "$REPORT_DIR/http_requests.tsv"

echo "[+] Extracting HTTP Responses..."
tshark -r "$PCAP_FILE" -Y 'http.response' -T fields \
  -e frame.number -e frame.time -e http.response.code -e http.response.phrase \
  -e http.server -e http.content_type -e http.content_length \
  | tee "$REPORT_DIR/http_responses.tsv"

echo "[+] Extracting Connection Closure..."
tshark -r "$PCAP_FILE" -Y 'tcp.flags.fin==1 || tcp.flags.reset==1' \
  -T fields -e frame.number -e frame.time -e ip.src -e tcp.srcport -e ip.dst -e tcp.dstport \
  -e tcp.flags -e tcp.seq -e tcp.ack | tee "$REPORT_DIR/connection_close.tsv"
"
