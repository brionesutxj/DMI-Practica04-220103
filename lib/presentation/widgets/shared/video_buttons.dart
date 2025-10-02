import 'package:flutter/material.dart';
import 'package:widget_app/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _CustomIconButton(
          icon: Icons.favorite,
          text: _formatNumber(video.likes),
          onPressed: () {
            // Acción para like
            print('Like pressed: ${video.caption}');
          },
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          icon: Icons.comment,
          text: _formatNumber(video.views),
          onPressed: () {
            // Acción para comentar
            print('Comment pressed: ${video.caption}');
          },
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          icon: Icons.share,
          text: '',
          onPressed: () {
            // Acción para compartir
            print('Share pressed: ${video.caption}');
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  String _formatNumber(int number) {
    if (number < 1000) return number.toString();
    if (number < 1000000) return '${(number / 1000).toStringAsFixed(1)}K';
    return '${(number / 1000000).toStringAsFixed(1)}M';
  }
}

// Clase privada para botones personalizados
class _CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const _CustomIconButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 35),
          if (text.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
