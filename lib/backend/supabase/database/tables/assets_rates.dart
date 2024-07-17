import '../database.dart';

class AssetsRatesTable extends SupabaseTable<AssetsRatesRow> {
  @override
  String get tableName => 'assets_rates';

  @override
  AssetsRatesRow createRow(Map<String, dynamic> data) => AssetsRatesRow(data);
}

class AssetsRatesRow extends SupabaseDataRow {
  AssetsRatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssetsRatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  double? get goldRate => getField<double>('gold_rate');
  set goldRate(double? value) => setField<double>('gold_rate', value);

  double? get silverRate => getField<double>('silver_rate');
  set silverRate(double? value) => setField<double>('silver_rate', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
