import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:heathy_app/for_test/counter_dart.dart';

void main() {
  testWidgets('counter dart for testing ...', (tester) async {});

  test("counter value should be incremented", () {
    final counter = CounterClass();
    counter.increment();
    expect(counter.value, 1);
  });

  // mutiple test in group

  group("Testing for group", () {
    test("value shout start at 0", () {
      expect(CounterClass().value, 0);
    });

    test("test increment counter class", () {
      final counterClass = CounterClass();
      counterClass.increment();

      expect(counterClass.value, 1);
    }, tags: 'chrome');

    test("test decremewnt counter class", () {
      final counterClass = CounterClass();
      counterClass.decrement();
      expect(counterClass.value, -1);
    });
  });

  // setup
  setUp(() {
    final counterSetup = CounterClass();
    counterSetup.increment();
    log("run setup all");
  });

  group("This test for this groupo", () {});
}
