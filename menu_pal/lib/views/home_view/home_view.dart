import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:menu_pal/models/menu/menu_model.dart';
import 'package:menu_pal/widgets/app_text_field.dart';
import 'package:menu_pal/widgets/no_image_widget.dart';
import 'package:provider/provider.dart';

import '../../app/blueprints/base_page_view.dart';
import 'home_viewmodel.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      builder: (context, _) {
        return BasePageView<HomeViewModel>(
          fabRequiresStatus: false,
          floatingActionButton: ElevatedButton(
            onPressed: context.read<HomeViewModel>().pushToAddMenuView,
            child: const Icon(Icons.add),
          ),
          // drawer: _Drawer(drawerDatas: drawerDatas),
          appBar: AppBar(
            title: const LogoTextWidget(),
            actions: [
              if (kDebugMode)
                ElevatedButton(
                  onPressed: context.read<HomeViewModel>().workPlaceMethod,
                  child: const Text("WorkPlace"),
                ),
              IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: context.read<HomeViewModel>().pushToProfileView,
              ),
            ],
          ),
          content: const _ViewContent(),
        );
      },
    );
  }
}

// ignore: unused_element
class _Drawer extends StatelessWidget {
  const _Drawer({required this.drawerDatas});

  final List<Widget> drawerDatas;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 180,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            children: drawerDatas,
          ),
        ],
      ),
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: LogoTextWidget(),
    // );
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                _SearchWidget(context.read<HomeViewModel>().search),
                Expanded(
                  child: Selector<HomeViewModel, List<MenuModel>>(
                    selector: (context, viewModel) => viewModel.filteredMenus,
                    builder: (context, links, _) => GridView.builder(
                      padding: const EdgeInsets.all(10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.27 / 2,
                      ),
                      itemCount: links.length,
                      itemBuilder: (context, index) {
                        return _ItemWidget(links[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget(this.item);
  final MenuModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: deleteButtonRules(context),
      ),
    );
  }

  List<Widget> deleteButtonRules(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: LimitedBox(
          maxHeight: 50,
          child: Text(
            item.title ?? "-",
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: item.thumbnail != null && item.thumbnail!.isNotEmpty
            ? Image.network(
                item.thumbnail!,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              )
            : const NoImageWidget(),
      ),
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          item.description ?? "-",
          overflow: TextOverflow.ellipsis,
        ),
      ),
      // const _StarsWidget(),
      const Spacer(),
      ElevatedButton(
        onPressed: () => context.read<HomeViewModel>().pushToWebView(item.link),
        child: const Text("See The Menu"),
      ),
      if (context.read<HomeViewModel>().deleteButtonRules(item))
        IconButton(
          onPressed: () =>
              context.read<HomeViewModel>().deleteButtonTapped(item),
          icon: const Text("Delete The Menu"),
        )
    ];
  }
}

class _SearchWidget extends StatelessWidget {
  const _SearchWidget(this.onChanged);
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppTextField(
        onChanged: onChanged,
        labelText: 'Search in the menus...',
        icon: Icons.search,
      ),
    );
  }
}

// ignore: unused_element
class _StarsWidget extends StatelessWidget {
  const _StarsWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...List.generate(
          5,
          (index) => Icon(
            Icons.star,
            size: 15,
            color: index != 4 ? Colors.amber : Colors.grey,
          ),
        ),
      ],
    );
  }
}
