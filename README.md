 # Bangs for Eyed Search

Welcome to "Bangs for Eyed Search" - a simple yet powerful tool designed to enhance your web navigation by providing quick and efficient search shortcuts known as "bang" commands. These bang shortcuts allow you to perform searches directly from the address bar of your browser, making it faster and more convenient than ever to find what you're looking for online.

## How Bang Shortcuts Work

A bang shortcut is a URL that starts with an exclamation mark (`!`). When entered in the address bar of most search engines, it triggers a specific search query. For example:
- Typing `!g hello` will open Google and perform a search for "hello".
- Typing `!d who invented the internet` will direct you to DuckDuckGo to search for information on who invented the internet.

## Available Bang Shortcuts

The repository contains predefined bang shortcuts in JSON format, stored in two files:
1. **bangs.json**: Contains the full set of bang shortcuts including comments and formatting for easy readability.
2. **bangs.minified.json**: A minified version of `bangs.json` without comments or unnecessary whitespace, optimized for faster processing.

## Contributing to Bangs for Eyed Search

We welcome contributions from the community! If you have a useful bang shortcut that isn't already listed, please consider adding it. Here’s how you can contribute:

1. **Fork the Repository**: Click on the "Fork" button at the top right of this repository to create your own copy.
2. **Clone the Forked Repository**: Clone it to your local machine using `git clone https://github.com/aploide/bangs`.
3. **Add Your Bang Shortcut**: Create a new JSON entry in the format provided below and add it to `bangs.json`:

```json
{
    "bangshortcut": "example",
    "!newshortcut": "https://example.com/?q={{{query}}}"
}
```
Make sure your shortcut starts with an exclamation mark (`!`) followed by a unique identifier and the URL pattern which includes `{{{query}}}` where the search term should be inserted.

4. **Test Your Contribution**: Before submitting a pull request, test your bang link to ensure it works as expected in your browser.
5. **Submit a Pull Request**: Push your changes to your fork and submit a pull request to this repository. Please include a clear description of your changes.
6. **Automate Minification**: Use the provided minification scripts (or create your own) to update `bangs.minified.json` with your new entry included. Make sure to test the minification process to avoid any errors.
7. **Wait for Review**: Your pull request will be reviewed, and if everything looks good, it will be merged into the main repository!

## Example Contribution

If you want to add a shortcut that searches YouTube for tutorials on "JavaScript basics", your entry might look like this:

```json
{
    "bangshortcut": "JavaScript tutorials",
    "!yt": "https://www.youtube.com/results?q={{{query}}}"
}
```

After adding this to `bangs.json` and running the minification script, it should also appear in `bangs.minified.json`.

## Scripts for Minification

You can use a Bash script located at `/path/to/your/minfier.sh bangs.json` to generate `bangs.minified.json`. Ensure the script has execute permissions (`chmod +x minifier.sh`).

