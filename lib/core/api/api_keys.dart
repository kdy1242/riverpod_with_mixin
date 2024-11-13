import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiKeys {
  static final String supabaseProjectUrl = dotenv.get('SUPABASE_PROJECT_URL');
  static final String supabaseApiKey = dotenv.get('SUPABASE_API_KEY');
}
