class User{
  final String name;
  final String surname;
  final String phone_number;

  User({
    required this.name,
    required this.surname,
    required this.phone_number,
});
}

final userList = [
  User(
    name: 'Geraldine',
    surname: 'Curipaco',
    phone_number: '978519644',
  )
];