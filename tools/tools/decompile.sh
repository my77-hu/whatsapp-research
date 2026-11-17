bash
#!/data/data/com.termux/files/usr/bin/bash
cd ~/whatsapp_research

echo "[+] Decompiling APK with apktool..."
apktool d whatsapp.apk -o whatsapp_decompiled

echo "[+] Converting DEX to JAR with dex2jar..."
d2j-dex2jar whatsapp.apk -o whatsapp.jar

echo "[+] Extracting raw APK resources..."
unzip whatsapp.apk -d whatsapp_extracted

echo "[+] Decompilation complete!"
ls -la
