// import 'package:school_admin_app/core/theme/synap/size_utils.dart';

// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:flutter/services.dart';

// // ignore: must_be_immutable
// class CustomVideoPlayer extends StatefulWidget {
//   String videoUrl;

//   CustomVideoPlayer({super.key, required this.videoUrl});
//   @override
//   _CustomVideoPlayerState createState() => _CustomVideoPlayerState();
// }

// class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
//   YoutubePlayerController? _controller;
//   bool _isFullScreen = false;

//   String extractYouTubeVideoId(String url) {
//     final Uri uri = Uri.parse(url);
//     final String videoId = uri.queryParameters['v'] ?? '';
//     return videoId;
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: extractYouTubeVideoId(widget.videoUrl),
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );
//   }

//   void _toggleFullScreen() {
//     setState(() {
//       _isFullScreen = !_isFullScreen;

//       if (_isFullScreen) {
//         SystemChrome.setPreferredOrientations([
//           DeviceOrientation.landscapeLeft,
//           DeviceOrientation.landscapeRight,
//         ]);
//       } else {
//         SystemChrome.setPreferredOrientations([
//           DeviceOrientation.portraitUp,
//         ]);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final orientation = MediaQuery.of(context).orientation;
//     return Center(
//       child: Stack(
//         children: [
//           SizedBox(
//             height: orientation == Orientation.landscape ? height * 0.5 : null,
//             child: YoutubePlayer(
//               controller: _controller!,
//               showVideoProgressIndicator: true,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller!.dispose();
//     super.dispose();
//   }
// }
