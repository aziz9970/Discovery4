import '../database.dart';

class ZakatPaymentHistoryTable extends SupabaseTable<ZakatPaymentHistoryRow> {
  @override
  String get tableName => 'zakat_payment_history';

  @override
  ZakatPaymentHistoryRow createRow(Map<String, dynamic> data) =>
      ZakatPaymentHistoryRow(data);
}

class ZakatPaymentHistoryRow extends SupabaseDataRow {
  ZakatPaymentHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZakatPaymentHistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get zakatDetailId => getField<int>('zakat_detail_id');
  set zakatDetailId(int? value) => setField<int>('zakat_detail_id', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  String? get paidTo => getField<String>('paid_to');
  set paidTo(String? value) => setField<String>('paid_to', value);

  double? get paidAmount => getField<double>('paid_amount');
  set paidAmount(double? value) => setField<double>('paid_amount', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get paymentMode => getField<String>('payment_mode');
  set paymentMode(String? value) => setField<String>('payment_mode', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
