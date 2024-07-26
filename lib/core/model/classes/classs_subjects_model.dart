import 'package:flutter/material.dart';
import 'package:geekreep/core/model/classes/content_chapter_model.dart';

class ClassSubject {
  ClassSubject({
    this.name,
    this.teacherName,
    this.contentList,
    this.color,
  });

  String? name;
  String? teacherName;
  List<Chapters>? contentList;
  Color? color;
}
