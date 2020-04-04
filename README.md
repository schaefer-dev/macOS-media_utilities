# Livestreaming of Twitch Content

Opens new Terminal window to start livestreaming of content which is served to a media-player. This allows the user to keep using the previously existing terminal window without interruptions.

Used daily in my workflow in combination with [my fork of twitchy](https://github.com/schaefer-dev/twitchy) to consume content on twitch.

### Using IINA (Recommended)

**Dependencies:**
- [IINA.app](https://iina.io) Built on top of MPV with e.g. Picture-in-Picture, Touchbar and Darkmode support.
- [Streamlink](https://github.com/streamlink/streamlink) Command-line utility to **efficiently** pipe video content into media player. Very significant battery-life improvement compared to streaming in Chrome/Safari.
- [iTerm2](https://www.iterm2.com) setup with existing profile called 'ZSH\_livestream'. Alternatively adjust script to use different Profile name.

**Setup:**
- Add `source ~/path/to/livestreaming/iina.zsh` to your zsh setup. This probably works with a variety of shells (bash etc.) however due to zsh being both my personal choice and now even the default in macOS, I limited my testing to zsh.
- Add a Profile called **ZSH\_livestream** to iTerm2. I suggest do use a different profile than your default here to be able to configure a smaller terminal window, smaller font size etc. because usually no interaction with the window will be required and it only exists for debugging reasons if there are any connection issues.

**Usage:**
- Type e.g. `stream summit1g` to open Summit1g stream.
- To check for online streams one could use [my fork of twitchy](https://github.com/schaefer-dev/twitchy), which lists all streamers you follow that are currently online with the game they are playing etc.


### Using MPV

TODO



# Bulk-Download of Video content which requires authentication using cookies

[List of supported Sites](http://ytdl-org.github.io/youtube-dl/supportedsites.html), all sites on which youtube-dl is able to interpret video.

**Dependencies:**
- Youtube-DL

**Usage:**
- Export Authentication cookie using chrome extension [EditThisCookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en). The format of the export has to be changed into Netscape format using the preferences of the extension.
- Run `formatcookie.zsh` with the correct URL of the website to generate a cookie format that can be read by youtube-dl.
- Start `youtube-dl` downloads using `download_script_01.zsh`. This will download all links that are contained in `example_links_01.txt`. You can use multiple instances of this script to download using different threads by splitting the list of links into multiple lists and calling the download script for each of these lists in seperate zsh instances.

I will add automation to this multi-threaded download later, however this is not trivial - due to the error-prone-ness of youtube-dl and the inability to react to errors/timeouts in a convenient way. Running every thread in its own zsh instances simplifies the debugging of errors a lot here because their output can easily observed independantly.
