// ignore_for_file: non_constant_identifier_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:menu_pal/views/login/login_view_model.dart';
import 'package:menu_pal/widgets/app_text_field.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import '../../app/blueprints/base_page_view.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      builder: (context, _) {
        return BasePageView<LoginViewModel>(
          appBar: AppBar(
            title: const Text('Login'),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const AbsorbPointer(
              absorbing: !kDebugMode,
              child: Placeholder(
                fallbackHeight: 150,
                child: Column(
                  children: [
                    EmailTextField(),
                    PasswordTextField(),
                    EmailLoginButton(),
                  ],
                ),
              ),
            ),

            const Spacer(flex: 2),
            const Text("HEY TESTER! TRY THIS."),
            SignInWithEmailButton(
              icon: const Icon(FontAwesomeIcons.envelope),
              label: const Text("Would You Like To Come In?"),
              caller: context.read<LoginViewModel>().authCaller,
              onSignedIn: context.read<LoginViewModel>().onSignedIn,
              style: Theme.of(context).elevatedButtonTheme.style,
              minPasswordLength: 6,
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const SizedBox.shrink(),
            ),

            // const Text("Or"),
            // const PhoneTextField(),
            // const PhoneLoginButton(),

            // ElevatedButton.icon(
            //     icon: const Icon(Icons.person),
            //     onPressed:
            //         context.read<LoginViewModel>().pushToRegisterView,
            //     label: const Text("Sign Up"))

            const Spacer(flex: 9),
          ],
        ),
      ),
    );
  }
}

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: context.read<LoginViewModel>().emailLoginButtonTapped,
        child: const Wrap(
          children: [
            Icon(Icons.email),
            VerticalDivider(),
            Text("Login With Email"),
          ],
        ));
  }
}

class PhoneLoginButton extends StatelessWidget {
  const PhoneLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: context.read<LoginViewModel>().phoneLoginButtonTapped,
        child: const SizedBox(
          child: Wrap(
            children: [
              Icon(Icons.phone),
              VerticalDivider(),
              Text("Login With Phone"),
            ],
          ),
        ));
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: "Password",
      icon: Icons.lock,
      controller: context.read<LoginViewModel>().passwordController,
    );
  }
}

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: context.read<LoginViewModel>().phoneController,
      labelText: PHONE,
      icon: Icons.phone,
      keyboardType: TextInputType.phone,
    );
  }

  String get PHONE => "Phone";
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: "Email",
      icon: Icons.email,
      controller: context.read<LoginViewModel>().emailController,
    );
  }
}
