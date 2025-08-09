# Batch Processing - 0x04

## Overview

This Bash script automates the process of fetching Pokémon data from the [PokéAPI](https://pokeapi.co/) for a predefined list of Pokémon. It handles data retrieval in parallel, retries failed requests, logs errors, and stores fetched data in JSON format.

## Features

* **Parallel Processing**: Fetch data for multiple Pokémon concurrently (up to 4 at a time).
* **Error Handling**: Retries failed network requests up to 3 times before logging the error.
* **Logging**: All errors are stored in `errors.txt` for later review.
* **Data Storage**: Successfully fetched data is saved in the `pokemon_data` directory as JSON files.
* **Temporary File Management**: Uses `mktemp` for safe temporary storage and ensures cleanup.

## How It Works

1. Creates a directory (`pokemon_data`) for storing results.
2. Creates (or ensures the existence of) an error log file `errors.txt`.
3. Iterates over a list of Pokémon names.
4. Fetches data from the PokéAPI in lowercase format.
5. Saves successful responses as JSON files.
6. Logs failed requests with details.
7. Limits to 4 simultaneous requests to avoid overload.

## Prerequisites

* Bash shell
* `curl` installed and available in PATH
* Internet connection

## Usage

1. Make the script executable:

   ```bash
   chmod +x batchProcessing-0x04.sh
   ```
2. Run the script:

   ```bash
   ./batchProcessing-0x04.sh
   ```
3. Check the `pokemon_data` directory for fetched data and `errors.txt` for any errors.

## Example Output

```
Fetching data for Bulbasaur...
Saved data to pokemon_data/Bulbasaur.json
Fetching data for Ivysaur...
Saved data to pokemon_data/Ivysaur.json
...
All done. Check pokemon_data for results and errors.txt for any issues.
```

## Notes

* Modify the `pokemon_array` variable to fetch data for different Pokémon.
* The script automatically cleans up temporary files.
* This script is useful for batch API processing and can be adapted for other APIs with minimal changes.

