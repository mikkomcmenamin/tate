import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tate/data/services/project_export_service.dart';

class TateAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const TateAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: false,
      title: const Text('tate'),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          icon: const Icon(Icons.save_alt),
          onPressed: () async {
            // Replace with your actual project name and export data
            print('click export project');
            ref.read(exportProjectProvider);
          },
        ),
      ],
    );
  }
}
