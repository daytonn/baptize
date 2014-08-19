if [ -z $BAPTIZE_PLUGIN_ROOT ]; then
  BAPTIZE_PLUGIN_ROOT="$BAPTIZE_ROOT/plugins"
fi

if [ -z $BAPTIZE_PLUGINS_ENABLED ]; then
  BAPTIZE_PLUGINS_ENABLED="yes"
fi

function __baptize_load_plugins {
  if [ "$BAPTIZE_PLUGINS_ENABLED" == "yes" ]; then
    for plugin_dir in $(find $BAPTIZE_PLUGIN_ROOT/ -type d)
    do
      local plugin_name=$(basename $plugin_dir)
      if [[ -f "$plugin_dir/${plugin_name}.sh" ]]; then
        source "$plugin_dir/${plugin_name}.sh"
      fi
    done
  fi
}

__baptize_load_plugins
