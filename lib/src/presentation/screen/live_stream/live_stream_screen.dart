import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/src/presentation/notifier/streaming/streaming_notifier.dart';

class LiveStreamScreen extends ConsumerWidget {
  final String chanel;
  const LiveStreamScreen({super.key,required this.chanel});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(streamNotifierProvider(chanel));
    return  Scaffold(
      body: Container(
        child: state.localUserId != null ?AgoraVideoView(
          controller: VideoViewController.remote(
            rtcEngine: state.engine!,
            canvas:  VideoCanvas(uid: state.localUserId),
            connection:  RtcConnection(channelId: state.chanel),
          ),
        ) : const CircularProgressIndicator(),
      ),
    );
  }
}

