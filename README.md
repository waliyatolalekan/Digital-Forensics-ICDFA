
A practical investigation into digital steganography, covert communications, and forensic payload analysis. This laboratory project demonstrates payload embedding using Least Significant Bit (LSB) substitution inside 24-bit bitmap (`.bmp`) images, cryptographic hash verification, and automated dictionary-based steganalysis.


Project Overview

This lab analyzes the operational lifecycle of image-based steganography:
1. Covert Insertion: Embedding cleartext evidence files into standard uncompressed carrier images without altering visual properties or byte dimensions.
2. Hash Degradation: Demonstrating how cryptographic hashing (SHA-256) detects covert data modifications when visual analysis fails.
3. Automated Recovery: Using StegSeek dictionary attacks to recover embedded payloads from protected stego media.
