class User {
  final String mail;

  const User({required this.mail});
}

mixin MailSystem on User {
  getMailSystem(String mail) {
    return mail.split('@')[1];
  }
}

class AdminUser extends User with MailSystem {
  AdminUser({required super.mail});
}

class UserManager<T extends User> {
  final List<T> usersList = [];

  addUser(T user) {
    usersList.add(user);
  }

  removeUser(T user) {
    usersList.remove(user);
  }

  returnAll() {
    return usersList
        .map((user) =>
            user is AdminUser ? user.getMailSystem(user.mail) : user.mail)
        .toList();
  }
}

class GeneralUser extends User {
  GeneralUser({required super.mail});
}

// void main() {
//   var alyona = User(mail: 'sadgirl@mail.ru');
//   print(alyona.mail);

//   var admin = AdminUser(mail: 'admin@mail.ru');
//   print(admin.getMailSystem(admin.mail));

//   var adminList = UserManager<User>();
//   adminList.addUser(alyona);
//   adminList.addUser(admin);
//   print(adminList.returnAll());
// }
