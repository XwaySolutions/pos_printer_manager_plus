import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:pos_printer_manager_plus/pos_printer_manager_plus.dart';

void main() {
  const MethodChannel channel = MethodChannel('pos_printer_manager_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await PosPrinterManager.platformVersion, '42');
  // });
}
