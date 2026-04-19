state="$1"
city="$2"
if [ "$state" = "TamilNadu" ]; then
  short="TN"
elif [ "$state" = "Kerala" ]; then
  short="KL"
elif [ "$state" = "Karnataka" ]; then
  short="KA"
elif [ "$state" = "AndhraPradesh" ]; then
  short="AP"
else
  echo "Unknown state name"
  exit 1
fi
file="$short"
[ ! -f "$file" ] && touch "$file"
if grep -Fxq "$city" "$file"; then
  echo "City already added"
else
  echo "$city" >> "$file"
  echo "City added to $file"
fi
