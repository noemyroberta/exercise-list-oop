import 'employee.dart';

void main() {

  Employee sender = Employee(
    fullName: 'Noemy Roberta',
    position: 'Web Dev Jr.',
    code: '123',
  );

  Employee receiver = Employee(
    fullName: 'Cleyfane Auanny',
    position: 'FullStack Dev Jr.',
    code: '144',
  );

  sender.sendEmail(
    to: receiver.emailAddress,
    subject: 'Open Letter',
    message: 'Hi, can we talk?',
  );

  receiver.sendEmail(
    to: sender.emailAddress,
    subject: '[Re]: Open Letter',
    message: 'Hey, of course! =)',
  );

  sender.sendEmail(
    to: 'jytalo.ramon@bigtech.com',
    subject: 'Hi!',
    message: 'Hi, do you exist?',
  );

  print('\nShowing Sent Emails From ${sender.toString()}');
  print(sender.sentEmails);
  print('\nShowing Received Emails To ${sender.fullName}');
  print(sender.receivedEmails);
  print('\n-----\n');
  print('\nShowing Received Emails To ${receiver.toString()}');
  print(receiver.receivedEmails);
  print('\nShowing Sent Emails From ${receiver.fullName}');
  print(receiver.sentEmails);
}
