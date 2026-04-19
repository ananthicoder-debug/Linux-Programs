read -p "Enter your login name: " LOGIN_NAME
if who | grep -q "^$LOGIN_NAME "; then
    echo "User  $LOGIN_NAME is currently logged in."
else
    echo "User  $LOGIN_NAME is not currently logged in."
fi
count=$(find . -type f -name '*ca' | wc -l)
echo "Number of files that end with 'ca': $count"
read -p "Do you want to view the long list of files that end with 'ca'? (y/n) " response

if [ "$response" = "y" ]; then
    echo "Long list of files that end with 'ca':"
    find . -type f -name '*ca' -exec ls -l {} \;
else
    echo "Exiting..."
fi
