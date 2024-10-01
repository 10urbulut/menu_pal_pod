import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailService {
  Future<void> sendEmailWithZoho(
      String recipientEmail, String validationCode, String subject) async {
    // Zoho SMTP ayarları
    String username = "help@onurbulut.dev"; // Zoho e-posta adresiniz
    String password = "Onur.1993"; // Zoho hesabınızın şifresi

    final smtpServer = SmtpServer(
      'smtp.zoho.com',
      username: username,
      password: password,
      port: 465,
      ssl: true,
    );

    final message = Message()
      ..from = Address(username, 'MenuPal - Validation') // Gönderen e-posta
      ..recipients.add(recipientEmail) // Alıcı e-posta
      ..subject = subject // E-posta başlığı
      ..html = '''
    <html>
        <head>
          <link href="https://fonts.googleapis.com/css2?family=Emilys+Candy&display=swap" rel="stylesheet">
        </head>
        <body style="font-family: 'Emilys Candy', cursive; text-align: left; padding: 20px;">
          <h1 style="color: #fcbd5f;">MenuPal</h1>
          <p style="font-size: 20px; color: #333;">
            Doğrulama kodunuz:
          </p>
          <p style="font-size: 30px; font-weight: bold; color: #f44336;">
            $validationCode
          </p>
          <p style="font-size: 16px; color: #555;">
            Bu kodu doğrulama için kullanın. Güvende kalın!
          </p>
        </body>
      </html>
  '''; // HTML içeriği

    try {
      final sendReport = await send(message, smtpServer);
      print('E-posta gönderildi: $sendReport');
    } on MailerException catch (e) {
      print('E-posta gönderme hatası: $e');
      for (var p in e.problems) {
        print('Sorun: ${p.code}: ${p.msg}');
      }
    }
  }
}
