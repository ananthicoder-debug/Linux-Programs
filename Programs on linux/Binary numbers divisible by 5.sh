is_divisible_by_5() {
    local binary=$1
    # Convert binary to decimal
    decimal=$((2#$binary))
    # Check divisibility by 5
    if (( decimal % 5 == 0 )); then
        echo "$binary"
    fi
}
read -p "Enter a sequence of comma-separated 4-digit binary numbers: " input
IFS=',' read -r -a binaries <<< "$input"
results=()
for binary in "${binaries[@]}";
do
    binary=$(echo "$binary" | xargs)
    if [[ "$binary" =~ ^[01]{4}$ ]]; then
        # Check if it is divisible by 5
        divisible=$(is_divisible_by_5 "$binary")
        if [ -n "$divisible" ]; then
            results+=("$divisible")
        fi
    else
        echo "Invalid binary number: $binary. It must be a 4-digit binary number."
    fi
done
if [ ${#results[@]} -gt 0 ]; then
    echo "Binary numbers divisible by 5: $(IFS=,; echo "${results[*]}")"
else
    echo "No binary numbers divisible by 5 found."
fi
