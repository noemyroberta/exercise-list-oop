import 'email_control.dart';

class Employee {
  final String fullName;
  final String position;
  final String code;

  late String emailAddress;

  Employee({
    required this.fullName,
    required this.position,
    required this.code,
  }) {
    emailAddress = EmailControl.createEmailAddress(fullName);
  }

  String get sentEmails => EmailControl.show(emailAddress);

  String get receivedEmails => EmailControl.show(
        emailAddress,
        received: true,
        sent: false,
      );

  void sendEmail({
    required String to,
    required String subject,
    required String message,
  }) {
    EmailControl.send(
      emailAddress: emailAddress,
      to: to,
      subject: subject,
      message: message,
    );
  }

  @override
  String toString() {
    return '\nName: $fullName, \nPosition: $position, \nCode: $code\n';
  }
}
