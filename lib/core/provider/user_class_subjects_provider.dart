import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/model/classes/classs_subjects_model.dart';
import 'package:geekreep/core/model/classes/content_chapter_model.dart';
import 'package:geekreep/theme/light/colors.dart';

FutureProvider<List<ClassSubject>> userClassSubjectsProvider = FutureProvider(
  (ref) async {
    return [
      ClassSubject(
        name: 'Quimica I',
        teacherName: 'Rocha',
        color: LightThemeColours.purple,
        contentList: [
          Chapter(
            name: 'Excentricidade dos Radicais',
            pagesCount: 14,
          ),
          Chapter(
            name: 'Radical dos Deuterostomios',
            pagesCount: 14,
          ),
          Chapter(
            name: 'Atomos algericos',
            pagesCount: 14,
          ),
          Chapter(
            name: 'Mutrimbacos e Instrumentos de Medicao',
            pagesCount: 14,
          ),
        ],
        activeChapterIndex: 3,
      ),
      ClassSubject(
        name: 'Quimica II',
        teacherName: 'Pedra',
        color: LightThemeColours.pink,
        contentList: [Chapter(name: 'Introducao ao Pensamento Socratico')],
      ),
      ClassSubject(
        name: 'Matematica I',
        teacherName: 'Sedimento',
        color: LightThemeColours.green,
        contentList: [Chapter(name: 'Introducao ao Pensamento Eleftesiano')],
      ),
      ClassSubject(
        name: 'Matematica II',
        teacherName: 'Magma resfriado',
        color: LightThemeColours.green,
        contentList: [Chapter(name: 'Introducao ao Pensamento Euclidiano')],
      ),
      ClassSubject(
        name: 'Literatura',
        teacherName: 'Reticulo Endoplasmatico',
        color: LightThemeColours.blue,
        contentList: [Chapter(name: 'Introducao ao Pensamento Platonico')],
      ),
    ];
  },
);
