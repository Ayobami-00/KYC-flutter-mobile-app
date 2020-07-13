import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kyc_app/bloc/authentication/auth_bloc.dart';
import 'package:kyc_app/bloc/authentication/login_form/login_form_bloc.dart';
import 'package:kyc_app/ui/routes/router.gr.dart';

enum Page { signin, signup }

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController _fullname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _emailSignInPage = TextEditingController();
  TextEditingController _passwordSignInPage = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  Page _selectedPage = Page.signin;
  bool isLoadingSignUp = false;
  bool isLoadingSignIn = false;
  File image_file;

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => [],
            (either) => either.fold(
                  (failure) {
                    setState(() {
                      isLoadingSignUp = false;
                      isLoadingSignIn = false;
                    });
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                      failure.map(
                        serverError: (_) => 'Server error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid email and password combination',
                        emailNotVerified: (_) =>
                            'Verify your email addres before sign in',
                      ),
                    )));
                  },
                  (_) {
                    print("Yeah authenticated");
                    Future.delayed(const Duration(seconds: 30), () {
                          ExtendedNavigator.of(context)
                        .pushReplacementNamed(Routes.profilePage);
                    });

                    // setState(() {
                    //   _selectedPage = Page.signin;
                    // })
                  },
                ));
        if (state.isSubmitting) {
          setState(() {
            isLoadingSignUp = true;
            isLoadingSignIn = true;
          });
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Material(
                              type: MaterialType.transparency,
                              child: const Text(
                                'KYC_APP',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: appHeight / 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: FlatButton(
                            onPressed: () {
                              context
                                  .bloc<LoginFormBloc>()
                                  .add(LoginFormEvent.resetLoginState());
                              setState(() {
                                _selectedPage = Page.signin;
                              });
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: _selectedPage == Page.signin
                                      ? Colors.blue
                                      : Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          Expanded(
                              child: FlatButton(
                            onPressed: () {
                              context
                                  .bloc<LoginFormBloc>()
                                  .add(LoginFormEvent.resetLoginState());
                              setState(() {
                                _selectedPage = Page.signup;
                              });
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: _selectedPage == Page.signup
                                      ? Colors.blue
                                      : Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                        ],
                      ),
                      SizedBox(height: appHeight / 30),
                      Expanded(
                        child: _loadScreen(context, state),
                      )
                    ],
                  )),
            ],
          ),
        );
      },
    );
  }

  Widget _loadScreen(BuildContext context, LoginFormState state) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    switch (_selectedPage) {
      case Page.signup:
        return Form(
            autovalidate: state.showErrorMessages,
            key: _key,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 30.0, bottom: 5.0),
                      child: TextFormField(
                          controller: _fullname,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Full name",
                          ),
                          autocorrect: false,
                          onChanged: (value) => context
                              .bloc<LoginFormBloc>()
                              .add(LoginFormEvent.userNameChanged(value)),
                          validator: (_) => context
                              .bloc<LoginFormBloc>()
                              .state
                              .username
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => 'Empty value',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 30.0, bottom: 5.0),
                      child: TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                          ),
                          autocorrect: false,
                          onChanged: (value) => context
                              .bloc<LoginFormBloc>()
                              .add(LoginFormEvent.emailChanged(value)),
                          validator: (_) => context
                              .bloc<LoginFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid value',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 30.0, bottom: 5.0),
                      child: TextFormField(
                          controller: _password,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) => context
                              .bloc<LoginFormBloc>()
                              .add(LoginFormEvent.passwordChanged(value)),
                          validator: (_) => context
                              .bloc<LoginFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) =>
                                      'Length must be more than 6 characters',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 30.0, bottom: 5.0),
                      child: TextFormField(
                          controller: _phoneNumber,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone Number",
                          ),
                          autocorrect: false,
                          onChanged: (value) => context
                              .bloc<LoginFormBloc>()
                              .add(LoginFormEvent.phoneNumberChanged(value)),
                          validator: (_) => context
                              .bloc<LoginFormBloc>()
                              .state
                              .phoneNumber
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => 'Empty Value',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              )),
                    ),
                  ),
                ),
                SizedBox(height: appHeight / 25),
                GestureDetector(
                  onTap: () async {
                    PickedFile pickedFile = await ImagePicker()
                        .getImage(source: ImageSource.gallery);
                    if (pickedFile != null) {
                      final File file = File(pickedFile.path);
                      setState(() {
                        image_file = file;
                      });
                      context
                          .bloc<LoginFormBloc>()
                          .add(LoginFormEvent.profileImageFileChanged(file));
                    }
                  },
                  child: Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        shape: BoxShape.circle,
                      ),
                      child: image_file == null
                          ? Center(
                              child: Icon(Icons.add,
                                  color: Colors.red, size: 40.0))
                          : Center(
                              child: Icon(Icons.done,
                                  color: Colors.green, size: 40.0))),
                ),
                SizedBox(height: appHeight / 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Center(
                    child: Text(
                      "Upload a profile picture",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue,
                      elevation: 0.0,
                      child: MaterialButton(
                        onPressed: () async {
                          context.bloc<LoginFormBloc>().add(const LoginFormEvent
                              .registerWithEmailAndPasswordPressed());
                        },
                        minWidth: MediaQuery.of(context).size.width,
                        child: Center(
                          child: isLoadingSignUp
                              ? Center(
                                  child: CircularProgressIndicator(
                                    backgroundColor: Colors.white,
                                  ),
                                )
                              : Text(
                                  "Sign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                        ),
                      )),
                ),
              ],
            ));
        break;

      case Page.signin:
        return Form(
            autovalidate: state.showErrorMessages,
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 30.0, bottom: 5.0),
                      child: TextFormField(
                          controller: _emailSignInPage,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                          ),
                          autocorrect: false,
                          onChanged: (value) => context
                              .bloc<LoginFormBloc>()
                              .add(LoginFormEvent.emailChanged(value)),
                          validator: (_) => context
                              .bloc<LoginFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid value',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 30.0, bottom: 5.0),
                      child: TextFormField(
                          controller: _passwordSignInPage,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) => context
                              .bloc<LoginFormBloc>()
                              .add(LoginFormEvent.passwordChanged(value)),
                          validator: (_) => context
                              .bloc<LoginFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) =>
                                      'Length must be more than 6 characters',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              )),
                    ),
                  ),
                ),
                SizedBox(height: appHeight / 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
                  child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue,
                      elevation: 0.0,
                      child: MaterialButton(
                        onPressed: () async {
                          context.bloc<LoginFormBloc>().add(const LoginFormEvent
                              .signInWithEmailAndPasswordPressed());
                        },
                        minWidth: MediaQuery.of(context).size.width,
                        child: isLoadingSignIn
                            ? Center(
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                ),
                              )
                            : Text(
                                "Sign In",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                      )),
                ),
              ],
            ));
        break;
    }
  }
}
