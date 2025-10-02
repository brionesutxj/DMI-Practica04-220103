import 'package:flutter/material.dart';
import '../../domain/entities/video_post.dart';
import '../../infrastructure/models/local_video_model.dart';
import '../../shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 5));

    final List<VideoPost> newVideos = videoPosts
        .map(
          (video) => LocalVideoModel(
            name: video['name'] ?? 'Sin título',
            videoUrl: video['videoUrl'] ?? '',
            likes: video['likes'] ?? 0,
            views: video['views'] ?? 0,
          ).toVideoPostEntity(),
        )
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
