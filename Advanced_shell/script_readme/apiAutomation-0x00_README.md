### apiAutomation-0x00

This script automates the process of making an API request to the [Pokémon API](https://pokeapi.co/) and saving the result to a file, while handling network and server errors gracefully.

#### **What it does**

* Makes a request for **Pikachu's** data from the Pokémon API.
* Saves the JSON response to `data.json` if successful.
* Logs errors (with timestamps) to `errors.txt` if the request fails.
* Cleans up all temporary files after execution.

#### **Key Features**

1. **Variables for flexibility**
   The script stores configuration values such as the endpoint, output file, and error log file in variables:

   ```bash
   ENDPOINT=pikachu
   WRITE_FILE=data.json
   ERROR_LOG=errors.txt
   ```

2. **Temporary file usage**
   Uses `mktemp` to create temporary storage for:

   * Response body (`TMP_BODY`)
   * Curl error output (`TMP_ERROR`)

3. **Automatic cleanup**
   A `trap` ensures temporary files are always deleted after the script finishes.

4. **Two-step error handling**

   * **Curl exit code check**: Catches network/connection errors.
   * **HTTP status code check**: Validates that the server responded with `200 OK` before saving.

5. **Detailed error logging**
   Error logs include:

   * Date and time
   * Exit code or HTTP status
   * Error message or failed response body

#### **How to run**

```bash
./apiAutomation-0x00.sh
```

#### **Example output**

If successful:

```bash
Response written to file: data.json
```

If there is an error:

```
[Fri Aug  8 19:12:45 UTC 2025] Curl failed with exit code: 6
Could not resolve host: pokeapi.co
```

