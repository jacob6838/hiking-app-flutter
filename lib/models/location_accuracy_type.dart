enum LocationAccuracyType { high, medium, low }
extension LocationAccuracyTypeExtension on LocationAccuracyType {

  int get value {
    switch (this) {
      case LocationAccuracyType.low:
        return 4;
      case LocationAccuracyType.medium:
        return 8;
      case LocationAccuracyType.high:
        return 25;
      default:
        return null;
    }
  }
}