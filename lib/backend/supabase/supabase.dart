import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import '/flutter_flow/flutter_flow_util.dart';

export 'database/database.dart';

String _kSupabaseUrl = 'https://thboylkaegbjrzpfnjgc.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
