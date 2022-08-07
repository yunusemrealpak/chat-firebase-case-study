// ignore_for_file: constant_identifier_names

enum Environments {
  API_URL,
}

extension EnvironmentsExtension on Environments {
  String get value => toString();
}
