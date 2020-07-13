import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class KycUpgradePagePart1 extends StatefulWidget {
  @override
  _KycUpgradePagePart1State createState() => _KycUpgradePagePart1State();
}

class _KycUpgradePagePart1State extends State<KycUpgradePagePart1> {
  FirebaseAuth _firebaseAuth;
  String user_id;
  Stream<QuerySnapshot> _stream;

  @override
  void initState() {
    super.initState();
  }

  _setUpFuture() async {
    user_id = await _firebaseAuth.currentUser().then((user) => user.uid);
    _stream = Firestore.instance
        .collection('documents/${user_id}/verification_status')
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
            // return Text("No data yet",style: style,);
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == "pending") {
              return Container(
                child: Center(
                  child: Text('Awaiting Documents Verificatio'),
                ),
              );
            } else if (snapshot.data == "approved") {
              return Container();
            }
          } else if (snapshot.hasError) {
            // return Text(snapshot.error,style: style,);
          } else if (snapshot.hasData) {
            // return Text('${snapshot.data}',style: style,);
          }
        },
      ),
    );
  }
}
