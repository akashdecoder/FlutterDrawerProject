import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailService {
  // ignore: deprecated_member_use
  static final smtpServer = gmail('dynamicsPOC19.sit@gmail.com', 'Dynamic'
      's@2019');

  static Future<void> sendMail(String name, String email) async {
    final message = Message()
        ..from = Address('dynamicsPOC19.sit@gmail.com')
        ..recipients.add(email)
        ..subject = 'Registrtaion Successfull :: ${DateTime.now()}'
        ..text = 'Hello ${name} ,Thank you for registering\n\nFrom,\nDynamics'
            '\n(Project Oriented Community)';

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent');
    } on MailerException catch (e) {
      print('Error \n' + e.toString());
    }
  }
}