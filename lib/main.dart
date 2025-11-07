import 'package:flutter/material.dart';
import 'package:myapp/firebase_options.dart';
import 'orin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(Orin());
}
