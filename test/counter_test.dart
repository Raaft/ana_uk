import 'package:test/test.dart';
import 'package:ana_uk/counter.dart';

main() {
  final obj = new Counter();

  group('Counter', () {
    test('Counter increments smoke test', () {
      obj.increment();
      expect(obj.count, 1);
    });
    test('Counter increments smoke test', () {
      obj.decrement();
      expect(obj.count, 0);
    });
  });
}
