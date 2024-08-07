import '../database.dart';

class ProfilesTable extends SupabaseTable<ProfilesRow> {
  @override
  String get tableName => 'profiles';

  @override
  ProfilesRow createRow(Map<String, dynamic> data) => ProfilesRow(data);
}

class ProfilesRow extends SupabaseDataRow {
  ProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get zipcode => getField<String>('zipcode');
  set zipcode(String? value) => setField<String>('zipcode', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);
}
