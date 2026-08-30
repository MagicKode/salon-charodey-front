class UserEntity {
  final String name;

  const UserEntity({this.name = 'Гость'});

  factory UserEntity.guest() => const UserEntity(name: 'Гость');
}
