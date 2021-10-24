import 'package:flutter_test/flutter_test.dart';
import 'package:hiking_app/filters/exponential_average_filter.dart';

void main() {
  test('Verify filter', () {
    final ExponentialAverageFilter filter = ExponentialAverageFilter(0.5, 0, 1);
    expect(filter.average, 0);
    double actual = filter.kalmanFilter(2);
    expect(actual, 1);
    actual = filter.getValue(2);
    expect(actual, 1.5);
  });
}