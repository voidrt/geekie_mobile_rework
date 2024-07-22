import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/model/user_classes/classs_subjects_model.dart';
import 'package:geekreep/core/provider/user_classes_provider.dart';
import 'package:geekreep/interface/global/buttons/standard_button.dart';

class MateriasScreen extends ConsumerWidget {
  const MateriasScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableSubjects = ref.watch(userClassesProvider);

    return availableSubjects.when(
      error: ((error, stackTrace) {
        return Container(
          child: Text(error.toString()),
        );
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

                  return Container(
                    decoration: BoxDecoration(color: indexedSubject.color),
                    margin: const EdgeInsets.all(8),
                    child: Text(indexedSubject.name ?? ''),
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
