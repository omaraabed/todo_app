import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:to_do/model/atsk_model.dart';

class FireBaseFunction {
  static CollectionReference<TaskModel> getTaskToCollection() {
    return FirebaseFirestore.instance
        .collection('Tasks')
        .withConverter<TaskModel>(
          fromFirestore: (snapshot, _) => TaskModel.fromJson(snapshot.data()!),
          toFirestore: (task, options) => task.toJson(),
        );
  }

  static Future<void> addTaskToFirestore(TaskModel task) {
    var collection = getTaskToCollection();
    var docRef = collection.doc();
    task.id = docRef.id;
    return docRef.set(task);
  }

  static Stream<QuerySnapshot<TaskModel>> getTaskFirestore(DateTime date) {
    var collection = getTaskToCollection();
    return collection
        .where('date',
            isEqualTo: DateUtils.dateOnly(date).millisecondsSinceEpoch)
        .snapshots();
  }

  static Future<void> delete(String id) {
    return getTaskToCollection().doc(id).delete();
  }

  static Future<void> update(String id, TaskModel task) {
    return getTaskToCollection().doc(id).update(task.toJson());
  }
}
