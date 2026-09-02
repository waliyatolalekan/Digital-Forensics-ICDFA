cat << 'EOF' > ~/CIP-B102-Lab5/README.md
CIP-B102 Lab 5: Forensic Data Carving and File Recovery

Executive Summary
This repository contains the practical evidence, technical reports, and recovery procedures for CIP-B102 Lab 5 (Module 7: Data Carving and File Recovery). 

The lab practice focuses on non-destructive metadata examination using*The Sleuth Kit (TSK), signature discovery using Binwalk, raw file carving using Scalpel, and cryptographic hash verification (`md5sum`/`sha256sum`).


Student Name: Waliyat Olalekan
Course: Digital Forensics
Environment: Kali Linux 


Tools Used
Signature and Hex Analysis:xxd, strings
File System Analysis: The Sleuth Kit (mmls, fsstat, fls, icat, blkcat)
File Carving and Extraction: binwalk, scalpel
Verification and Integrity: md5sum, sha256sum


Repository Structure
CIP-B102-Lab5/
├── README.md              # Repository overview landing page
├── REPORT.md              # Complete technical forensic report
├── scalpel_custom.conf    # Custom Scalpel configuration
├── scripts/
│   └── setup_env.sh       # Environment setup script
├── docs/
│   └── screenshots/       # Evidence screenshots for REPORT.md
├── evidence/
│   └── .gitkeep           # Target folder for disk images (git-ignored)
└── recovered/
    └── scalpel_output/    # Carved files and audit log (audit.txt)
