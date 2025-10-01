import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch();


    return Scaffold(
      body: discoverProvider.initialLoading
        ? const Center( child: CircularProgressIndicator( strokeWidth: 2 ) )
        : VideoScrollableView(videos: discoverProvider.videos )
    );
  }
}

extension on BuildContext {
  watch() {}
}