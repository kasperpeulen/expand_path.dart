# expand_path.dart

Bash-like tilde expansion for dart. Expands a leading tilde in a file path to the user home directory

[![Build Status](https://travis-ci.org/kasperpeulen/expand_path.dart.svg?branch=master)](https://travis-ci.org/kasperpeulen/expand_path.dart)
[![Coverage Status](https://coveralls.io/repos/kasperpeulen/expand_path.dart/badge.svg?branch=master&service=github)](https://coveralls.io/github/kasperpeulen/expand_path.dart?branch=master)
[![Pub](https://img.shields.io/pub/v/expand_path.svg)](https://pub.dartlang.org/packages/expand_path)
[![Documentation Status](https://img.shields.io/badge/dartdocs-latest-blue.svg)](https://www.dartdocs.org/documentation/expand_path/0.0.2/index.html)

## Usage

A simple usage example:

```dart
import 'package:expand_path/expand_path.dart';

void main() {
  print(expandPath('~')); // '/Users/kasper'
}

```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

## License

[MIT][license]

[tracker]: https://github.com/kasperpeulen/expand_path

[license]: LICENSE

