import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Users {
  static String iD = " ";
  static Future<void> addGoals({
    required String Title,
    required String Description,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Goals')
        .doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
      "description": Description,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item inserted to Database'))
        .catchError((e) => print(e));
  }

  static Future<void> updateGoals({
    required String Title,
    required String Description,
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Goals')
        .doc(docId);
    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
      "description": Description,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item updated in Database'))
        .catchError((e) => print(e));
  }

  static Future<void> deleteGoals({
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Goals')
        .doc(docId);

    await documentReference
        .delete()
        .whenComplete(() => print('item deleted from firebase'))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readGoals() {
    CollectionReference notesItemcollection = FirebaseFirestore.instance
        .collection('users')
        .doc("GydAAhuxpIRF4zluDAsJEkJhmly1")
        .collection('Goals');
    return notesItemcollection.snapshots();
  }

  static Future<void> addCatogaries({
    required String Title,
    required String Description,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Categories')
        .doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
      "description": Description,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item inserted to Database'))
        .catchError((e) => print(e));
  }

  static Future<void> updateCatogaries({
    required String Title,
    required String Description,
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Categories')
        .doc(docId);
    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
      "description": Description,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item updated in Database'))
        .catchError((e) => print(e));
  }

  static Future<void> deleteCatogaries({
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Categories')
        .doc(docId);

    await documentReference
        .delete()
        .whenComplete(() => print('item deleted from firebase'))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readCatogaries() {
    CollectionReference notesItemcollection = FirebaseFirestore.instance
        .collection('users')
        .doc("GydAAhuxpIRF4zluDAsJEkJhmly1")
        .collection('Categories');
    return notesItemcollection.snapshots();
  }

  static Future<void> addM_routine({
    required String Title,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Morning Routine')
        .doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item inserted to Database'))
        .catchError((e) => print(e));
  }

  static Future<void> updateM_routine({
    required String Title,
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Morning Routine')
        .doc(docId);
    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item updated in Database'))
        .catchError((e) => print(e));
  }

  static Future<void> deleteM_routine({
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Morning Routine')
        .doc(docId);

    await documentReference
        .delete()
        .whenComplete(() => print('item deleted from firebase'))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readM_routine() {
    CollectionReference notesItemcollection = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Morning Routine');
    return notesItemcollection.snapshots();
  }

  static Future<void> addH_Habits({
    required String Title,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Healthy Habits')
        .doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item inserted to Database'))
        .catchError((e) => print(e));
  }

  static Future<void> updateH_Habits({
    required String Title,
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Healthy Habits')
        .doc(docId);
    Map<String, dynamic> data = <String, dynamic>{
      "title": Title,
    };
    await documentReference
        .set(data)
        .whenComplete(() => print('note item updated in Database'))
        .catchError((e) => print(e));
  }

  static Future<void> deleteH_Haabits({
    required String docId,
  }) async {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Healthy Habits')
        .doc(docId);

    await documentReference
        .delete()
        .whenComplete(() => print('item deleted from firebase'))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readH_Habits() {
    CollectionReference notesItemcollection = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('Healthy Habits');
    return notesItemcollection.snapshots();
  }
}
