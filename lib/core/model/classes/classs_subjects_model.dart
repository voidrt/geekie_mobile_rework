import 'package:flutter/material.dart';
import 'package:geekreep/core/model/classes/content_chapter_model.dart';

class ClassSubject {
  ClassSubject({
    this.name,
    this.teacherName,
    this.contentList,
    this.color,
    this.activeChapterIndex,
  });

  String? name;
  String? teacherName;
  List<Chapter>? contentList;
  Color? color;
  int? activeChapterIndex;
}
