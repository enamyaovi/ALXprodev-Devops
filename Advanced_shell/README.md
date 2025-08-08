# ALXprodev-Devops

Welcome to my advanced shell project where I explore the usage of bash shell commands like `awk`, `sed`, `grep`, and `jq` to extract data, manipulate it, and perform tasks associated with automation and DevOps.

This repository contains multiple scripts, each focusing on a specific task or concept. The purpose of this README is to provide a **general overview** of what each script does, while each script also has its own dedicated README for more detailed documentation.

I’ve approached this project as a beginner learning by doing, so you might see iterative improvements and refinements in different versions of the same script.

## How to Run the Scripts

1. Clone the repository:

   ```bash
   git clone <repo-url>
   cd <repo-directory>
   ```
2. Make the script executable:

   ```bash
   chmod +x scriptname
   ```
3. Run the script:

   ```bash
   ./scriptname
   ```
4. Ensure you have an internet connection, as most scripts make API requests.
5. Check `requirements.txt` for dependencies needed to run the scripts (e.g., `jq`, `curl`).

## Scripts Overview

### apiAutomation-0x00

Makes an API request to the Pokémon API for Pikachu’s data, saves the response to `data.json` if successful, and logs errors with timestamps to `errors.txt` if the request fails.

### data_extraction_automation-0x01

Reads a saved `data.json` file and extracts key details, such as Pokémon name, type(s), weight, and height then prints them in a formatted output.

### batchProcessing-0x02

A Bash script that automates the extraction of data from a saved data.json file or API responses.
It saves successful requests to the data/ directory and logs errors to a dedicated log file for review.
Includes retry logic for certain HTTP errors (429 and 5xx) and organizes results for easy access.

### summaryData-0x03

Extracts data from files in the `pokemon_data` directory and compiles them into a CSV. Also calculates the average height and weight using `awk`.

### batchProcessing-0x04

Implements parallel processing by running background subshells, with a job rate limiter to cap simultaneous processes at 4.
