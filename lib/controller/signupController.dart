import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignuController extends GetxController{
  // final FirebaseFirestore firestore = FirebaseFirestore.instance;
  // void signup(String email, String pass) async {
  //     print(email);
  //     print(pass);
  //     if (_formKey.currentState!.validate()) {
  //       try {
  //         UserCredential userCredential =
  //         await _auth.createUserWithEmailAndPassword(
  //           email: email,
  //           password: pass,
  //         );
  //         UserProfile user = UserProfile(
  //           displayName: userCredential.user!.uid, // Set user's display name here
  //         );
  //
  //         await _firestore.collection('users').doc(userCredential.user?.uid).set({
  //           'name': _nameController.text,
  //         });
  //
  //         // You can handle the successful signup here, e.g., navigate to the home page.
  //       } on FirebaseAuthException catch (e) {
  //         if (e.code == 'weak-password') {
  //           print('The password provided is too weak.');
  //         } else if (e.code == 'email-already-in-use') {
  //           print('The account already exists for that email.');
  //         } else {
  //           print('Error: ${e.message}');
  //         }
  //       } catch (e) {
  //         print('Error: $e');
  //       }
  //     }
  //   }
  //


}