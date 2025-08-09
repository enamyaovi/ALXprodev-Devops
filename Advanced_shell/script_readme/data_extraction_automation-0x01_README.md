# Data Extraction Script

## Overview

This Bash script extracts and formats data from a `data.json` file containing Pokémon details. It uses `jq`, `awk`, and `sed` to parse JSON content, format values, and present them in a readable format.

## Features

* **Validates** the presence and non-emptiness of `data.json`.
* **Extracts** the Pokémon's:

  * Name (capitalized)
  * Weight (converted to kg)
  * Height (converted to meters)
  * Types (comma-separated and capitalized)
* **Outputs** a formatted description.

## Requirements

* **jq** – For parsing JSON.
* **awk** – For unit conversion.
* **sed** – For text capitalization.
* `data.json` file in the same directory.

## Usage

1. Ensure `data.json` exists and contains valid Pokémon data in JSON format.
2. Run the script:

   ```bash
   ./script_name.sh
   ```
3. Example output:

   ```
   Pikachu is of type Electric, weighs 6.0kg, and is 0.4m tall.
   ```

## Script Logic

1. **File Check:**

   ```bash
   [ -s data.json ] || { echo "Error: data.json not found or empty"; exit 1; }
   ```

   Ensures `data.json` exists and is not empty.

2. **Data Extraction:**

   * **Name:** Capitalizes first letter.
   * **Weight/Height:** Converts decimeters/hectograms to meters/kilograms.
   * **Types:** Extracts all types, capitalizes them, and joins with commas.

3. **Output:** Prints the formatted description.

## Notes

* This script assumes the JSON structure follows the standard Pokémon API format.
* The commented-out lines at the bottom are alternate formatting attempts and are not executed.

