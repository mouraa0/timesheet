import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timesheet/core/widgets/buttons/checkbox/bloc/checkbox_cubit.dart';

class AppCheckbox extends StatefulWidget {
  final String label;
  final bool initialValue;
  final void Function(bool?)? onChanged;

  const AppCheckbox({
    super.key,
    required this.label,
    this.initialValue = false,
    this.onChanged,
  });

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  late final AppCheckboxCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = AppCheckboxCubit(widget.initialValue);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        BlocBuilder<AppCheckboxCubit, bool>(
          bloc: _cubit,
          builder: (context, state) {
            return Checkbox(
              value: state,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              checkColor: Theme.of(context).colorScheme.onPrimaryContainer,
              fillColor: WidgetStateColor.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Theme.of(context).colorScheme.onSurface;
                }

                return Colors.transparent;
              }),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: WidgetStateBorderSide.resolveWith((states) {
                return BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 2,
                );
              }),
              onChanged: (v) {
                _cubit.toggle();
                widget.onChanged?.call(v);
              },
            );
          },
        ),
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
