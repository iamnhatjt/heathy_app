enum SexEnum {
  male,
  female,
}

extension ExtensionSex on SexEnum {}

SexEnum? getSex(String? value) {
  if (value == null) {
    return null;
  } else {
    return SexEnum.values.firstWhere((element) => element.toString() == value);
  }
}
