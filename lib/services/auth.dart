
import 'package:firebase_auth/firebase_auth.dart';
class AuthService {

  final FirebaseAuth  firebase_instance = FirebaseAuth.instance;

  Future<void> registerUser(String name, String email,String password,String phone) async{
    try{
      UserCredential userCredential = await firebase_instance.createUserWithEmailAndPassword(
          email: email, password: password
      );
      //
      await userCredential.user?.updateDisplayName(name);
      // PhoneAuthCredential phoneAuthCredential;
      // await userCredential.user?.updatePhoneNumber(phone);
      await userCredential.user?.reload();
    }
    on FirebaseAuthException catch(e){
      if(e.code == "weak-password"){
        print("The Password provided is to weak.");
      }
      else if(e.code == "email-already-in-use"){
        print("Email Already in use");
      }
    }
  }
  //login
  Future<UserCredential> loginUser(String email,String password) async{
    try{
      UserCredential userCredential = await firebase_instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return userCredential;
    }
    on FirebaseAuthException catch(e){
      throw Exception(e);
    }
  }
}