# Make sure you're in the same directory as where you exported cert.pem
# from proton mail bridge
cat cert.pem | openssl x509 -fingerprint -noout -in /dev/stdin
