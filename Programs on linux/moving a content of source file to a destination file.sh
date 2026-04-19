if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file destination_file"
    exit 1
fi

# Assign command line arguments to variables
SOURCE_FILE=$1
DESTINATION_FILE=$2

# Check if the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' does not exist."
    exit 1
fi

# Copy the contents of the source file to the destination file
cp "$SOURCE_FILE" "$DESTINATION_FILE"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Successfully copied '$SOURCE_FILE' to '$DESTINATION_FILE'."
else
    echo "Error: Failed to copy '$SOURCE_FILE' to '$DESTINATION_FILE'."
    exit 1
fi
