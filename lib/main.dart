import 'package:flutter/material.dart';
import 'package:flutter_getx_supabase_countries/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xfofzxlxyhuncjjbppbl.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhmb2Z6eGx4eWh1bmNqamJwcGJsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYwMDU3NTAsImV4cCI6MjAyMTU4MTc1MH0.m-iwerRK3zlt0L7g4A6ieyeFHC7h0SAqdDD_D6jNSJg',
  );
  runApp(const MyApp());
}
