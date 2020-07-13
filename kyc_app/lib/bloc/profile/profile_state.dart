part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final UserProfile userProfile;

  ProfileLoaded(this.userProfile);
}


