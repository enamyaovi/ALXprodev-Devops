# summaryData-0x03

## Overview

The `summaryData-0x03` script automates the extraction and summarization of Pokémon data stored in JSON files. It compiles this data into a CSV file and calculates key statistics such as the average height and weight.

## Features

* Reads multiple Pokémon JSON files from the `pokemon_data` directory.
* Extracts relevant attributes: name, type(s), height, and weight.
* Compiles extracted data into a structured `summary.csv` file.
* Calculates and displays the average height and weight using `awk`.

## Usage

1. Ensure your Pokémon data files are stored in the `pokemon_data` directory.
2. Run the script:

   ```bash
   ./summaryData-0x03
   ```
3. The `summary.csv` file will be generated in the working directory.
4. The average height and weight will be displayed in the terminal.

## Requirements

* Bash shell environment
* `jq` for JSON parsing
* `awk` for data processing

## Example Output

**summary.csv:**

```
name,type,height,weight
Pikachu,Electric,4,60
Bulbasaur,Grass/Poison,7,69
...
```

**Average stats:**

```
Average Height: 6.2
Average Weight: 65.4
```

## Logging & Errors

* If the script encounters a file that is not a valid JSON or lacks required fields, it will log the filename to `errors.log` for review.

