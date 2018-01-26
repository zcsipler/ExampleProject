OUTPUT_FILE="$PROJECT_DIR/ExampleTests/GeneratedMocks.swift"

echo "Generated Mocks File = $OUTPUT_FILE"

# Define the carthage checkout directory.
CHECKOUTS_DIR="$PROJECT_DIR/Carthage/Checkouts"
echo "Checkouts Directory = $CHECKOUTS_DIR"

# Generate mock files, include as many input files as you'd like to create mocks for.

${CHECKOUTS_DIR}/Cuckoo/run generate --no-header "$PROJECT_NAME" \
--output "${OUTPUT_FILE}" \
"$PROJECT_DIR/Example/Contracts.swift"

sed -i '' -e "3s/^//p; 3s/^.*/@testable import $PROJECT_NAME/" "$OUTPUT_FILE"
