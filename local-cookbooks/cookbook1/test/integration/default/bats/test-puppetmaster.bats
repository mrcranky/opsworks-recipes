#!/usr/bin/env bats

@test "binary is found in PATH" {
  run which puppet 
  [ "$status" -eq 0 ]
}

