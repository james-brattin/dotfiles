# custom bash functions

up() {
  levels=$1
  while [ "$levels" -gt "0" ]; do
    cd ..
    levels=$(($levels - 1))
  done
}

# list of commands/apps to add to an install script:
install_starship() {
  curl -sS https://starship.rs/install.sh | sh
}

install_pnpm() {
  curl -fsSL https://get.pnpm.io/install.sh | sh -
}

install_deno() {
  curl -fsSL https://deno.land/install.sh | sh
}

audio_rs() {
  systemctl --user stop wireplumber.service
  rm -r ~/.local/state/wireplumber
  systemctl --user start wireplumber.service
}

largest() {
  find . -type f -exec du -h {} + | sort -hr | head -n 10
}
