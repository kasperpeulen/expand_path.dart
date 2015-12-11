import 'package:homedir/homedir.dart';

String expandPath(String path) {
  if (!path.startsWith('~')) {
    throw new ArgumentError('path can only be expanded if it starts with ~');
  }
  return path.replaceFirst('~', homeDirPath);
}
