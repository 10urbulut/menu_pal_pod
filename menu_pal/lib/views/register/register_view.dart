import 'package:flutter/material.dart';
import 'package:menu_pal/views/register/register_view_model.dart';
import 'package:menu_pal/widgets/app_text_field.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterViewModel(),
      builder: (context, _) {
        return BasePageView<RegisterViewModel>(
          content: const _ViewContent(),
          appBar: AppBar(
            title: const Text('Register'),
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
    return ListView(
      children: [
        const AppTextField(labelText: "Email"),
        const AppTextField(labelText: "Password"),
        ElevatedButton.icon(
            icon: const Icon(Icons.g_mobiledata),
            onPressed: () {},
            label: const Text("Sign Up With Google")),
        ElevatedButton.icon(
            icon: const Icon(Icons.apple),
            onPressed: () {},
            label: const Text("Sign Up With Apple")),
        ElevatedButton.icon(
            icon: const Icon(Icons.email),
            onPressed: () {},
            label: const Text("Sign Up With Email")),
      ],
    );
  }
}
