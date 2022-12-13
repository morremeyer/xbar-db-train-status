# xbar-db-train-status

This plugin shows the status of the Deutsche Bahn train you are currently on. This works only on ICE trains as only those have the necessary status portal.

Currently, the plugin shows the train number and the speed of the train. If you have additional ideas, feel free to open an issue or PR.

## Requirements

For this plugin to work, you need to:

- Have `jq` installed in `/usr/local/bin` (`brew install jq` if you don't have it yet, see [the homebrew website](https://brew.sh/))
- You need to be connected to the onboard WLAN of the train (the API this data is pulled from is only accessible from there)
