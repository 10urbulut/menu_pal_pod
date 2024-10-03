import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_pal/app/app_defaults.dart';

final ThemeData lightTheme = ThemeData(
  splashColor: Colors.orange,

  /// ColorScheme
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: _blackColor, //exmp. button text color
    onPrimary: const Color(0xFFffe0b2),
    secondary: Colors.blue.shade900,
    onSecondary: Colors.blue.shade300,
    error: Colors.red.shade400,
    onError: Colors.red.shade900,
    surface: const Color(0xFFffe0b2), //exmp. background color
    onSurface: _blackColor, //exmp. text color, frame of textfields, icons
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(_blackColor),
      backgroundColor: WidgetStateProperty.all(Colors.orange.shade100),
      backgroundBuilder: (context, states, child) => Container(child: child),
    ),
  ),

  cardTheme: CardTheme(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDefaults.kStandartBorderRadius),
    ),
  ),

  /// FontFamily
  fontFamily: GoogleFonts.robotoSerif().fontFamily,

  /// AppBarTheme
  appBarTheme: const AppBarTheme(centerTitle: false),

  /// InputDecorationTheme
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(AppDefaults.kStandartBorderRadius),
    ),
  ),

  /// ElevatedButtonTheme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(_blackColor),
      backgroundColor: WidgetStateProperty.all(Colors.orange.shade100),
      backgroundBuilder: (context, states, child) =>
          ButtonBackgroundBuilderWidget(child: child),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: _blackColor),
        ),
      ),
    ),
  ),

  ////////////////////////// End //////////////////////////
);

class ButtonBackgroundBuilderWidget extends StatelessWidget {
  const ButtonBackgroundBuilderWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDefaults.kStandartBorderRadius),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.orange.withOpacity(.1),
            offset: const Offset(0, 27),
          ),
          BoxShadow(
            blurRadius: 2,
            color: Colors.orange.withOpacity(.2),
            offset: const Offset(0, 31),
          ),
          BoxShadow(
            blurRadius: 3,
            color: Colors.orange.withOpacity(.3),
            offset: const Offset(0, 35),
          ),
        ],
      ),
      child: child,
    );
  }
}

const _blackColor = Colors.black87;
