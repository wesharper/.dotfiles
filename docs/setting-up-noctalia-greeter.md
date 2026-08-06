# Setting Up Noctalia Greeter

Based on the [Noctalia docs](https://docs.noctalia.dev/v5/greeter/) and the [noctalia-greeter README](https://github.com/noctalia-dev/noctalia-greeter).

First, install dependencies:
```bash
sudo pacman -S meson gcc just \
  greetd dbus \
  wayland wayland-protocols wlroots0.20 \
  libglvnd freetype2 fontconfig \
  cairo pango harfbuzz \
  libxkbcommon glib2 \
  tomlplusplus nlohmann-json stb \
  libwebp librsvg
```

Next, update `/etc/greetd/config.toml` with the output from `which noctalia-greeter-session`:
```toml
[default_session]
command = "/usr/bin/noctalia-greeter-session"
user = "greeter"
```

Now, configure `noctalia-greeter` as the display manager:
```bash
systemctl disable display-manager
systemctl enable greetd
sudo systemctl restart greetd # this will trigger a logout and go to the greeter screen
```

Finally, optionally configure the greeter.
