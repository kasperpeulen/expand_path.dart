import 'package:homedir/homedir.dart';

/// Expand a `~` character in a [path] to the home directory.
///
///     expandPath('~') == '/Users/kasper'
///
///     expandPath('~/file.txt') == '/Users/kasper/file.txt'
///
String expandPath(String path) {
  if (!path.startsWith('~')) {
    throw new ArgumentError('path can only be expanded if it starts with ~');
  }
  return path.replaceFirst('~', homeDirPath);
}
