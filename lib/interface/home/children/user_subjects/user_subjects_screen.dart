import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/model/classes/classs_subjects_model.dart';
import 'package:geekreep/core/provider/user_class_subjects_provider.dart';
import 'package:geekreep/interface/home/children/user_subjects/subject_item.dart';

class MateriasScreen extends ConsumerWidget {
  const MateriasScreen({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableSubjects = ref.watch(userClassSubjectsProvider);

    return availableSubjects.when(
      error: ((error, stackTrace) {
        return Text(error.toString());
      }),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (subjects) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  ClassSubject indexedSubject = subjects[index];

                  return SubjectItem(
                    subject: indexedSubject,
                    screenSize: screenSize,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
