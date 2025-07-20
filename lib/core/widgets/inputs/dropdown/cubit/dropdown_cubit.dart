import 'package:bloc/bloc.dart';

class AppDropdownCubit<T> extends Cubit<T?> {
  AppDropdownCubit(super.initialValue);

  void select(T? value) => emit(value);

  T? get selectedValue => state;

  bool get isSelected => state != null;
}
