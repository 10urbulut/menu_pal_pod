import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:menu_pal/views/map/map_view_model.dart';
import 'package:provider/provider.dart';

import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class MapView extends StatelessWidget {
  const MapView({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MapViewModel(),
      builder: (context, _) {
        return BasePageView<MapViewModel>(
          appBar: AppBar(
            title: const Text('Map'),
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
    return const Text('Map');
    //  GoogleMap(
    //   initialCameraPosition: context.read<MapViewModel>().initialCameraPosition,
    // );
  }
}
