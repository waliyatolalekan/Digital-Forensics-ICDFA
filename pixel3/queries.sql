
AOSP MMS records: inspect message timestamps and types
SELECT _id, date, msg_box, sub
FROM pdu
ORDER BY date;

WhatsApp legacy message records
SELECT _id, key_remote_jid, key_from_me, timestamp, data
FROM messages
ORDER BY timestamp;

TextNow message records
SELECT _id, conversation_id, message_type, date, message
FROM messages
ORDER BY date;

Maps saved-place database: inspect available tables
SELECT name, sql
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;

Maps synchronisation records: inspect available tables
SELECT name, sql
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;

Check table names in the AOSP call log database
SELECT name, sql
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;
EOF
