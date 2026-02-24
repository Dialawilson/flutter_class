import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyAsset extends StatelessWidget {
  const MyAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/img/bell.png'),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/img/vote.png'),
          ),
          Image.network('https://picsum.photos/250?image=9'),
          // Network images are images that are fetched and displayed from the internet in real-time.

          CachedNetworkImage(imageUrl: 'https://picsum.photos/250?image=9',
          placeholder: (context, url)=> CircularProgressIndicator(),
          ),
          

        ],
      ),
    );
  }
}