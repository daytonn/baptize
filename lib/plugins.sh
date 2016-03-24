if [ -z "$BAPTIZE_PLUGIN_ROOT" ]; then
  BAPTIZE_PLUGIN_ROOT="$BAPTIZE_ROOT/plugins"
fi

if [ -z "$BAPTIZE_PLUGINS_ENABLED" ]; then
  BAPTIZE_PLUGINS_ENABLED="yes"
fi

function __baptize_create_plugin {
  local plugin_name="$1"
  local plugin_root="$BAPTIZE_PLUGIN_ROOT/$1"
  mkdir "$plugin_root"
  mkdir "$plugin_root/test"
  touch "$plugin_root/$plugin_name.sh"
  touch "README.md"

  echo "$plugin_name" > "$plugin_root/README.md"
  echo "$plugin_name" | sed 's/./=/g' >> "$plugin_root/README.md"
  echo "" >> "$plugin_root/README.md"
  echo "This plugin needs documentation." >> "$plugin_root/README.md"

  echo "$(green 'created ->') $plugin_root/"
  echo "$(green 'created ->') $plugin_root/$plugin_name.sh"
  echo "$(green 'created ->') $plugin_root/README.md"
  echo "$(green 'created ->') $plugin_root/test/"
  echo "$(green 'created git repository')"

  cd "$plugin_root"
  ls -alh

  git init
  git add .
  git commit -m "Initial commit"
}

function __baptize_load_plugins {
  if [ "$BAPTIZE_PLUGINS_ENABLED" == "yes" ]; then
    for plugin_dir in $(find "$BAPTIZE_PLUGIN_ROOT"/ -type d)
    do
      local plugin_name=$(basename "$plugin_dir")
      if [[ -f "$plugin_dir/${plugin_name}.sh" ]]; then
        source "$plugin_dir/${plugin_name}.sh"
      fi
    done
  fi
}

__baptize_load_plugins
