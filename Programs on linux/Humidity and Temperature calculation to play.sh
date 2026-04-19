read -p "Enter temperature (Warm/Cold): " temperature
read -p "Enter humidity (Dry/Humid): " humidity
if [ "$temperature" == "Warm" ]; then
    if [ "$humidity" == "Dry" ]; then
        echo "Play Basketball"
    elif [ "$humidity" == "Humid" ]; then
        echo "Play Tennis"
    else
        echo "Invalid humidity input"
    fi
elif [ "$temperature" == "Cold" ]; then
    if [ "$humidity" == "Dry" ]; then
        echo "Play Cricket"
    elif [ "$humidity" == "Humid" ]; then
        echo "Swim"
    else
        echo "Invalid humidity input"
    fi
else
    echo "Invalid temperature input"
 fi
