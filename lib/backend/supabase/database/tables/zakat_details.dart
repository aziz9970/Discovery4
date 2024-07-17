import '../database.dart';

class ZakatDetailsTable extends SupabaseTable<ZakatDetailsRow> {
  @override
  String get tableName => 'zakat_details';

  @override
  ZakatDetailsRow createRow(Map<String, dynamic> data) => ZakatDetailsRow(data);
}

class ZakatDetailsRow extends SupabaseDataRow {
  ZakatDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZakatDetailsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  double? get cash => getField<double>('cash');
  set cash(double? value) => setField<double>('cash', value);

  double? get goldWeight => getField<double>('gold_weight');
  set goldWeight(double? value) => setField<double>('gold_weight', value);

  double? get goldRate => getField<double>('gold_rate');
  set goldRate(double? value) => setField<double>('gold_rate', value);

  double? get silverWeight => getField<double>('silver_weight');
  set silverWeight(double? value) => setField<double>('silver_weight', value);

  double? get silverRate => getField<double>('silver_rate');
  set silverRate(double? value) => setField<double>('silver_rate', value);

  double? get totalZakat => getField<double>('total_zakat');
  set totalZakat(double? value) => setField<double>('total_zakat', value);

  double? get paidZakat => getField<double>('paid_zakat');
  set paidZakat(double? value) => setField<double>('paid_zakat', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
