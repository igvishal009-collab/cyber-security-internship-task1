#!/usr/bin/env bash
set -e

WORK_DIR="./crypto_demo"
mkdir -p "$WORK_DIR"

echo "ApexPlanet Task 1 Confidential Message" > "$WORK_DIR/secret.txt"
openssl enc -aes-256-cbc -salt -in "$WORK_DIR/secret.txt" -out "$WORK_DIR/secret.enc" -pbkdf2 -k Pass123!
openssl enc -d -aes-256-cbc -in "$WORK_DIR/secret.enc" -out "$WORK_DIR/decrypted.txt" -pbkdf2 -k Pass123!

echo "[SUCCESS] Encryption and Decryption verified!"
