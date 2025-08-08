# batchProcessing-0x02

This script automates the batch processing of requests, handles retries for transient HTTP errors, and stores results in a structured format.

## Overview

* Reads a predefined list of string identifiers.
* Makes HTTP requests for each identifier.
* Handles specific HTTP errors (`429` and `5xx`) with retries.
* Saves successful responses as JSON files in a target directory.
* Logs errors and failed attempts to a dedicated log file.

## Features

* **Automated batch execution** of multiple requests.
* **Error handling and retries** for common temporary failures.
* **Structured output storage**: Each successful response is stored as `<identifier>.json`.
* **Detailed logging** of failures for troubleshooting.

## Usage

1. Prepare the list of identifiers to process.
2. Ensure required directories for data and logs exist.
3. Run the script:

   ```bash
   ./batchProcessing-0x02.sh
   ```
4. Review output:

   * Successful data: stored in `$data_dir`
   * Errors: recorded in `$error_log`

## Notes

* Adjust the retry count and sleep interval to match your API's rate limits.
* The script uses `sleep` between requests to reduce the chance of hitting rate limits.
* Designed for shell environments with `bash`.

