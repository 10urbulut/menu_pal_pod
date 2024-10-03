import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoImageWidget extends StatelessWidget {
  const NoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.grey.shade400,
        height: 90,
        child: const Center(child: LogoTextWidget()));
  }
}

class LogoTextWidget extends StatelessWidget {
  const LogoTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "MenuPal",
      style: GoogleFonts.emilysCandy(
        fontSize: 30,
        color: const Color.fromARGB(221, 94, 25, 2),
      ),
    );
  }
}
