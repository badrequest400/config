
email="${1:-balazs.cseh89@gmail.com}"

echo "Generating keys for email: $email. Can be passed as the first argument to this script"

ssh-keygen -t ed25519 -C "$email"
