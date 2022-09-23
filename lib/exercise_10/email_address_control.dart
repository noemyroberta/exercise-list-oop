class EmailAddressControl {
  static final List<String> _employeesEmails = [];

  static void addEmailAddress(String newEmail) {
    if (!emailExist(newEmail)) _employeesEmails.add(newEmail);
  }

  static String generateEmailAddress(String fullName) {
    final splittedName = fullName.split(' ');
    final firstName = splittedName[0];
    final lastName = splittedName[1];

    final String email = '$firstName.$lastName@bigtech.com'.toLowerCase();
    _employeesEmails.add(email);

    return email;
  }

  static bool emailExist(emailAddress) => _employeesEmails.contains(emailAddress);

  static void deleteEmailAddress(emailAddress) {
    if (emailExist(emailAddress)) _employeesEmails.remove(emailAddress);
  }

}