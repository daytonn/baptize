if [ -z "$BAPTIZE_PLUGIN_ROOT" ]; then
  BAPTIZE_PLUGIN_ROOT="$BAPTIZE_ROOT/plugins"
fi

if [ -z "$BAPTIZE_PLUGINS_ENABLED" ]; then
  BAPTIZE_PLUGINS_ENABLED="yes"
fi

function __baptize_create_plugin {
  local plugin_name="$1"
  mkdir "$plugin_name"
  mkdir "$plugin_name/test"
  touch "$plugin_name/$plugin_name.sh"
  touch "README.md"

  echo "$plugin_name" > "$plugin_name/README.md"
  echo "$plugin_name" | sed 's/./=/g' >> "$plugin_name/README.md"
  echo "" >> "$plugin_name/README.md"
  echo "This plugin needs documentation." >> "$plugin_name/README.md"

  echo "$(green 'created ->') $plugin_name/"
  echo "$(green 'created ->') $plugin_name/$plugin_name.sh"
  echo "$(green 'created ->') $plugin_name/README.md"
  echo "$(green 'created ->') $plugin_name/test/"
  echo "$(green 'created git repository')"

  cd "$plugin_name"
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
