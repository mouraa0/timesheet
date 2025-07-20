import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timesheet/core/styles/color.dart';
import 'package:timesheet/core/styles/icons.dart';
import 'package:timesheet/core/styles/text_style.dart';
import 'package:timesheet/core/widgets/text/text.dart';

class AppDropdown<T> extends StatelessWidget {
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
  Widget build(BuildContext context) {
    List<DropdownMenuItem<T>> addDividersAfterItems(List<T> items) {
      final List<DropdownMenuItem<T>> menuItems = [];

      for (final T item in items) {
        menuItems.addAll([
          DropdownMenuItem<T>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppText(
                getLabel(item),
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

    List<double> getCustomItemsHeights() {
      final List<double> itemsHeights = [];
      for (int i = 0; i < (items.length * 2) - 1; i++) {
        if (i.isEven) {
          itemsHeights.add(56);
        }
        if (i.isOdd) {
          itemsHeights.add(1);
        }
      }

      return itemsHeights;
    }

    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        isDense: true,
        onChanged: onChanged,
        value: value,
        hint: AppText(hint, textStyle: AppTextStyle.bodyLargeOnSurface),
        items: addDividersAfterItems(items),
        iconStyleData: IconStyleData(
          icon: SvgPicture.asset(AppIcons.arrowDown),
        ),
        selectedItemBuilder: (context) => items
            .map(
              (item) => AppText(
                getLabel(item),
                textStyle: AppTextStyle.bodyLargeOnSurface,
              ),
            )
            .toList(),
        menuItemStyleData: MenuItemStyleData(
          customHeights: getCustomItemsHeights(),
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        buttonStyleData: ButtonStyleData(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.outline, width: 2),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          offset: const Offset(0, -4),
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.surfaceAtOneDark,
            boxShadow: List.empty(),
          ),
        ),
      ),
    );
  }
}
