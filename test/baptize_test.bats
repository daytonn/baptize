#!/usr/bin/env bats

load test_helper

@test "it has a baptize root variable" {
  [ "$BAPTIZE_ROOT" == "$HOME/.baptize" ]
}

@test "it defers if the baptize root variable is set" {
  BAPTIZE_ROOT="test"
  source "$ROOT/lib/baptize.sh"
  [ "$BAPTIZE_ROOT" == "test" ]
}
