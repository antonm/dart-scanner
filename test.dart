#import("scanner.dart");
#import("token.dart");

String readFile(filename) {
  // hack-hack-hack until I find the proper lib function/usage
  List<int> buffer = new List<int>(100000);
  int read = new File(filename, false).readList(buffer, 0, 100000);
  return new String.fromCharCodes(buffer.getRange(0, read));
}

main() {
  Token.initialize();

  var src = readFile("token.dart");
  var scanner = new DartScanner(src);
  //var scanner = new DartScanner("int hello = 42;");
  //var scanner = new DartScanner("main() { var x = 0x15; }");
  print(scanner);
}
