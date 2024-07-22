import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/model/user_classes/classs_subjects_model.dart';
import 'package:geekreep/theme/light/colors.dart';

FutureProvider<List<ClassSubject>> userClassesProvider = FutureProvider(
  (ref) async {
    return [
      ClassSubject(
        name: 'Quimica I',
        teacherName: 'Rocha',
        color: LightThemeColours.purple,
      ),
      ClassSubject(
        name: 'Quimica II',
        teacherName: 'Pedra',
        color: LightThemeColours.pink,
      ),
      ClassSubject(
        name: 'Matematica I',
        teacherName: 'Sedimento',
        color: LightThemeColours.green,
      ),
      ClassSubject(
        name: 'Matematica II',
        teacherName: 'Magma resfriado',
        color: LightThemeColours.green,
      ),
      ClassSubject(
        name: 'Literatura',
        teacherName: 'Reticulo Endoplasmatico',
        color: LightThemeColours.blue,
      ),
    ];
  },
);
