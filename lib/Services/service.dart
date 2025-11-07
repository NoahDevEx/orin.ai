import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Data/Color/color.dart';
import 'package:myapp/Data/Fonts/fonts.dart';

class AuthServices {
  User get user => FirebaseAuth.instance.currentUser!;

  AuthServices();

  Future<void> registerUser(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (user != null && user.emailVerified == false) {
        await user.sendEmailVerification();
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Ìmeèlì ìmúdájú ti rán sí àpótí imeèlì rẹ",//"Olùmúlò dá sílẹ̀ ní ṣáṣeyọrí",
            style: minorFont.copyWith(color: white, fontSize: 18.0),
          ),
          backgroundColor: Colors.green,
          duration: Duration(milliseconds: 1500),
        ),
      );
  
      Navigator.pushReplacementNamed(context, 'Login');
    } on FirebaseException catch (e) {
      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.message.toString(),
            style: minorFont.copyWith(color: white, fontSize: 18.0),
          ),
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 1000),
        ),
      );
    }
  }

  Future<void> loginUser(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Ìwọlé sáseyọrí!",
              style: minorFont.copyWith(color: white, fontSize: 18.0),
            ),
            backgroundColor: Colors.green,
            duration: Duration(milliseconds: 1000),
          ),
        );
        Navigator.pushReplacementNamed(context, 'HomePage');
      }
    } on FirebaseException catch (e) {
      print(e.message);
      String errorMessage = '';

      if (e.code == 'user-not-found') {
        errorMessage = 'A kò rí akọọlẹ̀ yìí. Ṣàyẹ̀wò imeèlì rẹ.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Ọrọ̀ asínà kò tọ́. Ṣàtúnṣe kí o tún gbìyànjú.';
      } else {
        errorMessage = 'Àsìṣe kan sẹlẹ̀. Jọ̀wọ́ tún gbìyànjú lẹ́ẹ̀kansi.';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            errorMessage,
            style: minorFont.copyWith(color: white, fontSize: 18.0),
          ),
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 1000),
        ),
      );
    }
  }
}
