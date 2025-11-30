import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/post_card.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Raonson")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("posts")
            .orderBy("time", descending: true)
            .snapshots(),
        builder: (c, snap) {
          if (!snap.hasData) return Center(child: CircularProgressIndicator());

          final data = snap.data!.docs;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (c, i) => PostCard(data[i]),
          );
        },
      ),
    );
  }
}