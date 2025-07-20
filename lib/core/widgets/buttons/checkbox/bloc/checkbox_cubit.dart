import 'package:bloc/bloc.dart';

class AppCheckboxCubit extends Cubit<bool> {
  AppCheckboxCubit(super.initialValue);

  void toggle() => emit(!state);

  void setChecked(bool value) => emit(value);

  bool get isChecked => state;
}
