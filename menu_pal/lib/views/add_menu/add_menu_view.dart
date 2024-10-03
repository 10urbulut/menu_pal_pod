import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menu_pal/app/widgets/app_dropdown.dart';
import 'package:menu_pal/views/add_menu/add_menu_view_model.dart';
import 'package:menu_pal/widgets/app_text_field.dart';
import 'package:menu_pal_client/menu_pal_client.dart';
import 'package:provider/provider.dart';

import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class AddMenuView extends StatelessWidget {
  const AddMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddMenuViewModel(),
      builder: (context, _) {
        return BasePageView<AddMenuViewModel>(
          appBar: AppBar(
            title: const Text('Add Menu'),
          ),
          content: const _ViewContent(),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            IconButton(
                onPressed: context.read<AddMenuViewModel>().openCamera,
                icon: const Icon(Icons.add_a_photo)),
            const Text('Add Link QR From Camera'),
            const SizedBox(height: 10),
            const Text('OR'),
          ],
        ),
        AppTextField(
          icon: FontAwesomeIcons.link,
          labelText: "Paste Menu Link",
          controller: context.read<AddMenuViewModel>().qrTextFieldController,
        ),
        AppTextField(
          icon: FontAwesomeIcons.brandsFontAwesome,
          labelText: "Restaurant Name",
          controller: context.read<AddMenuViewModel>().nameTextFieldController,
        ),
        AppTextField(
          icon: FontAwesomeIcons.noteSticky,
          labelText: "Description (If You Want Already)",
          controller:
              context.read<AddMenuViewModel>().descriptionTextFieldController,
        ),
        AppDropdownMulti(
          selectedItems:
              context.read<AddMenuViewModel>().selectedRestaurantTypes,
          onChanged: context.read<AddMenuViewModel>().restaurantTypesOnChanged,
          icon: FontAwesomeIcons.utensils,
          itemAsString: (value) => value.name,
          labelText: "Restaurant Type",
          popupLabel: const Text('Search Restaurant Type'),
          items: (filter, loadProps) =>
              context.read<AddMenuViewModel>().restaurantTypes,
          dropdownBuilder: (context, items) {
            return Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: items
                  .map(
                    (item) => Chip(
                      padding: const EdgeInsets.symmetric(),
                      label: Text(item.name),
                    ),
                  )
                  .toList(),
            );
          },
        ),
        AppDropdown(
          icon: FontAwesomeIcons.city,
          itemAsString: (value) => value.name,
          labelText: "City",
          onChanged: context.read<AddMenuViewModel>().cityOnChanged,
          popupLabel: const Text('Search City'),
          items: (filter, loadProps) => context.read<AddMenuViewModel>().cities,
          dropdownBuilder: (_, selectedItem) {
            return Text(
              selectedItem?.name ?? "",
              style: Theme.of(context).textTheme.bodyLarge,
            );
          },
        ),
        Selector<AddMenuViewModel, List<District>>(
          selector: (_, viewModel) => viewModel.districts,
          builder: (_, districts, __) => Visibility(
            visible: districts.isNotEmpty,
            child: AppDropdown(
              onChanged: context.read<AddMenuViewModel>().districtOnChanged,
              icon: FontAwesomeIcons.city,
              itemAsString: (value) => value.name,
              labelText: "District",
              popupLabel: const Text('Search District'),
              items: (filter, loadProps) => districts,
              dropdownBuilder: (_, selectedItem) {
                return Text(
                  (selectedItem?.name ?? ""),
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              },
            ),
          ),
        ),
        Selector<AddMenuViewModel, List<Town>>(
          selector: (_, viewModel) => viewModel.towns,
          builder: (_, towns, __) => Visibility(
            visible: towns.isNotEmpty,
            child: Column(
              children: [
                AppDropdown(
                  onChanged: context.read<AddMenuViewModel>().townOnChanged,
                  icon: FontAwesomeIcons.city,
                  itemAsString: (value) => value.name,
                  labelText: "Town",
                  popupLabel: const Text('Search Town'),
                  items: (filter, loadProps) => towns,
                  dropdownBuilder: (_, selectedItem) {
                    return Text(
                      selectedItem?.name ?? "",
                      style: Theme.of(context).textTheme.bodyLarge,
                    );
                  },
                ),
                AppTextField(
                  labelText: "Street",
                  controller: context
                      .read<AddMenuViewModel>()
                      .streetTextFieldController,
                  icon: FontAwesomeIcons.streetView,
                ),
              ],
            ),
          ),
        ),
        AppTextField(
          onTap: context.read<AddMenuViewModel>().locationTextFieldTapped,
          labelText: "Take My Location",
          controller:
              context.read<AddMenuViewModel>().locationTextFieldController,
          icon: FontAwesomeIcons.mapPin,
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: context.read<AddMenuViewModel>().saveOnTapped,
                child: const Text("Save")),
          ],
        ),
      ],
    );
  }
}
