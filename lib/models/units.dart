enum MainUnits { metric, imperial }

extension MainUnitsExtension on MainUnits {

  String get name {
    switch (this) {
      case MainUnits.metric:
        return 'metric';
      case MainUnits.imperial:
        return 'freedom';
      default:
        return null;
    }
  }
}

enum SpeedUnitsImperial { minpmi, mph, ftps }
extension SpeedUnitsImperialExtension on SpeedUnitsImperial {

  String get name {
    switch (this) {
      case SpeedUnitsImperial.minpmi:
        return 'min/mi';
      case SpeedUnitsImperial.mph:
        return 'mph';
      case SpeedUnitsImperial.ftps:
        return 'ft/s';
      default:
        return null;
    }
  }
}

enum SpeedUnitsMetric { mps, kmph }
extension SpeedUnitsMetricExtension on SpeedUnitsMetric {

  String get name {
    switch (this) {
      case SpeedUnitsMetric.mps:
        return 'm/s';
      case SpeedUnitsMetric.kmph:
        return 'km/hr';
      default:
        return null;
    }
  }
}



