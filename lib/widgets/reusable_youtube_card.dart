import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// ... other required imports ...

class YoutubeVideoCard extends StatelessWidget {
  final YoutubePlayerController youtubeController;
  final String title;
  final String description;

  YoutubeVideoCard({
    required this.youtubeController,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 400,
          width: 500,
          child: YoutubePlayer(
            controller: youtubeController,
            aspectRatio: 16 / 9,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 52.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                maxLines: null,
              )
            ],
          ),
        )
      ],
    );
  }
}

// 