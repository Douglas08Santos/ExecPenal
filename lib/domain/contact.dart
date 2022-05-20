class Contact {
  static final String contactTable = "contactTable";
  static final String idColumn = "idColumn";
  static final String nameColumn = "nameColumn";
  static final String phoneColumn = "phoneColumn";
  static final String emailColumn = "emailColumn";
  static final String imgColumn = "imgColumn";

  int id = 0;
  String name = '';
  String email = '';
  String phone = '';
  String img = '';

  Contact();

  Contact.fromMap(Map map) {
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }

  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img
    };
    if (id != 0) map[idColumn] = id;

    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img)";
  }
}
