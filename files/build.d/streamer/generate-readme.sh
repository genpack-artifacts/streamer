set -e
cd
cat <<EOF > README.md
# Enabling system-level remote desktop

- Go to Settings -> System -> Remote Desktop -> Remote Login
- Enable "Remote Login"
- Enter "Login Details". Password can be empty at this point.
- Disable "Remote Login" and re-enable
- Go to Settings -> System -> Users
- Set User's password by passwd command. This password can't be empty.
EOF