extension NumberExtension on double {
  double get mgToMm {
    return this * 111 / 2000;
  }

  double get mmToMg {
    return this * 2000 / 111;
  }
}
