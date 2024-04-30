import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference<Map<String, dynamic>> userCollection =
    FirebaseFirestore.instance.collection('users');
