# Add libpq to path (needed for some ruby gems)
export PATH="/$HOMEBREW_PREFIX/opt/libpq/bin:$PATH"
export LDFLAGS="-L/$HOMEBREW_PREFIX/opt/libpq/lib"
export CPPFLAGS="-I/$HOMEBREW_PREFIX/opt/libpq/include"
