#!/bin/bash

# Fast fail the script on failures.
set -e

# analyze, test, check formatting
pub run grinder bot

if [ "$COVERALLS_TOKEN" ]; then
  pub global activate dart_coveralls
  pub global run dart_coveralls report \
    --retry 2 \
    --exclude-test-files \
    test/expand_path_test.dart
fi