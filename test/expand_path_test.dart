import 'dart:io';

import 'package:expand_path/expand_path.dart';
import 'package:homedir/homedir.dart';
import 'package:test/test.dart';

void main() {
  test("new Dir(expandPath('~') == homeDir", () {
    expect(new Directory(expandPath("~")).path, equals(homeDirPath));
  });

  test("it can expand paths of the form ~/file.txt", () {
    expect(expandPath('~/file.txt'), equals('$homeDirPath/file.txt'));
  });

  test("it throws when the path doesn't start with ~", () {
    expect(() => expandPath('file.txt'),
        throwsA(new isInstanceOf<ArgumentError>()));
  });
}
