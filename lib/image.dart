//class img
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'layout/cubit/cubit.dart';
import 'layout/cubit/states.dart';

class imag extends StatelessWidget {
  //Upload Image
  File image = File("");
  var imagePacker = ImagePicker();
  int pos =0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<backgroundCubit, Backgroundstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return image == null
              ? Text("insert image please >>")
              : Container(height: 200, width: double.infinity, child: Image.file(image));
        });
  }
}
