import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kyc_app/bloc/profile/profile_bloc.dart';
import 'package:kyc_app/ui/routes/router.gr.dart';
import 'dart:ui' as ui;

import 'package:percent_indicator/percent_indicator.dart';

class ProfileDetailsPage extends StatefulWidget {
  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {
  @override
  void didChangeDependencies() {
    context.bloc<ProfileBloc>().add(LoadProfile());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    bool emailVisible = true;
    bool phoneNumberVisible = false;

    //TODO: FIX IN BETTER IMAGE
    final String imgUrl =
        'https://pixel.nymag.com/imgs/daily/selectall/2017/12/26/26-eric-schmidt.w700.h700.jpg';
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ProfileLoaded) {
          return Stack(
            children: <Widget>[
              new Container(
                color: Colors.blue,
              ),
              new Image.network(
                imgUrl,
                fit: BoxFit.fill,
              ),
              new BackdropFilter(
                  filter: new ui.ImageFilter.blur(
                    sigmaX: 6.0,
                    sigmaY: 6.0,
                  ),
                  child: new Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      // borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  )),
              Center(
                child: new Column(
                  children: <Widget>[
                    new SizedBox(
                      height: _height / 22,
                    ),
                    new CircleAvatar(
                      radius: _width < _height ? _width / 4 : _height / 4,
                      backgroundImage: NetworkImage(
                          state.userProfile.profileImageUrl.getOrCrash()),
                    ),
                    new SizedBox(
                      height: _height / 25.0,
                    ),
                    new Text(
                      '${state.userProfile.username.getOrCrash()}',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 15,
                          color: Colors.white),
                    ),
                    new Divider(
                      height: _height / 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: _height / 100,
                    ),
                    Expanded(
                      child: CircularPercentIndicator(
                        radius: _width / 2,
                        lineWidth: 5.0,
                        percent: _getKycPercentage(
                            state.userProfile.kycLevel.getOrCrash()),
                        // header: new Text("KYC"),
                        center: new Text(
                            "KYC ${state.userProfile.kycLevel.getOrCrash()}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0)),
                        circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: _height / 20,
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(
                  left: _width / 2,
                ),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: new FlatButton(
                    onPressed: () {
                      ExtendedNavigator.of(context)
                          .pushNamed(Routes.kycUpgradeBlocPage);
                    },
                    child: new Container(
                        child: new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new SizedBox(
                          width: _width / 30,
                        ),
                        new Text('Verify KYC'),
                        new Icon(Icons.arrow_right),
                      ],
                    )),
                    color: Colors.blue[50],
                  ),
                ),
              ),
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  double _getKycPercentage(int kyc_number) {
    if (kyc_number == 0) {
      return 0;
    } else if (kyc_number == 1) {
      return 0.6;
    } else {
      return 1.0;
    }
  }
}
