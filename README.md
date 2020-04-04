# Livestreaming of Twitch Content

opens new Terminal window to start livestreaming of content which is served to a media-player. This allows the user to keep using the previously existing terminal window without interruptions.

### Using IINA (Recommended)

**Dependencies:**
- [IINA.app](https://iina.io)
- [Streamlink](https://github.com/streamlink/streamlink)
- [iTerm2](https://www.iterm2.com) setup with existing profile called 'ZSH\_livestream'. Alternatively adjust script to use different Profile name.

**Setup:**
- Add `source ~/path/to/iina.zsh` to your zsh setup. This probably works with a variety of shells (bash etc.) however due to zsh being both my personal choice and now even the default in macOS, I limited my testing to zsh.

**Usage:**
- Type e.g. `stream summit1g` to open Summit1g stream.
- To check for online streams one could use [my fork of twitchy](https://github.com/schaefer-dev/twitchy), which lists all streamers you follow that are currently online with the game they are playing etc.


### Using MPV

TODO



# Bulk-Download of Video content which requires authentication using cookies

**Dependencies:**
- Youtube-DL

**Usage:**
- Export Authentication cookie using chrome extension [EditThisCookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en). The format of the export has to be changed into Netscape format using the preferences of the extension.
- Run `formatcookie.zsh` with the correct URL of the website to generate a cookie format that can be read by youtube-dl.
- Start `youtube-dl` downloads using `download_script_01.zsh`. This will download all links that are contained in `example_links_01.txt`. You can use multiple instances of this script to download using different threads by splitting the list of links into multiple lists and calling the download script for each of these lists in seperate zsh instances.

I will add automation to this multi-threaded download later, however this is not trivial - due to the error-prone-ness of youtube-dl and the inability to react to errors/timeouts in a convenient way. Running every thread in its own zsh instances simplifies the debugging of errors a lot here because their output can easily observed independantly.