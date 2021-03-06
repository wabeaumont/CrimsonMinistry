import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:CrimsonMinistry/services/database.dart';

String userID = 'Rco0ZMq21weyKLtdNtTSiemBV6K2';
DateTime pickedDate = new DateTime(2020, 11, 15, 8, 15);
String typeOfEvent = 'Bible Study';
String title = 'Bible Study at the Quad';
String location = 'In front of Denny Chimes';
String description = 'My friend and I are going through Chapter 1 of Matthew';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final DatabaseService database = DatabaseService();
  test('Add an event', () {
    expect(
        database.addEvent(
            userID, pickedDate, typeOfEvent, title, location, description),
        isInstanceOf<Future>());
  });
}
