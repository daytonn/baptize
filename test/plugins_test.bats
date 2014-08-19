#!/usr/bin/env bats

load test_helper

@test "it has a baptize plugin root variable" {
  source "$ROOT/lib/plugins.sh"
  [ "$BAPTIZE_PLUGIN_ROOT" == "$BAPTIZE_ROOT/plugins" ]
}

@test "it defers if the baptize plugin root variable is set" {
  BAPTIZE_PLUGIN_ROOT="test"
  source "$ROOT/lib/plugins.sh"
  [ "$BAPTIZE_PLUGIN_ROOT" == "test" ]
}

@test "it has a baptize plugins enabled variable" {
  BAPTIZE_PLUGIN_ROOT="$ROOT/test/fixtures/plugins"
  source "$ROOT/lib/plugins.sh"
  [ "$BAPTIZE_PLUGINS_ENABLED" == "yes" ]
}

@test "it defers if the baptize plugins enabled variable is set" {
  BAPTIZE_PLUGIN_ROOT="$ROOT/test/fixtures/plugins"
  BAPTIZE_PLUGINS_ENABLED="no"
  source "$ROOT/lib/plugins.sh"
  [ "$BAPTIZE_PLUGINS_ENABLED" == "no" ]
}

@test "it loads each plugin in the plugin root" {
  BAPTIZE_PLUGIN_ROOT="$ROOT/test/fixtures/plugins"
  unset TEST_PLUGIN_LOADED
  source "$ROOT/lib/plugins.sh"
  [ "$TEST_PLUGIN_LOADED" == "yes" ]
}

@test "it DOES NOT load each plugin in the plugin root when plugins are disabled" {
  BAPTIZE_PLUGIN_ROOT="$ROOT/test/fixtures/plugins"
  BAPTIZE_PLUGINS_ENABLED="no"
  unset TEST_PLUGIN_LOADED
  source "$ROOT/lib/plugins.sh"
  [ "$TEST_PLUGIN_LOADED" != "yes" ]
}
