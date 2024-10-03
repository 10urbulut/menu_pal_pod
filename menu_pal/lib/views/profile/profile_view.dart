import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:menu_pal/utils/serverpod_auth_options.dart';
import 'package:menu_pal/views/profile/profile_view_model.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileViewModel(),
      builder: (context, _) {
        return BasePageView<ProfileViewModel>(
          content: const _ViewContent(),
          appBar: AppBar(
            title: const Text('Your Profile, Not Mine!'),
            actions: [
              OverflowBar(
                children: [
                  IconButton(
                      onPressed: context.read<ProfileViewModel>().logOut,
                      icon: const Icon(Icons.logout)),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //TODO: Eklediklerim listesi
        Column(
          children: [
            UserImageButton(
              sessionManager: ServerpodAuthOptions.sessionManager,
              compact: false,
              elevation: 10,
            ),
            // Selector<ProfileViewModel, String?>(
            //   selector: (context, viewModel) => viewModel.user?.imageLink,
            //   builder: (context, imageLink, child) => CircleAvatar(
            //     backgroundColor:
            //         Theme.of(context).colorScheme.surface.withGreen(235),
            //     radius: 55,
            //     child: Visibility(
            //       visible: imageRule(imageLink),
            //       replacement: const Icon(
            //         Icons.person,
            //         size: 80,
            //       ),
            //       child: CircleAvatar(
            //         radius: 60,
            //         foregroundImage: NetworkImage(
            //           imageLink ?? "https://via.placeholder.com/150",
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: context.read<ProfileViewModel>().getImageFromDevice,
            //   child: const Text("Change Profile Picture"),
            // ),

            const Spacer(
              flex: 3,
            ),
            const UserEmailWidget(),
            const Spacer(flex: 30),
            const DeleteAcountButton(),
            const Spacer(flex: 1),
          ],
        ),
      ],
    );
  }

  bool imageRule(String? imageLink) {
    if (imageLink == null) return false;
    if (imageLink.isEmpty) return false;

    return true;
  }
}

class UserEmailWidget extends StatelessWidget {
  const UserEmailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Yeah! It is you!",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const VerticalDivider(),
        Text(
          context.read<ProfileViewModel>().user?.email ?? "-",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}

class DeleteAcountButton extends StatelessWidget {
  const DeleteAcountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: context.read<ProfileViewModel>().deleteAccountTapped,
      style: ElevatedButton.styleFrom(
          maximumSize: const Size(200, 50),
          backgroundColor: Theme.of(context).colorScheme.error),
      child: const Text("I'm Done With MenuPal. Delete Me!"),
    );
  }
}
