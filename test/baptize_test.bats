#!/usr/bin/env bats

load test_helper

@test "it has a baptize config file variable" {
  [ "$BAPTIZE_CONFIG" == "$HOME/.baptize" ]
}

@test "it defers if the baptize config file variable is set" {
  BAPTIZE_CONFIG="test"
  source "$ROOT/lib/baptize.sh"
  [ "$BAPTIZE_CONFIG" == "test" ]
}

@test "it loads the baptize config file" {
  BAPTIZE_CONFIG="$ROOT/test/fixtures/.baptize"
  source "$ROOT/lib/baptize.sh"
  [ "$BAPTIZE_LOADED" == "yes" ]
}
