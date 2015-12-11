import 'package:grinder/grinder.dart';

void main(List<String> args) {
  grind(args);
}

@DefaultTask()
@Depends(analyze, test, format)
void prepush() {}

@Task()
@Depends(analyze, test, testdartfmt)
void bot() {}

@Task()
void analyze() {
  new PubApp.global('tuneup')..run(['check']);
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
