import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import 'profile_details_page.dart';
import 'package:kyc_app/bloc/profile/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: BlocProvider(
        create: (context) => getIt<ProfileBloc>(),
        child: ProfileDetailsPage(),
      ),
    );
  }
}
