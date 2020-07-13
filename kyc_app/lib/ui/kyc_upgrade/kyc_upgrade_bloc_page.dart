import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kyc_app/bloc/KycDocuments/kyc_documents_bloc.dart';
import 'package:kyc_app/ui/kyc_upgrade/kyc_upgrade_page.dart';
import 'package:kyc_app/domain/user_profile.dart';

import '../../injection.dart';

class KycUpgradeBlocPage extends StatefulWidget {
  final UserProfile userProfile;

  const KycUpgradeBlocPage({Key key, this.userProfile}) : super(key: key);
  @override
  _KycUpgradeBlocPageState createState() => _KycUpgradeBlocPageState();
}

class _KycUpgradeBlocPageState extends State<KycUpgradeBlocPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: BlocProvider(
        create: (context) => getIt<KycDocumentsBloc>(),
        child: KycUpgradePage(),
      ),
    );
  }
}
