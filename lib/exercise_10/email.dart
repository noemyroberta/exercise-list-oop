class Email {
  final String subject;
  final String to;
  final String message;

  final String from;

  DateTime date;

  Email({
    required this.from,
    required this.to,
    required this.subject,
    required this.message,
  }) : date = DateTime.now();

  @override
  String toString() {
    return '''
    From $from
    To $to
    Subject: $subject \n
    Message
    $message\n\n
    
    When $date
    ''';
  }
}
