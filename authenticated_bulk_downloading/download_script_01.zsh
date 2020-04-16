youtube-dl -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' -o "~/Downloads/test/%(title)s.%(ext)s" --cookie cookie.txt -a links_01.txt
