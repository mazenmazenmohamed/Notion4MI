//class vid
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'layout/cubit/cubit.dart';
import 'layout/cubit/states.dart';

class vide extends StatelessWidget {
  File video = File("");
  var videoPicker = ImagePicker();
  VideoPlayerController vid = VideoPlayerController.network('');
  int pos =0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<backgroundCubit, Backgroundstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return video == null
              ? Text("insert video please >>")
              : Stack(
                 children: [
               Container(
                height: 200,
                width: double.infinity,
                child: vid.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: vid.value.aspectRatio,
                  child: VideoPlayer(vid),
                )
                    : Container(),
              ),
               IconButton(
                onPressed: ()
                {
                  backgroundCubit.get(context).vidstack(this);
                },
                icon: Icon(vid.value.isPlaying? Icons.pause: Icons.play_arrow,color: Colors.white,),
              ),
            ],
          );
        });
  }
}
