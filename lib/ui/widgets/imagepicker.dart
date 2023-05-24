import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({super.key});

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundImage: _imageFile == null
              ? FileImage(File(_imageFile!.path))
              : Image.asset('image/one.png').image,
        ),
        Positioned(
            bottom: 5.0,
            right: 5.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomsheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 20,
              ),
            ))
      ],
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: 300,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera_alt,
                ),
                label: Text('Camera'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(
                  Icons.image,
                ),
                label: Text('Gallery'),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile! as PickedFile;
    });
  }
}
