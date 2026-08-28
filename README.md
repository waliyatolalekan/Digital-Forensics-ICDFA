CIP-B102 Lab 4: USB Image Acquisition and Hash Verification

Project Overview
This repository contains the practical evidence, reports, and procedures for CIP-B102 Lab 4 in Digital Forensics. 

The goal of this investigation was to create an exact bit-stream image (`.dd`) of a physical USB drive, verify that no data was modified during the process using cryptographic hashes (MD5 and SHA-256), and extract specific evidence files without altering the original storage media.


Tools Used
Kali Linux — Forensic operating environment
`dd` (GNU coreutils) — Bit-stream physical disk acquisition tool
The Sleuth Kit (`mmls`, `fls`, `icat`) — Non-destructive file system analysis and metadata extraction
`md5sum` & `sha256sum` — Cryptographic hash calculation utilities
`lsblk` — Block device identification and partition management
