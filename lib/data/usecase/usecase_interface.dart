import 'package:flutter/material.dart';

abstract class IUseCase<T> {
  List<T> getAll();
  T get(String id);
  List<T> filter(DateTimeRange dateRange);
  Future delete(String id);
  Future update(String id, T model);
  Future add(T model);
}
