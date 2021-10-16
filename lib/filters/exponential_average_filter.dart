class ExponentialAverageFilter {
  final double scale;
  double value;

  ExponentialAverageFilter(this.scale, this.value);

  double getValue(double unFilteredValue) {
    return value ??= value * (1 - scale) + unFilteredValue * scale;
  }

}