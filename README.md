 # Bangs!

A simple yet powerful system designed to enhance your web navigation by providing quick and efficient search shortcuts known as "bang" commands. 
These bang shortcuts allow you to perform searches directly from the address bar of your browser, making it faster and more convenient than ever to find what you're looking for online.

## How Bangs Work

A bang is a 'word' that starts with an exclamation mark (`!`). 
When entered in the address bar of some search engines (ex. [Eyed Search](https://search.eyed.to)), it triggers a specific search query. 
For example:
- Typing `!gh bangs` will search on github all repositories containing 'bangs' in the name.
- Typing `!w internet` will direct you to the WikiPedia page about the internet.

## Available Bangs

The repository contains all the current bangs in JSON format, stored in two files:
1. **bangs.json**: Contains the full set of bangs, formatted, for easy readability.
2. **bangs.minified.json**: A minified version of `bangs.json` without unnecessary whitespace, optimized for faster processing.

## Contributing to Bangs!

We welcome contributions from the community! If you have a useful bang shortcut that isn't already listed, please consider adding it. 

Here’s how you can contribute:

1. **Fork the Repository**: Click on the "Fork" button at the top right of this repository to create your own copy.
2. **Clone the Forked Repository**: Clone it to your local machine using `git clone https://github.com/aploide/bangs`.
3. **Add Your Bang Shortcut**: Create a new JSON entry in the format provided below and add it to `bangs.json`:

```json
{
    "!uniqueIdentifier": "Formatted url with {{{query}}}",
    "!newshortcut": "https://example.com/?q={{{query}}}"
}
```
Make sure your bang shortcut starts with an exclamation mark (`!`) followed by a unique identifier and the URL pattern which includes `{{{query}}}` where the search term should be inserted.

4. **Test Your Contribution**: Before submitting a pull request, test your bang link to ensure it works as expected in your browser.
5. **Submit a Pull Request**: Push your changes to your fork and submit a pull request to this repository. Please include a clear description of your changes.
6. **Automate Minification**: Use the provided minification scripts (or create your own) to update `bangs.minified.json` with your new entry included. Make sure to test the minification process to avoid any errors.
7. **Wait for Review**: Your pull request will be reviewed, and if everything looks good, it will be merged into the main repository!

## Example Contribution

If you want to add a shortcut that searches on the WikiDictionary, your entry might look like this:

```json
{
    // Actually this bang is really present in the bangs
    "!wikt": "https://en.wiktionary.org/w/index.php?search={{{query}}}"
}
```

After adding this to `bangs.json` and running the minification script, it should also appear in `bangs.minified.json`.

## Scripts for Minification

You can use the Bash script `minifier.sh` to minify the banglist, to use just type:

```bash
bash minifier.sh bangs.json

#Or you can call it like this:

chmod +x minifier.sh 
#then
./minifier.sh bangs.json

## If everything is right it should output "Minified JSON saved to bangs.minified.json"
```


