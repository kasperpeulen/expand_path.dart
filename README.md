# expand_path.dart

Bash-like tilde expansion for dart. Expands a leading tilde in a file path to the user home directory

<a href="https://travis-ci.org/kasperpeulen/expand_path.dart"><img src="https://travis-ci.org/kasperpeulen/expand_path.dart.svg?branch=master" alt="Build Status" /></a>
<a href="https://coveralls.io/github/kasperpeulen/expand_path.dart?branch=master"><img src="https://coveralls.io/repos/kasperpeulen/expand_path.dart/badge.svg?branch=master&amp;service=github" alt="Coverage Status" /></a>
<a href="https://pub.dartlang.org/packages/expand_path"><img src="https://img.shields.io/pub/v/expand_path.svg" alt="Pub" /></a>
<a href="https://www.dartdocs.org/documentation/expand_path/latest/index.html"><img src="https://img.shields.io/badge/dartdocs-latest-blue.svg" alt="Documentation Status" /></a>
<a href="https://github.com/kasperpeulen/expand_path.dart/blob/master/LICENSE"><img src="https://img.shields.io/github/license/mashape/apistatus.svg" alt="GitHub license" /></a>
<a href="https://github.com/kasperpeulen/expand_path.dart/issues"><img src="https://img.shields.io/github/issues-raw/kasperpeulen/expand_path.dart.svg" alt="Github Issues" /></a>

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

[tracker]: https://github.com/kasperpeulen/expand_path.dart/issues

[license]: https://github.com/kasperpeulen/expand_path.dart/blob/master/LICENSE
