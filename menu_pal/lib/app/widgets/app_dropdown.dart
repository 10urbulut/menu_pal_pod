import 'dart:async';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:menu_pal/app/app_defaults.dart';

class AppDropdown extends StatelessWidget {
  const AppDropdown({
    super.key,
    this.items,
    this.popupLabel,
    this.labelText,
    this.itemAsString,
    this.onChanged,
    this.dropdownBuilder,
    this.icon,
  });
  final FutureOr<List<dynamic>> Function(String filter, LoadProps? loadProps)?
      items;
  final Widget? popupLabel;
  final void Function(dynamic)? onChanged;
  final String? labelText;
  final Widget Function(BuildContext context, dynamic selectedItem)?
      dropdownBuilder;
  final String Function(dynamic value)? itemAsString;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch(
      onChanged: onChanged,
      items: items,
      itemAsString: itemAsString,
      popupProps: PopupProps.menu(
        showSearchBox: true,
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            label: popupLabel,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
        menuProps: MenuProps(
            borderRadius:
                BorderRadius.circular(AppDefaults.kStandartBorderRadius),
            borderOnForeground: true),
      ),
      decoratorProps: DropDownDecoratorProps(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: Icon(icon, size: 22),
            contentPadding: const EdgeInsets.only(top: 3)),
      ),
      compareFn: (item1, item2) {
        return item1 == item2;
      },
      dropdownBuilder: dropdownBuilder,
    );
  }
}

class AppDropdownMulti extends StatelessWidget {
  const AppDropdownMulti({
    super.key,
    this.items,
    this.popupLabel,
    this.labelText,
    this.itemAsString,
    this.onChanged,
    this.dropdownBuilder,
    this.icon,
    this.selectedItems = const [],
  });
  final List<dynamic> selectedItems;
  final FutureOr<List<dynamic>> Function(String filter, LoadProps? loadProps)?
      items;
  final Widget? popupLabel;
  final void Function(dynamic)? onChanged;
  final String? labelText;
  final Widget Function(BuildContext context, List<dynamic> items)?
      dropdownBuilder;
  final String Function(dynamic value)? itemAsString;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch.multiSelection(
      selectedItems: selectedItems,
      onChanged: onChanged,
      items: items,
      itemAsString: itemAsString,
      popupProps: PopupPropsMultiSelection.menu(
        showSearchBox: true,
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            label: popupLabel,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
        menuProps: MenuProps(
            borderRadius:
                BorderRadius.circular(AppDefaults.kStandartBorderRadius),
            borderOnForeground: true),
      ),
      decoratorProps: DropDownDecoratorProps(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: Icon(icon, size: 22),
            contentPadding: const EdgeInsets.only(top: 3)),
      ),
      compareFn: (item1, item2) {
        return item1 == item2;
      },
      dropdownBuilder: dropdownBuilder,
    );
  }
}
