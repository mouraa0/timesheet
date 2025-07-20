import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timesheet/core/styles/color.dart';
import 'package:timesheet/core/styles/icons.dart';
import 'package:timesheet/core/styles/inputs.dart';
import 'package:timesheet/core/styles/text_style.dart';
import 'package:timesheet/core/widgets/inputs/dropdown/cubit/dropdown_cubit.dart';
import 'package:timesheet/core/widgets/text/text.dart';

class AppDropdown<T> extends StatefulWidget {
  final List<T> items;
  final String hint;
  final String Function(T) getLabel;
  final void Function(T?)? onChanged;
  final T? value;

  const AppDropdown({
    super.key,
    required this.items,
    required this.getLabel,
    required this.onChanged,
    required this.hint,
    this.value,
  });

  @override
  State<AppDropdown<T>> createState() => _AppDropdownState<T>();
}

class _AppDropdownState<T> extends State<AppDropdown<T>> {
  late final AppDropdownCubit<T?> _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = AppDropdownCubit<T?>(widget.value);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  List<DropdownMenuItem<T>> _addDividersAfterItems(List<T> items) {
    final List<DropdownMenuItem<T>> menuItems = [];

    for (final T item in items) {
      menuItems.addAll([
        DropdownMenuItem<T>(
          value: item,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppText(
              widget.getLabel(item),
              textStyle: AppTextStyle.bodyLargeOnSurface,
            ),
          ),
        ),
        if (item != items.last)
          const DropdownMenuItem(
            enabled: false,
            child: Divider(color: AppColors.outline),
          ),
      ]);
    }

    return menuItems;
  }

  List<double> _getCustomItemsHeights() {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (widget.items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(AppInputsStyle.height);
      }
      if (i.isOdd) {
        itemsHeights.add(1);
      }
    }

    return itemsHeights;
  }

  @override
  Widget build(BuildContext context) {
    final items = _addDividersAfterItems(widget.items);

    return BlocBuilder<AppDropdownCubit<T?>, T?>(
      bloc: _cubit,
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2<T>(
            isExpanded: true,
            isDense: true,
            onChanged: (value) {
              _cubit.select(value);
              widget.onChanged?.call(value);
            },
            value: state,
            hint: AppText(
              widget.hint,
              textStyle: AppTextStyle.bodyLargeOnSurface,
            ),
            items: items,
            iconStyleData: IconStyleData(
              icon: SvgPicture.asset(AppIcons.arrowDown),
            ),
            selectedItemBuilder: (context) {
              return items.map((menuItem) {
                if (menuItem.enabled == false) {
                  return const SizedBox.shrink();
                }

                return AppText(
                  widget.getLabel(menuItem.value as T),
                  textStyle: AppTextStyle.bodyLargeOnSurface,
                );
              }).toList();
            },
            menuItemStyleData: MenuItemStyleData(
              customHeights: _getCustomItemsHeights(),
              padding: const EdgeInsets.symmetric(horizontal: 0),
            ),
            buttonStyleData: ButtonStyleData(
              height: AppInputsStyle.height,
              padding: EdgeInsets.symmetric(
                horizontal: AppInputsStyle.contentPadding,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppInputsStyle.borderRadius,
                ),
                border: Border.all(
                  color: AppInputsStyle.borderColor,
                  width: AppInputsStyle.borderWidth,
                ),
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              offset: const Offset(0, -4),
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppInputsStyle.borderRadius,
                ),
                color: AppColors.surfaceAtOneDark,
                boxShadow: List.empty(),
              ),
            ),
          ),
        );
      },
    );
  }
}
