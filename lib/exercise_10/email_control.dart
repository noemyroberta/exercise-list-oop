import 'email_address_control.dart';
import 'email.dart';

class EmailControl {
  static final List<Email> _emailsRegister = [];

  static createEmailAddress(String fullName) {
    return EmailAddressControl.generateEmailAddress(fullName);
  }

  static void send({
    required emailAddress,
    required String to,
    required String subject,
    required String message,
  }) {
    if (EmailAddressControl.emailExist(to)) {
      _emailsRegister.add(Email(
        from: emailAddress,
        to: to,
        subject: subject,
        message: message,
      ));
      print('E-mail sent!');
    } else {
      print('This email owner does not exist, please try another one.');
    }
  }

  static String show(
    String emailAddress, {
    bool sent = true,
    bool received = false,
  }) {
    final emails = [];
    int existentEmails = 0;

    String message = '';

    for (var i = 0; i < _emailsRegister.length; i++) {
      Email currentEmail = _emailsRegister[i];

      if (currentEmail.from == emailAddress ||
          currentEmail.to == emailAddress) {
        emails.add(currentEmail);
        existentEmails += 1;
      }
    }

    if (sent) {
      [
        for (Email email in emails)
          if (email.from == emailAddress) message += email.toString()
      ];
    }

    if (received) {
      [
        for (Email email in emails)
          if (email.to == emailAddress) message += email.toString()
      ];
    }

    message += '\n This employee has $existentEmails registers.';
    return message;
  }

  static void delete(String from, String subject) {
    if (EmailAddressControl.emailExist(from)) {
      for (Email email in _emailsRegister) {
        if (email.from == from && email.subject == subject) {
          _emailsRegister.remove(email);
        }
      }
    }
  }
}
