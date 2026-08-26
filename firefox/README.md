Install Firefox Developer Edition on Ubuntu
---

The next guide is to enable Firefox Developer Edition on Ubuntu.


1. First visit the home page of [Firefox Developer Edition](https://www.firefox.com/en-US/channel/desktop/developer/) and download the `.tar` package.
2. Uncompress the `.tar file using the next command`:

```bash
tar -xvf firefox-[version].tar.xz
```

3. Move the uncompressed `firefox` directory to the `/opt` folder

```bash
sudo mv firefox /opt/firefox-dev-edition/
```

4. Create the symbolic link into the `/usr/bin/` folder.

```bash
sudo ln -sf /opt/firefox-dev-edition/firefox /usr/bin/firefox-dev-edition
```

5.  Create the `.desktop` file to associate the icons

```bash
nano ~/.local/share/applications/firefox-dev-edition.desktop
```

Then, add the next content:

```
[Desktop Entry]
Name=Firefox Developer Edition
Exec=/opt/firefox-dev-edition/firefox %u
Icon=/opt/firefox-dev-edition/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
StartupNotify=true
```
