echo "Enter your login name: "
read LOGIN_NAME
LOGGED_IN_USERS=$(who | awk '{print $1}')
if echo "$LOGGED_IN_USERS" | grep -q "^$LOGIN_NAME$"; then
    echo "The user $LOGIN_NAME is currently logged in."
else
    echo "The user $LOGIN_NAME is not currently logged in."
fi
