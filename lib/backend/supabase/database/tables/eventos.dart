import '../database.dart';

class EventosTable extends SupabaseTable<EventosRow> {
  @override
  String get tableName => 'eventos';

  @override
  EventosRow createRow(Map<String, dynamic> data) => EventosRow(data);
}

class EventosRow extends SupabaseDataRow {
  EventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventosTable();

  int get idEvento => getField<int>('id_evento')!;
  set idEvento(int value) => setField<int>('id_evento', value);

  String get eventName => getField<String>('event_name')!;
  set eventName(String value) => setField<String>('event_name', value);

  DateTime get eventDate => getField<DateTime>('event_date')!;
  set eventDate(DateTime value) => setField<DateTime>('event_date', value);

  PostgresTime get eventStart => getField<PostgresTime>('event_start')!;
  set eventStart(PostgresTime value) =>
      setField<PostgresTime>('event_start', value);

  String get eventWhere => getField<String>('event_where')!;
  set eventWhere(String value) => setField<String>('event_where', value);

  PostgresTime get eventEnd => getField<PostgresTime>('event_end')!;
  set eventEnd(PostgresTime value) =>
      setField<PostgresTime>('event_end', value);

  String get eventWho => getField<String>('event_who')!;
  set eventWho(String value) => setField<String>('event_who', value);
}
