import 'package:grinder/grinder.dart';
import 'package:grinder/src/utils.dart';
import 'dart:io';

void main(List<String> args) {
  grind(args);
}

@DefaultTask()
@Depends(analyze, test, format)
void prepush() {}

@Task()
@Depends(analyze, test, testdartfmt, coverage)
void bot() {}

@Task()
void analyze() {
  run('dartanalyzer',
      arguments:
          findDartSourceFiles(['lib', 'test', 'example', 'tool']).toList());
}

@Task()
void test() {
  new TestRunner().test();
}

@Task('Apply dartfmt to all Dart source files')
void format() {
  DartFmt.format(existingSourceDirs);
}

@Task('Apply dartfmt to all Dart source files')
void testdartfmt() {
  if (DartFmt.dryRun(existingSourceDirs)) {
    throw "dartfmt failure";
  }
}

@Task('Gather and send coverage data.')
void coverage() {
  final String coverageToken = Platform.environment['COVERALLS_TOKEN'];
  if (coverageToken != null) {
    PubApp coverallsApp = new PubApp.global('dart_coveralls');
    coverallsApp.run([
      'report',
      '--retry',
      '2',
      '--exclude-test-files',
      '--token',
      coverageToken,
      'test/expand_path_test.dart'
    ]);
  } else {
    log('Skipping coverage task: no environment variable `COVERALLS_TOKEN` found.');
  }
}
