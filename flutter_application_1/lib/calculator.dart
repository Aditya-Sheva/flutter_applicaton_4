import 'constants.dart';

class Calculator {
  Calculator({
    required this.height,
    required this.weight,
    required this.gender,
    this.age = 25, // default age
  });

  final int height; // dalam cm
  final int weight; // dalam kg
  final int age; // dalam tahun
  final Gender gender;

  double _bmr = 0.0;

  // === Perhitungan BMR ===
  String calculateBMR() {
    if (gender == Gender.male) {
      _bmr = 88.36 + (13.4 * weight) + (4.8 * height) - (5.7 * age);
    } else {
      _bmr = 447.6 + (9.25 * weight) + (3.10 * height) - (4.33 * age);
    }
    return _bmr.toStringAsFixed(1);
  }

  // === Kategori interpretasi umum ===
  String getResult() {
    if (_bmr < 1500) {
      return 'Low';
    } else if (_bmr < 2000) {
      return 'Moderate';
    } else {
      return 'High';
    }
  }

  // === Pesan penjelasan ===
  String getInterpretation() {
    if (_bmr < 1500) {
      return 'Your BMR is quite low. You might need more calories per day.';
    } else if (_bmr < 2000) {
      return 'Your BMR is in the moderate range.';
    } else {
      return 'Your BMR is high. You burn calories faster.';
    }
  }
}
